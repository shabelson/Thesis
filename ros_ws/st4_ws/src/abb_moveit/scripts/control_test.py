#! /usr/bin/env python
import moveit_commander
import sys
from moveit_commander.robot import RobotCommander
import rospy
import geometry_msgs.msg


moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node("Shahar_Controller",anonymous=True)
robot = moveit_commander.RobotCommander()

manGroup = moveit_commander.MoveGroupCommander("manipulator")
pose_target = geometry_msgs.msg.Pose()
pose_target.orientation.w = 0.5
pose_target.orientation.x = -0.5
pose_target.orientation.y = 0.5
pose_target.orientation.z = -0.5
pose_target.position.x = 0.12
pose_target.position.y = 0.2
pose_target.position.z = -0.7
rospy.logdebug("pose target ready")

manGroup.set_pose_target(pose_target)
rospy.logdebug("MAN GROUP READY")
plan1 = manGroup.plan()
rospy.logdebug("PLANNED")



rospy.sleep(0.5)

moveit_commander.roscpp_shutdown()







