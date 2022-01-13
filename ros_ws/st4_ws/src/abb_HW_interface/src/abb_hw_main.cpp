
#include <ros_control_boilerplate/generic_hw_control_loop.h>
#include <abb_HW_interface/abb_hw_interface.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "abb_hw_interface");
  ros::NodeHandle nh;

  // NOTE: We run the ROS loop in a separate thread as external calls such
  // as service callbacks to load controllers can block the (main) control loop
  ros::AsyncSpinner spinner(3);
  spinner.start();

  // Create the hardware interface specific to your robot
  std::shared_ptr<abb_120_ns::AbbHWInterface> abb_hw_interface_instance(new abb_120_ns::AbbHWInterface(nh,NULL));
  //std::shared_ptr<ros_control_boilerplate::GenericHWInterface> gen_hw_interface(new ros_control_boilerplate::GenericHWInterface(nh));
  //gen_hw_interface->init();
  abb_hw_interface_instance->init();

  // Start the control loop
  ros_control_boilerplate::GenericHWControlLoop control_loop (nh,abb_hw_interface_instance);
  control_loop.run();  // Blocks until shutdown signal recieved
ROS_WARN("ABB HW END");
  return 0;
}
