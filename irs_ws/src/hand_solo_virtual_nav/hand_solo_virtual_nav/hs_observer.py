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




class HSObserver(Node):
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

    def listerner_callback(self,msg):
        try:
            data = jason.load(msg.data)
            box = data["box"]
            #check if the robot is idle 
            if not self.state == "IDLE" or self.trigger_latched:
                return 

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


        elif self.state == "ARM_RUNNING_Pickup":
            #Runs the Arm for pickup 
            if self.arm_process.poll() is not None:
                self.get_logger().info("Arm movement finished")
                self.arm_process = None
                self.state = "Nav_to_shelf"


        elif self.state == "Nav_to_shelf":
            #sends robot to the shelf after pickup. 
            if self.nav_client.server_is_ready():
                self.send_waypoint(self.waypoint2)
            else:
                self.get_logger().info("Nav2 server is Not ready")


    def send_waypoint(self,waypoint):

        corodanates = waypoint

        pose = PoseStamped()
        pose.header.frame_id = "map"
        pose.header.stamp = self.get_clock().now().to_msg()

        try:
            pose.pose.position.x = corodanates[0]
            pose.pose.position.y = corodanates[1]
            halfyaw = corodanates[2]/2.0
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
            self.get_logger().info("Nav2 accepted goal")
            result = handle.get_result_async()
            result.add_done_callback(self.nav_result)
        except Exception as exc:
            self.get_logger().error(f'Failed to send Nav2 goal: {exc}')
            self.state = "IDLE"

    def nav_result(self,future):
        result = future.result()
        if result.status == GoalStatus.STATUS_SUCCEEDED:
            self.get_logger().info("Waypoint 1 reached")
            #add in arm program 
        else: 
            self.get_logger().error("Navigation failed")
            self.state = "IDLE"

    


    def stop(self):
        if self.arm_process is not None:
            

       
          




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