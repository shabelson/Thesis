
#include <abb_HW_interface/abb_hw_interface.h>
#include <iostream>
using namespace  std;

// ROS parameter loading

namespace abb_120_ns
{
AbbHWInterface::AbbHWInterface(ros::NodeHandle& nh, urdf::Model* urdf_model)
  :ros_control_boilerplate::GenericHWInterface(nh, urdf_model)
{
  bool ServicesInit =  ServiceInitalize();
  if (ServicesInit==false){ROS_WARN("SERVICES : Initialize Error");}
  bool SubscribeInit = SubscriberInitialize();
  if (SubscribeInit==false){ROS_WARN("SUBSCRIBER : Initialize Error");}
ROS_INFO("ABB HW INTETRFACE INIT...");
}





void AbbHWInterface::init()
{
    // Call parent class version of this function
    GenericHWInterface::init();
    //Create Service Clients

    ROS_INFO("ABBHWInterface Ready.");
}

bool AbbHWInterface::ServiceInitalize()
{
  try {


  SClient_Ping = nh_.serviceClient<abb_node::robot_Ping>("robot_Ping");
  SClient_SetCartesian = nh_.serviceClient<abb_node::robot_SetCartesian>("SetCartesian");
  SClient_GetCartesian = nh_.serviceClient<abb_node::robot_GetCartesian>("GetCartesian");
  SClient_SetJoints = nh_.serviceClient<abb_node::robot_SetJoints>("SetJoints");
  SClient_GetJoints = nh_.serviceClient<abb_node::robot_GetJoints>("GetJoints");
  SClient_Stop = nh_.serviceClient<abb_node::robot_Stop>("Stop");
  SClient_SetTool = nh_.serviceClient<abb_node::robot_SetTool>("SetTool");
  SClient_SetWorkObject = nh_.serviceClient<abb_node::robot_SetWorkObject>("SetWorkObject");
  SClient_SetSpeed = nh_.serviceClient<abb_node::robot_SetSpeed>("SetSpeed");
  SClient_SetZone = nh_.serviceClient<abb_node::robot_SetZone>("SetZone");
  SClient_SetTrackDist = nh_.serviceClient<abb_node::robot_SetTrackDist>("SetTrackDist");
  SClient_SpecialCommand = nh_.serviceClient<abb_node::robot_SpecialCommand>("SpecialCommand");
  SClient_SetComm = nh_.serviceClient<abb_node::robot_SetComm>("SetComm");
  SClient_SetVacuum = nh_.serviceClient<abb_node::robot_SetVacuum>("SetVacuum");
  SClient_SetDIO = nh_.serviceClient<abb_node::robot_SetDIO>("SetDIO");
  SClient_IsMoving = nh_.serviceClient<abb_node::robot_IsMoving>("IsMoving");
  ROS_INFO("ABB HW: ALL SERVICES ACTIVE");
  }
  catch(...)
  {
    ROS_WARN("ABB HW: SERVICES FAIL");
    return false;
  }
  return true;
}

bool AbbHWInterface::SubscriberInitialize()
{
  try{
 handle_CartesianLog = nh_.subscribe("pose",1,&AbbHWInterface::CartesianLogCallback,this);
 handle_JointsLog    = nh_.subscribe("jointstate",1,&AbbHWInterface::HandleJointCallback,this);
 handle_ForceLog     = nh_.subscribe("wrench", 1,&AbbHWInterface::HandleJointCallback,this);
  }
  catch(...)
  {
    return false;
  }
  return true;
}





void AbbHWInterface::CartesianLogCallback(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
  //ROS_INFO("CARTESIAN CALLBACK");
  //this->iCPose = msg;

}
void AbbHWInterface::HandleJointCallback(const sensor_msgs::JointState::ConstPtr& msg)
{




  for(int i=0;i<msg->position.size() ;i++)
  {

  joint_position_[i] = msg->position[i] ;
  }

}
void AbbHWInterface::HandleForceLog(const geometry_msgs::WrenchStamped::ConstPtr& msg)
{

//ROS_INFO("WRENCH CALLBACK");
//this->iWrench;
}




void AbbHWInterface::read(ros::Duration& elapsed_time)
{
  ros::spinOnce();
  abb_node::robot_GetJoints jointMsg;
  abb_node::robot_IsMoving isMoving;
}

void AbbHWInterface::write(ros::Duration& elapsed_time)
{


  abb_node::robot_SetJoints nextPose;
  abb_node::robot_SetSpeed nextSpeed;
  for(int i =0;i<num_joints_;i++)
  {
    nextPose.request.position.push_back((double)joint_position_command_[i]);
  }
  SClient_SetJoints.call(nextPose);

}

void AbbHWInterface::enforceLimits(ros::Duration& period)
{
  // Enforces position and velocity
  pos_jnt_sat_interface_.enforceLimits(period);
}





}  // namespace abb_120_ns
