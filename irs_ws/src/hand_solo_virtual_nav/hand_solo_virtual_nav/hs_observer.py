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
from moveit_msgs.action import MoveGroup
from moveit_msgs.msg import MotionPlanRequest, Constraints, JointConstraint
from typing import List


# The code has the uses a state macine of the robots current action to make decisions on what to do next. 
# the states are IDLE, Box location, Move to conveyer, Pick Box, Move to Shelf, Place Box 
# Triggerd latch is used to keep track of weather or not the robot has a box in hand. 
# waypoints are stored as arrays of the locations with instead of individual values to make it easier to call and deal wiith in functions. 
# the code is all self contained in this file all of the acosciated nodes are all active bu default in the simulation. 

class HSObserver(Node):

    JOINT_NAMES: List[str] = ['joint_1','joint_2','joint_3','joint_4','joint_5','joint_6']
    PLANNING_GROUP: str = 'tmr_arm'
    ACTION_NAME: str = '/move_action' 
    ARM_WAYPOINTS = [
    [0.785398, 1.0, 0.61, 0.0, 0.0, 0.0],
    [-0.85398, 1.0, 0.61, 0.0, 0.0, 0.0],
    [0.0, 0.0, 0.0, 0.0, 0.0, 0.0],
    [0.0, 0.7326, 0.7326, 0.0, 0.0, 0.0]
] 
    
    def __init__(self):
        super().__init__('hs_observer')


        self.state = "IDLE"
        self.trigger_latched = False 

        #waypoint positions [x,y,yaw]
        self.waypoint1 = [0.0,0.0,0.0]
        self.waypoint2 = [31.0,-4.0,0.0]

        self.arm_process = None

        #Navagation client 
        self.nav_client = ActionClient(self,NavigateToPose,'/navigate_to_pose')

        #subscribing to the PLC 
        self.plc_subscriber = self.create_subscription(String,'hmi/unified_status',self.listerner_callback,10)

        self.timer = self.create_timer(0.5, self.on_timer)
        self.get_logger().info("PLC Observer Started")

        #initalisng the arm movement action sever  
        self.client = ActionClient(self, MoveGroup, self.ACTION_NAME)
        self.get_logger().info('Waiting for MoveGroup action server...')
        self.client.wait_for_server()
        self.get_logger().info('MoveGroup action server ready.')


    def listerner_callback(self,msg):
        try:
            data = json.loads(msg.data)
            box = data["box"]
            #check if the robot is idle 
            if not self.state == "IDLE" or self.trigger_latched:
                return 
            #moves the robot to the belt based on the box location 
            if box["location"] == "A":
                self.trigger_latched = True 
                self.state = "WAITING_FOR_NAV2"
                self.get_logger().info("Box detected at A starting sequence")
            elif box["location"] == "B":
                self.trigger_latched = True 
                self.state = "WAITING_FOR_NAV2"
                self.get_logger().info("Box detected at B starting sequence")
            elif box["location"] == "C":
                self.trigger_latched = True 
                self.state = "WAITING_FOR_NAV2"
                self.get_logger().info("Box detected at C starting sequence")    
            else:
                self.trigger_latched = False
        except Exception as e:
            self.get_logger().error(f"PLC JSON error: {e}")


    def on_timer(self):
        #defines what is run every looped cycle. 

        if self.state == "WAITING_FOR_NAV2":
            #sends the robot to the conveyer the second the robots state changes. 
            if self.nav_client.server_is_ready():
                self.send_waypoint(self.waypoint1)
            else:
                self.get_logger().info("Nav2 server is Not ready")

        elif self.state == "Nav_to_shelf":
            #sends robot to the shelf after pickup. 
            if self.nav_client.server_is_ready():
                self.send_waypoint(self.waypoint2)
            else:
                self.get_logger().info("Nav2 server is Not ready")


    def send_waypoint(self,waypoint):
        #sends the inputed waypoint to the nav2 stack to do path planning and execution 
        corodanates = waypoint

        pose = PoseStamped()
        pose.header.frame_id = "map"
        pose.header.stamp = self.get_clock().now().to_msg()

        try:
            pose.pose.position.x = corodanates[0]
            pose.pose.position.y = corodanates[1]
            half_yaw = corodanates[2]/2.0
            pose.pose.orientation.z = math.sin(half_yaw)
            pose.pose.orientation.w = math.cos(half_yaw)

            goal = NavigateToPose.Goal()
            goal.pose = pose 

            self.state = "NAVAGATING"

            future = self.nav_client.send_goal_async(goal)
            future.add_done_callback(self.nav_goal_response) 

        except:
            self.get_logger().error("Invalid waypoint Input Varitable ")
            self.state = "IDLE"

    def nav_goal_response(self, future):
        #checks to see the response of the navagation action server. 
        try:
            handle = future.result()
            if not handle.accepted:
                self.get_logger().error("Nav2 rejected goal")
                self.state = "IDLE"
                self.trigger_latched = False
                return
            self.get_logger().info("Nav2 accepted goal")
            result = handle.get_result_async()
            result.add_done_callback(self.nav_result)
        except Exception as exc:
            self.get_logger().error(f'Failed to send Nav2 goal: {exc}')
            self.state = "IDLE"

    def nav_result(self,future):
        #to check when the navagation is finished.
        result = future.result()
        if result.status == GoalStatus.STATUS_SUCCEEDED:
            self.get_logger().info("Waypoint 1 reached")
            if self.state =="Nav_to_shelf":
                 if not self._send_and_wait(self.ARM_WAYPOINTS[3]):return
                 if not self._send_and_wait(self.ARM_WAYPOINTS[2]):return 
                 self.state = "IDLE"
                 self.trigger_latched = False 

            else:      
                if not self._send_and_wait(self.ARM_WAYPOINTS[0]):return 
                if not self._send_and_wait(self.ARM_WAYPOINTS[1]):return 
                if not self._send_and_wait(self.ARM_WAYPOINTS[2]):return 
                self.state = "Nav_to_shelf"

        else: 
            self.get_logger().error("Navigation failed")
            self.state = "IDLE"
            self.trigger_latched = False 

    def create_arm_goal(self ,joints: List[float])-> MoveGroup.Goal:
        # creates the goal planning for the arm to move to a given positions 
        # takes in information for the joint names and corespoding angles. 
        goal = MoveGroup.Goal()
        req = MotionPlanRequest()

        req.group_name = self.PLANNING_GROUP 
        req.num_planning_attempts = 10
        req.allowed_planning_time = 5.0
        req.max_velocity_scaling_factor = 0.5
        req.max_acceleration_scaling_factor = 0.5
        cs = Constraints()

        for name, val in zip(self.JOINT_NAMES, joints):
                    jc = JointConstraint()
                    jc.joint_name = name
                    jc.position = val
                    jc.tolerance_above = 0.01
                    jc.tolerance_below = 0.01
                    jc.weight = 1.0
                    cs.joint_constraints.append(jc)
        req.goal_constraints.append(cs)
        goal.request = req
        goal.planning_options.plan_only = False  # plan + execute
        return goal

    def _send_and_wait(self, joints: List[float]) -> bool:
            # takes the input angles and sends it to the goal to do path planning then executues the goal. 
            goal = self.create_arm_goal(joints)
            send_fut = self.client.send_goal_async(goal)
            rclpy.spin_until_future_complete(self, send_fut)
            handle = send_fut.result()
            if not handle or not handle.accepted:
                self.get_logger().error('Goal rejected.')
                return False
            res_fut = handle.get_result_async()
            rclpy.spin_until_future_complete(self, res_fut)
            res = res_fut.result()
            return bool(res and res.status == 4)  # 4 = STATUS_SUCCEEDED

        

        

    def stop(self):
        pass

       
          




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
