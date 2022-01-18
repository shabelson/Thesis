#!/usr/bin/env python
from __future__ import print_function


import rospy
import serial
from pynput import keyboard

import time
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from visualization_msgs.msg import Marker


try:
    from math import pi, tau, dist, fabs, cos
except:  # For Python 2 compatibility
    from math import pi, fabs, cos, sqrt

    tau = 2.0 * pi

    def dist(p, q):
        return sqrt(sum((p_i - q_i) ** 2.0 for p_i, q_i in zip(p, q)))


from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

class AxisControl(object):
    def __init__(self):
        self.cal =[]
        self.dev = 0  
        self.val = 0
    def DevCalc(self,val):
        done = False
        self.Remap(val)
        self.cal.append(self.val)
        if len(self.cal)>30:
            self.dev = sum(self.cal)/len(self.cal)
            done = True
        return done
    def Remap(self,value):
        high1 = 64000
        low1 = 0
        self.val = (value - low1)  / (high1 - low1)-0.5 - self.dev
        return round(self.val,2)

    
class MoveGroupInterface(object):

    def __init__(self,groupName = "manipulator"):
        super(MoveGroupInterface, self).__init__()
        self.listener = keyboard.Listener(on_press=self.add_cartesian_poses)
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node("move_group_Pico_Joystick", anonymous=True)
        pass # ("ININTINITNITNNTI")
        robot = moveit_commander.RobotCommander()
        scene = moveit_commander.PlanningSceneInterface()
        group_name = groupName
        move_group = moveit_commander.MoveGroupCommander(group_name)
        self.wayPointsBuffer =[]
        display_trajectory_publisher = rospy.Publisher(
            "/move_group/display_planned_path",
            moveit_msgs.msg.DisplayTrajectory,
            queue_size=20,
        )

        planning_frame = move_group.get_planning_frame()
        pass #("============ Planning frame: %s" % planning_frame)
        
        eef_link = move_group.get_end_effector_link()
        pass #("============ End effector link: %s" % eef_link)
        
        group_names = robot.get_group_names()
        pass #("============ Available Planning Groups:", robot.get_group_names())

        pass #("============ pass #ing robot state")
        pass #(robot.get_current_state())
        pass #("")
        self.points = []
        self.box_name = ""
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
        self.MarkerPublish = rospy.Publisher("/marker",Marker,queue_size = 1)
    def go_to_joint_state(self):
        move_group = self.move_group
        joint_goal = move_group.get_current_joint_values()
        joint_goal[0] = 0
        joint_goal[1] = -tau / 8
        joint_goal[2] = 0
        joint_goal[3] = -tau / 4
        joint_goal[4] = 0
        joint_goal[5] = tau / 6  # 1/6 of a turn
        move_group.go(joint_goal, wait=True)
        move_group.stop()
        current_joints = move_group.get_current_joint_values()
        return all_close(joint_goal, current_joints, 0.01)

    def go_Home(self):
        move_group = self.move_group
        joint_goal = move_group.get_current_joint_values()
        joint_goal[0] = 0
        joint_goal[1] = 0
        joint_goal[2] = 0
        joint_goal[3] = 0
        joint_goal[4] = 0
        joint_goal[5] = 0
        move_group.go(joint_goal, wait=True)
        move_group.stop()
        self.wayPointsBuffer.append(move_group.get_current_pose().pose)
        current_joints = move_group.get_current_joint_values()

        return all_close(joint_goal, current_joints, 0.01)

    def plan_cartesian_path(self,Z,Y, scale=0.001):

        move_group = self.move_group
        
        
        wpose = copy.deepcopy(self.wayPointsBuffer[-1].pose)
        prevPoseZ = wpose.position.z
        prevPoseY = wpose.position.y
        if abs(Z)>0.1:
            wpose.position.z += 0.1*Z/abs(Z)  # First move up (z)
        if abs(Y)>0.1:
            wpose.position.y += 0.1*Y/abs(Y)  # First move up (z)


        Posedist = dist([prevPoseY,prevPoseZ] ,[wpose.position.y,wpose.position.z])
        #pass # (Posedist,len(self.wayPointsBuffer),"  :::::  ",prevPoseY,",",prevPoseZ,"|||",wpose.position.y,",",wpose.position.z)
        pass # (Z,Y)
        if (abs(Y)+abs(Z)>0):
            self.wayPointsBuffer.append(wpose)
        
        #if len(self.wayPointsBuffer)<10: return [],None
        #move_group.setPoseTargets (self.wayPointsBuffer)
        #(plan, fraction) = move_group.compute_cartesian_path(
        #   self.wayPointsBuffer, 0.001, 0 # waypoints to follow  # eef_step
        #)  # jump_threshold
        ##pass # ("planned part:",fraction )
        #return [],None

    def add_cartesian_poses(self,key):
        y,z   = 0,0

        if key==key.up:
            pass # ("up")
            z = 0.01
        elif key == key.down:
            pass # ("down")
            z = -0.01
        elif key ==key.left:
            y = -0.01
        elif key ==key.right:
            y = 0.01
        elif key == key.space:
            pass # ("ROBOT STATUS")
            pass # (self.robot.get_current_state())
            pass # ("POSES TO PLAN:%i"%(len(self.wayPointsBuffer)))
            return
        else:
            return
        pass # ("d")
        move_group = self.move_group

        wpose = copy.deepcopy(self.wayPointsBuffer[-1])
        pass # ("d1")
        prevPoseZ = wpose.position.z
        prevPoseY = wpose.position.y
        pass # ("d2")
        wpose.position.z += z  # First move up (z)
        pass # ("d3")
        wpose.position.y += y  # First move up (z)
        self.wayPointsBuffer.append(wpose)
        pass # ("d4")
        pass # (len(self.wayPointsBuffer))
        self.publish_marker(wpose)

    def publish_marker(self,pose):
        try:
            pass # ("here")
            coords = pose_to_list(pose)
            pass # ("here2")
            pt = geometry_msgs.msg.Point()
            pt.x = pose.position.x
            pt.y = pose.position.y
            pt.z = pose.position.z
            self.points.append(pt)
            marker = Marker()
            pass # ("here3")
            #marker.pose = copy.deepcopy(pose)
            marker.text = str(len(self.wayPointsBuffer))
            marker.color.r = 0.1
            marker.color.g = 0.5
            marker.color.b = 0.3
            marker.color.a = 1.0
            marker.scale.x = 0.05
            marker.scale.y = 0.05
            marker.scale.x = 0.01
            pass # ("here4")
            marker.points = self.points
            pass # ("here5")
            marker.header.frame_id = "base_link"
            #marker.type = visualization_msgs.Marker.link
            marker.type =4
            pass # ("here6")
            marker.action = 0
            pass # ("here7")
            #marker.namespace = "ABB_TRAJ"
            self.MarkerPublish.publish(marker)
            pass # (marker)
        except Exception as e:
            print (e)

    def display_trajectory(self, plan):
        robot = self.robot
        display_trajectory_publisher = self.display_trajectory_publisher
        display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        display_trajectory.trajectory_start = robot.get_current_state()
        display_trajectory.trajectory.append(plan)
        display_trajectory_publisher.publish(display_trajectory)



    def execute_plan(self, plan):
        rospy.loginfo("TRY TO EXECUTE")
        move_group = self.move_group
        move_group.execute(plan, wait=False)
        self.wayPointsBuffer =[self.wayPointsBuffer[-1]]
 


