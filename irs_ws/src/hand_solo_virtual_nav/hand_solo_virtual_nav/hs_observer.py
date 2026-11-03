#!/usr/bin/env python3
"""PLC -> Nav2 waypoint 1 -> existing MoveIt arm sequence.

This is one ROS 2 observer node. The arm runs as a separate ROS 2 process
only after Nav2 reports STATUS_SUCCEEDED.
"""

import json
import math
import subprocess
import time

import rclpy
from rclpy.action import ActionClient
from rclpy.node import Node
from action_msgs.msg import GoalStatus
from geometry_msgs.msg import PoseStamped
from nav2_msgs.action import NavigateToPose
from std_msgs.msg import String


def get_nested(data, path):
    """Read fields such as 'box.location' from the PLC's JSON message."""
    for key in path.split('.'):
        if not isinstance(data, dict) or key not in data:
            return None
        data = data[key]
    return data


class HSObserver(Node):
    def __init__(self):
        super().__init__('hs_observer')

        # These match the fields currently read by plc_hmi_listener.py.
        # Change trigger_value to the ACTUAL value emitted by your PLC.
        self.declare_parameter('plc_topic', '/hmi/unified_status')
        self.declare_parameter('trigger_field', 'box.location')
        self.declare_parameter('trigger_value', 'A')

        # The existing hs_waypoint_follower.py calls (0, 0, 0) "wp1".
        self.declare_parameter('waypoint_x', 0.0)
        self.declare_parameter('waypoint_y', 0.0)
        self.declare_parameter('waypoint_yaw', 0.0)  # radians

        self.plc_topic = self.get_parameter('plc_topic').value
        self.trigger_field = self.get_parameter('trigger_field').value
        self.trigger_value = str(self.get_parameter('trigger_value').value).strip().lower()
        self.waypoint_x = float(self.get_parameter('waypoint_x').value)
        self.waypoint_y = float(self.get_parameter('waypoint_y').value)
        self.waypoint_yaw = float(self.get_parameter('waypoint_yaw').value)

        self.state = 'IDLE'
        self.trigger_latched = False
        self.nav_goal_handle = None
        self.arm_process = None
        self.last_wait_log = 0.0
        self.last_feedback_log = 0.0

        self.nav_client = ActionClient(self, NavigateToPose, '/navigate_to_pose')
        self.plc_subscriber = self.create_subscription(
            String, self.plc_topic, self.on_plc_message, 10
        )
        self.timer = self.create_timer(0.5, self.on_timer)

        self.get_logger().info(
            f'Observer ready. Listening on {self.plc_topic}; '
            f'waiting for {self.trigger_field} == {self.trigger_value!r}.'
        )
        self.get_logger().info(
            f'Waypoint 1: x={self.waypoint_x}, y={self.waypoint_y}, '
            f'yaw={self.waypoint_yaw} rad.'
        )

    def on_plc_message(self, msg):
        try:
            data = json.loads(msg.data)
        except json.JSONDecodeError:
            self.get_logger().warning('PLC message is not valid JSON; ignoring it.')
            return

        value = get_nested(data, self.trigger_field)
        if value is None:
            # Another PLC field may exist, but this observer must not guess it.
            return

        active = str(value).strip().lower() == self.trigger_value
        if not active:
            # Require PLC to return to a different value before next cycle.
            self.trigger_latched = False
            return

        if self.trigger_latched:
            return  # The PLC may publish the same status repeatedly.

        self.trigger_latched = True
        if self.state != 'IDLE':
            self.get_logger().warning(
                f'PLC trigger received while {self.state}; ignoring repeated job.'
            )
            return

        self.get_logger().info('PLC START detected. Requesting waypoint 1.')
        self.state = 'WAITING_FOR_NAV2'
        self.last_wait_log = 0.0

    def on_timer(self):
        if self.state == 'WAITING_FOR_NAV2':
            if self.nav_client.server_is_ready():
                self.send_waypoint_1()
            elif time.monotonic() - self.last_wait_log > 5.0:
                self.get_logger().warning('Waiting for /navigate_to_pose action server...')
                self.last_wait_log = time.monotonic()

        if self.state == 'ARM_RUNNING' and self.arm_process is not None:
            exit_code = self.arm_process.poll()
            if exit_code is not None:
                if exit_code == 0:
                    self.get_logger().info('Arm program exited (code 0).')
                else:
                    self.get_logger().error(f'Arm program exited with code {exit_code}.')
                self.arm_process = None
                self.state = 'IDLE'
                self.get_logger().info('Observer ready for another PLC trigger edge.')

    def send_waypoint_1(self):
        pose = PoseStamped()
        pose.header.frame_id = 'map'
        pose.header.stamp = self.get_clock().now().to_msg()
        pose.pose.position.x = self.waypoint_x
        pose.pose.position.y = self.waypoint_y
        half_yaw = self.waypoint_yaw / 2.0
        pose.pose.orientation.z = math.sin(half_yaw)
        pose.pose.orientation.w = math.cos(half_yaw)

        goal = NavigateToPose.Goal()
        goal.pose = pose

        self.state = 'NAVIGATING'
        self.get_logger().info('Sending navigation goal for waypoint 1...')
        future = self.nav_client.send_goal_async(goal, feedback_callback=self.on_nav_feedback)
        future.add_done_callback(self.on_nav_goal_response)

    def on_nav_goal_response(self, future):
        try:
            handle = future.result()
        except Exception as exc:
            self.get_logger().error(f'Failed to send Nav2 goal: {exc}')
            self.state = 'IDLE'
            return

        if handle is None or not handle.accepted:
            self.get_logger().error('Nav2 rejected waypoint 1. Arm will NOT move.')
            self.state = 'IDLE'
            return

        self.nav_goal_handle = handle
        self.get_logger().info('Nav2 accepted waypoint 1.')
        result_future = handle.get_result_async()
        result_future.add_done_callback(self.on_nav_result)

    def on_nav_feedback(self, feedback_msg):
        if time.monotonic() - self.last_feedback_log >= 2.0:
            distance = feedback_msg.feedback.distance_remaining
            self.get_logger().info(f'Waypoint 1: {distance:.2f} m remaining.')
            self.last_feedback_log = time.monotonic()

    def on_nav_result(self, future):
        self.nav_goal_handle = None
        try:
            result = future.result()
        except Exception as exc:
            self.get_logger().error(f'Nav2 failed: {exc}. Arm will NOT move.')
            self.state = 'IDLE'
            return

        if result is None or result.status != GoalStatus.STATUS_SUCCEEDED:
            status = result.status if result is not None else 'no result'
            self.get_logger().error(
                f'Waypoint 1 NOT reached (status {status}). Arm will NOT move.'
            )
            self.state = 'IDLE'
            return

        self.get_logger().info('Waypoint 1 reached! Starting arm movement...')
        self.start_arm()

    def start_arm(self):
        # Launch your EXISTING hs_pick_place.py without calling rclpy.init()
        # again inside this observer node.
        try:
            self.arm_process = subprocess.Popen(
                ['ros2', 'run', 'hand_solo_arm', 'hs_pick_place']
            )
        except OSError as exc:
            self.get_logger().error(f'Could not launch hs_pick_place: {exc}')
            self.state = 'IDLE'
            return

        self.state = 'ARM_RUNNING'
        self.get_logger().info(f'Arm process started (PID {self.arm_process.pid}).')

    def stop(self):
        if self.nav_goal_handle is not None:
            self.nav_goal_handle.cancel_goal_async()
        if self.arm_process is not None and self.arm_process.poll() is None:
            self.get_logger().warning('Stopping arm subprocess...')
            self.arm_process.terminate()
            try:
                self.arm_process.wait(timeout=3.0)
            except subprocess.TimeoutExpired:
                self.arm_process.kill()
                self.arm_process.wait()


def main(args=None):
    rclpy.init(args=args)
    observer = HSObserver()
    try:
        rclpy.spin(observer)
    except KeyboardInterrupt:
        observer.get_logger().info('Observer stopped by user.')
    finally:
        observer.stop()
        observer.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()


if __name__ == '__main__':
    main()
