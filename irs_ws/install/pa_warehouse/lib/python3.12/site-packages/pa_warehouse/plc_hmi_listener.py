import rclpy
from rclpy.node import Node
from std_msgs.msg import String
import json
class plc_hmi_listener(Node):
    def __init__(self):
        super(). __init__('plc_hmi_listener')

        self.subscription = self.create_subscription(String,'hmi/unified_status',self.listerner_callback,10)

    def listerner_callback(self,msg):
        try: 
            data = json.loads(msg.data)
            stamp = data["stamp"]
            box = data["box"]
            counts = data["counts"]

            print("recived data")
            print(f"time: {stamp['sec']}.{stamp['nanosec']}")
            print(f"box weight raw = {box['weight_raw']}")
            print(f"location: {box['location']}")
            print(f"counts: big = {counts['big']}, medum {counts['medium']}, small{counts['small']}, total {counts['total']}")
            print()
        except Exception as e: 
            self.get_logger().error(f"Failed to parse JSON like a bitch {e}\n Raw message = {msg.data}")

def main(args=None):
        rclpy.init(args=args)
        PlcHmiListener = plc_hmi_listener()
        rclpy.spin(PlcHmiListener)
        PlcHmiListener.destroy_node()
        rclpy.shutdown()

if __name__ == '__main__':
    main()
        