def ParseMsg(msg):
    msg = msg.strip()
    msg = msg.replace(")","")
    msg = msg.replace("(","")
    msg = msg.replace(" ","")
    msg = msg.split(",")
    val1 = float(msg[0])
    val2 = float(msg[1])
    button = msg[2]
    return val1,val2,button


def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if the values in two lists are within a tolerance of each other.
    For Pose and PoseStamped inputs, the angle between the two quaternions is compared (the angle
    between the identical orientations q and -q is calculated correctly).
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        x0, y0, z0, qx0, qy0, qz0, qw0 = pose_to_list(actual)
        x1, y1, z1, qx1, qy1, qz1, qw1 = pose_to_list(goal)
        # Euclidean distance
        d = dist((x1, y1, z1), (x0, y0, z0))
        # phi = angle between orientations
        cos_phi_half = fabs(qx0 * qx1 + qy0 * qy1 + qz0 * qz1 + qw0 * qw1)
        return d <= tolerance and cos_phi_half >= cos(tolerance / 2.0)

    return True









if __name__ =="__main__":


    #CONTROL
    RobotController = MoveGroupInterface()
    RobotController.go_Home()

    RobotController.listener.start()  # start to listen on a separate thread
    #RobotController.listener.join()  # remove if main thread is polling self.keys

    while not rospy.is_shutdown():
        try:

            if len(RobotController.wayPointsBuffer)>10:
                RobotController.wayPointsBuffer.pop(0)
                #RobotController.move_group.set_pose_targets(RobotController.wayPointsBuffer)
                #RobotController.move_group.go(RobotController.wayPointsBuffer)

                #RobotController.move_group.compute_joint_path(RobotController.wayPointsBuffer, 0.001, 0)
                (plan, fraction) = RobotController.move_group.compute_cartesian_path(
                    RobotController.wayPointsBuffer, 0.001, 0)
                RobotController.execute_plan(plan)


        except KeyboardInterrupt:
            pass #('Interrupted')

            break



