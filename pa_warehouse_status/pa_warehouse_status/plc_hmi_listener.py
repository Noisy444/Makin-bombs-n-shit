import rclpy
from rclpy.node import Node
from std_msgs.msg import String

class plc_hmi_listener(node):
    def __init__(self):
        super(). __init__('plc_hmi_listener')

        self.subscription = self.create_subscription(String,'placeholder',self.listerner_callback)

    def listerner_callback(self,msg):
        self.get_logger().info(f'"help me:{msg.data}"')

    def main(args=None):
        rclpy.init(args=args)
        