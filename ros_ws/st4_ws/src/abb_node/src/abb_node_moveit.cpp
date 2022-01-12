#include "../include/abb_node_moveit.h"
#include <ros/ros.h>




/////////////////////////////////
// BEGIN ActionWrapper   Class //
/////////////////////////////////



/////////////////////////////////
// END   ActionWrapper   Class //
/////////////////////////////////







ActionWrapper::~ActionWrapper(){}

void ActionWrapper::Trajectory_Callback()
{
  ROS_INFO("GOAL CALLBACK");
  Trajectory_Server.acceptNewGoal();

}

void ActionWrapper::ActionCallback(const control_msgs::FollowJointTrajectoryGoalConstPtr &goal)
{
  ROS_INFO("Action Callback");

}






int main(int argc, char **argv)
{

  ros::init(argc, argv, "abb_node_moveit");
  ros::NodeHandle nh;
  ActionWrapper action("/joint_trajectory_action");

  ros::spin();

  return 0;
}
