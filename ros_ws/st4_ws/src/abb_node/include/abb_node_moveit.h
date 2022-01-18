#include <ros/ros.h>
#include <string>
#include <stdlib.h>
#include <ros/ros.h>
#include "sensor_msgs/JointState.h"
#include "trajectory_msgs/JointTrajectory.h"
#include "control_msgs/FollowJointTrajectoryAction.h"
#include "actionlib/server/simple_action_server.h"
#include "actionlib/client/simple_action_client.h"





class ActionWrapper
{
public:
  ros::NodeHandle node;
  actionlib::SimpleActionServer<control_msgs::FollowJointTrajectoryAction> Trajectory_Server;
  control_msgs::FollowJointTrajectoryActionFeedback feedback;
  control_msgs::FollowJointTrajectoryActionResult result;

  std::string actionName;
  ~ActionWrapper(void);
  void Trajectory_Callback();
 void ActionCallback(const control_msgs::FollowJointTrajectoryGoalConstPtr &goal);


 ActionWrapper(std::string name):
   Trajectory_Server(node,name,boost::bind(&ActionWrapper::ActionCallback,this,_1),false)
  ,actionName(name)
 {
   //Trajectory_Server.registerGoalCallback(boost::bind(&ActionWrapper::Trajectory_Callback,this));
   Trajectory_Server.start();

 }

 control_msgs::FollowJointTrajectoryActionGoal goal_;


private:

      void init();

};


  //="/joint_trajectory_action/"




/*
bool add(beginner_tutorials::AddTwoInts::Request  &req,
         beginner_tutorials::AddTwoInts::Response &res)
{
  res.sum = req.a + req.b;
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
  ROS_INFO("sending back response: [%ld]", (long int)res.sum);
  return true;
}
*/
/*
1 action client:
registers to /joint_trajectory_action/ ->gets the plannig msgs

2 service client:
1. appends all the trajectories to the robot_SetBuffer service and exceutes.
2. gets the robot_GetCartesian and sends for the visualization.

*/


