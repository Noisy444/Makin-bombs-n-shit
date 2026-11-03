#!/usr/bin/env python3
"""Hand Solo supervisor: PLC location A -> waypoint 1 -> arm -> waypoint 2."""

import json
import math
import subprocess
import time

import rclpy
from action_msgs.msg import GoalStatus
from geometry_msgs.msg import PoseStamped
from nav2_msgs.action import NavigateToPose
from rclpy.action import ActionClient
from rclpy.node import Node
from std_msgs.msg import String


def get_nested(data, field_path):
    """Read nested PLC JSON fields such as box.location."""
    for key in field_path.split('.'):
        if not isinstance(data, dict) or key not in data:
            return None
        data = data[key]
    return data


class HSObserver(Node):
    def __init__(self):
        super().__init__('hs_observer')

        self.declare_parameter('plc_topic', '/hmi/unified_status')
        self.declare_parameter('trigger_field', 'box.location')
        self.declare_parameter('trigger_value', 'A')
        self.declare_parameter('log_plc_messages', True)

        # Coordinates taken from your original hs_waypoint_follower.py.
        self.declare_parameter('waypoint_x', 0.0)
        self.declare_parameter('waypoint_y', 0.0)
        self.declare_parameter('waypoint_yaw', 0.0)
        self.declare_parameter('waypoint2_x', 31.0)
        self.declare_parameter('waypoint2_y', -4.0)
        self.declare_parameter('waypoint2_yaw', 0.0)

        self.plc_topic = str(self.get_parameter('plc_topic').value)
        self.trigger_field = str(self.get_parameter('trigger_field').value)
        self.trigger_value = self.normalise(self.get_parameter('trigger_value').value)
        self.log_plc_messages = bool(self.get_parameter('log_plc_messages').value)
        self.waypoints = {
            1: (
                float(self.get_parameter('waypoint_x').value),
                float(self.get_parameter('waypoint_y').value),
                float(self.get_parameter('waypoint_yaw').value),
            ),
            2: (
                float(self.get_parameter('waypoint2_x').value),
                float(self.get_parameter('waypoint2_y').value),
                float(self.get_parameter('waypoint2_yaw').value),
            ),
        }

        self.state = 'IDLE'
        self.trigger_latched = False
        self.nav_goal_handle = None
        self.arm_process = None
        self.last_wait_log = 0.0
        self.last_feedback_log = 0.0

        self.nav_client = ActionClient(self, NavigateToPose, '/navigate_to_pose')
        self.plc_subscription = self.create_subscription(
            String, self.plc_topic, self.on_plc_message, 10
        )
        self.timer = self.create_timer(0.5, self.on_timer)

        self.get_logger().info(
            f'Observer ready. Listening to {self.plc_topic}. '
            f'Trigger: {self.trigger_field} = {self.trigger_value!r}'
        )
        self.get_logger().info(f'Waypoint 1: {self.waypoints[1]}')
        self.get_logger().info(f'Waypoint 2: {self.waypoints[2]}')

    @staticmethod
    def normalise(value):
        # The PLC sends ': A', which needs to match the configured 'A'.
        return str(value).strip().lstrip(':').strip().lower()

    def on_plc_message(self, msg):
        if self.log_plc_messages:
            self.get_logger().info(f'[PLC RX] RAW: {msg.data!r}')

        try:
            data = json.loads(msg.data)
        except json.JSONDecodeError as exc:
            self.get_logger().warning(f'[PLC RX] Invalid JSON: {exc}')
            return

        raw_location = get_nested(data, self.trigger_field)
        if raw_location is None:
            if self.log_plc_messages:
                self.get_logger().warning(
                    f'[PLC RX] Field {self.trigger_field!r} not present'
                )
            return

        location = self.normalise(raw_location)
        active = location == self.trigger_value
        if self.log_plc_messages:
            self.get_logger().info(
                f'[PLC RX] location={location!r}, match={active}, '
                f'state={self.state}, latched={self.trigger_latched}'
            )

        if not active:
            # Only permit another run after the PLC location stops being A.
            self.trigger_latched = False
            return

        if self.trigger_latched:
            return

        self.trigger_latched = True
        if self.state != 'IDLE':
            self.get_logger().warning(
                f'PLC location A detected while {self.state}; ignoring new job.'
            )
            return

        self.get_logger().info('PLC trigger accepted. Starting waypoint 1 -> arm -> waypoint 2.')
        self.state = 'WAITING_FOR_NAV2_1'
        self.last_wait_log = 0.0

    def on_timer(self):
        if self.state in ('WAITING_FOR_NAV2_1', 'WAITING_FOR_NAV2_2'):
            waypoint_number = 1 if self.state.endswith('_1') else 2
            if self.nav_client.server_is_ready():
                self.send_navigation_goal(waypoint_number)
            elif time.monotonic() - self.last_wait_log >= 5.0:
                self.get_logger().warning('Waiting for /navigate_to_pose action server...')
                self.last_wait_log = time.monotonic()

        elif self.state == 'ARM_RUNNING' and self.arm_process is not None:
            exit_code = self.arm_process.poll()
            if exit_code is None:
                return

            self.arm_process = None
            if exit_code != 0:
                self.get_logger().error(
                    f'Arm program failed (exit code {exit_code}). '
                    'Not navigating to waypoint 2.'
                )
                self.state = 'IDLE'
                return

            self.get_logger().info('Arm program finished. Going to waypoint 2.')
            self.state = 'WAITING_FOR_NAV2_2'
            self.last_wait_log = 0.0

    def send_navigation_goal(self, waypoint_number):
        x, y, yaw = self.waypoints[waypoint_number]
        pose = PoseStamped()
        pose.header.frame_id = 'map'
        pose.header.stamp = self.get_clock().now().to_msg()
        pose.pose.position.x = x
        pose.pose.position.y = y
        pose.pose.orientation.z = math.sin(yaw / 2.0)
        pose.pose.orientation.w = math.cos(yaw / 2.0)

        goal = NavigateToPose.Goal()
        goal.pose = pose
        self.state = f'NAVIGATING_{waypoint_number}'
        self.last_feedback_log = 0.0
        self.get_logger().info(
            f'Sending Waypoint {waypoint_number} navigation goal: '
            f'x={x}, y={y}, yaw={yaw}'
        )

        future = self.nav_client.send_goal_async(
            goal,
            feedback_callback=lambda feedback, n=waypoint_number: self.on_nav_feedback(n, feedback),
        )
        future.add_done_callback(
            lambda completed, n=waypoint_number: self.on_nav_goal_response(n, completed)
        )

    def on_nav_goal_response(self, waypoint_number, future):
        try:
            handle = future.result()
        except Exception as exc:
            self.get_logger().error(f'Waypoint {waypoint_number}: goal failed to send: {exc}')
            self.state = 'IDLE'
            return

        if handle is None or not handle.accepted:
            self.get_logger().error(f'Nav2 rejected Waypoint {waypoint_number}.')
            self.state = 'IDLE'
            return

        self.nav_goal_handle = handle
        self.get_logger().info(f'Nav2 accepted Waypoint {waypoint_number}.')
        result_future = handle.get_result_async()
        result_future.add_done_callback(
            lambda completed, n=waypoint_number: self.on_nav_result(n, completed)
        )

    def on_nav_feedback(self, waypoint_number, feedback_msg):
        if time.monotonic() - self.last_feedback_log >= 2.0:
            try:
                remaining = feedback_msg.feedback.distance_remaining
                self.get_logger().info(
                    f'Waypoint {waypoint_number}: {remaining:.2f} m remaining.'
                )
            except AttributeError:
                pass
            self.last_feedback_log = time.monotonic()

    def on_nav_result(self, waypoint_number, future):
        self.nav_goal_handle = None
        try:
            result = future.result()
        except Exception as exc:
            self.get_logger().error(f'Waypoint {waypoint_number} navigation failed: {exc}')
            self.state = 'IDLE'
            return

        if result is None or result.status != GoalStatus.STATUS_SUCCEEDED:
            status = result.status if result is not None else 'no result'
            self.get_logger().error(
                f'Waypoint {waypoint_number} was not reached (status {status}). '
                'Stopping the sequence.'
            )
            self.state = 'IDLE'
            return

        self.get_logger().info(f'Waypoint {waypoint_number} reached successfully.')
        if waypoint_number == 1:
            self.start_arm()
        else:
            self.state = 'IDLE'
            self.get_logger().info('Full sequence completed. Waiting for a new PLC trigger.')

    def start_arm(self):
        self.get_logger().info('Starting hs_pick_place arm movement...')
        try:
            self.arm_process = subprocess.Popen(
                ['ros2', 'run', 'hand_solo_arm', 'hs_pick_place']
            )
        except OSError as exc:
            self.get_logger().error(f'Could not start the arm process: {exc}')
            self.state = 'IDLE'
            return

        self.state = 'ARM_RUNNING'
        self.get_logger().info(f'Arm process running (PID {self.arm_process.pid}).')

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