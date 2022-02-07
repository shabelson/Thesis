 // ABB_HW_INTERFACE_H

/* Author: Dave Coleman
   Desc:   Example ros_control hardware interface that performs a perfect control loop for
   simulation
*/

#include <ros_control_boilerplate/generic_hw_interface.h>
#include <abb_node_services.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/WrenchStamped.h>


namespace abb_120_ns
{
/** \brief Hardware interface for a robot */
class AbbHWInterface : public ros_control_boilerplate::GenericHWInterface
{
public:
  /**
   * \brief Constructor
   * \param nh - Node handle for topics.
   */
  AbbHWInterface(ros::NodeHandle& nh, urdf::Model* urdf_model = NULL);

  virtual ~AbbHWInterface(void) {}

  /** \brief Initialize the robot hardware interface */
  virtual void init();

  /** \brief Read the state from the robot hardware. */
  virtual void read(ros::Duration& elapsed_time);

  /** \brief Write the command to the robot hardware. */
  virtual void write(ros::Duration& elapsed_time);

  /** \breif Enforce limits for all values before writing */
  virtual void enforceLimits(ros::Duration& period);


protected:
  /** \brief Basic model of system for position control */

  void CartesianLogCallback(const geometry_msgs::PoseStamped::ConstPtr& msg);
  void HandleJointCallback(const sensor_msgs::JointState::ConstPtr& msg);
  void HandleForceLog(const geometry_msgs::WrenchStamped::ConstPtr& msg);




private:

  bool ServiceInitalize();
  bool SubscriberInitialize();

  geometry_msgs::PoseStamped::ConstPtr& iCPose();
  //sensor_msgs::JointState::effort iEffort;
  //sensor_msgs::JointState::position iJPose;
  //sensor_msgs::JointState::velocity iVel;
  geometry_msgs::WrenchStamped::ConstPtr& iWrench();


 ros::Subscriber handle_JointsLog;
 ros::Subscriber handle_ForceLog;
 ros::Subscriber handle_CartesianLog;
 ros::ServiceClient SClient_Ping;
 ros::ServiceClient SClient_SetCartesian;
 ros::ServiceClient SClient_GetCartesian;
 ros::ServiceClient SClient_SetJoints;
 ros::ServiceClient SClient_GetJoints;
 ros::ServiceClient SClient_Stop;
 ros::ServiceClient SClient_SetTool;
 ros::ServiceClient SClient_SetWorkObject;
 ros::ServiceClient SClient_SetSpeed;
 ros::ServiceClient SClient_SetZone;
 ros::ServiceClient SClient_SetTrackDist;
 ros::ServiceClient SClient_SpecialCommand;
 ros::ServiceClient SClient_SetComm;
 ros::ServiceClient SClient_SetVacuum;
 ros::ServiceClient SClient_SetDIO;
 ros::ServiceClient SClient_IsMoving;

};  // class

}  // namespace abb_120_ns
