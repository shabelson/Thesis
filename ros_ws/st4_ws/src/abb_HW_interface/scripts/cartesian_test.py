#!/usr/bin/env python
from __future__ import print_function


import rospy
import serial


import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

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
        
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node("move_group_Pico_Joystick", anonymous=True)
        robot = moveit_commander.RobotCommander()
        scene = moveit_commander.PlanningSceneInterface()
        group_name = groupName
        move_group = moveit_commander.MoveGroupCommander(group_name)
        self.wayPointsBuffer =[move_group.get_current_pose().pose] 
        display_trajectory_publisher = rospy.Publisher(
            "/move_group/display_planned_path",
            moveit_msgs.msg.DisplayTrajectory,
            queue_size=20,
        )

        planning_frame = move_group.get_planning_frame()
        print("============ Planning frame: %s" % planning_frame)
        
        eef_link = move_group.get_end_effector_link()
        print("============ End effector link: %s" % eef_link)
        
        group_names = robot.get_group_names()
        print("============ Available Planning Groups:", robot.get_group_names())

        print("============ Printing robot state")
        print(robot.get_current_state())
        print("")

        self.box_name = ""
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
       
    def go_to_joint_state(self):
        move_group = self.move_group
        joint_goal = move_group.get_current_joint_values()
        print (joint_goal)
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
        current_joints = move_group.get_current_joint_values()
        return all_close(joint_goal, current_joints, 0.01)

    def plan_cartesian_path(self,Z,Y, scale=1):

        move_group = self.move_group
        
      
        wpose = copy.deepcopy(self.wayPointsBuffer[-1])
        prevPoseZ = wpose.position.z
        prevPoseY = wpose.position.y
        #print (pose_to_list(wpose))
        posein = False
        if abs(Z)>0.1:
            posein = True
            wpose.position.z += 0.01*Z/abs(Z)  # First move up (z)
        if abs(Y)>0.1:
            posein = True
            wpose.position.y += 0.01*Y/abs(Y)  # First move up (z)
        if (posein):
            self.wayPointsBuffer.append(wpose)
        

        Posedist = dist([prevPoseY,prevPoseZ] ,[wpose.position.y,wpose.position.z])
        #print (Posedist,len(self.wayPointsBuffer),"  :::::  ",prevPoseY,",",prevPoseZ,"|||",wpose.position.y,",",wpose.position.z)
        #print (Z,Y)
        #if (Posedist>0.02):       
        
        print (len(self.wayPointsBuffer))
        if len(self.wayPointsBuffer)<3: return [],None
        ##remove origin point from buffer
        self.wayPointsBuffer.pop(0)
        
        (plan, fraction) = move_group.compute_cartesian_path(
           self.wayPointsBuffer, 0.001, 0 # waypoints to follow  # eef_step
        )  # jump_threshold
        print ("planned part:",fraction )
        
        return plan, fraction
        

  
    def display_trajectory(self, plan):
        robot = self.robot
        display_trajectory_publisher = self.display_trajectory_publisher
        display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        display_trajectory.trajectory_start = robot.get_current_state()
        display_trajectory.trajectory.append(plan)
        display_trajectory_publisher.publish(display_trajectory)



    def execute_plan(self, plan,fraction):
        rospy.loginfo("TRY TO EXECUTE")
        move_group = self.move_group
        move_group.execute(plan, wait=True)
        if (fraction<1.0): self.wayPointsBuffer =[move_group.get_current_pose().pose] 
        else: self.wayPointsBuffer =[self.wayPointsBuffer[-1]] 
 


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
    s = serial.Serial("/dev/ttyACM0",115200)
    print (s.name)
    print (s.is_open)


    xAxis = AxisControl()
    yAxis = AxisControl()

    calbirated =False
    #JOYSTICK CALIBRATION
    while not calbirated:
        try:
            msg  = s.readline().decode("utf-8")
            xVal,yVal,GoHome = ParseMsg(msg)
            calbirated = xAxis.DevCalc(xVal) and yAxis.DevCalc(yVal)
        except KeyboardInterrupt:
            print('Interrupted')
            s.close()
            break
    print ("JOYSTICK CALIBRATED")

    strBool = {"True":False,"False":True} # The button is reveered
    #CONTROL
    RobotController = MoveGroupInterface()
    RobotController.go_Home()
    while not rospy.is_shutdown():
        try:
            msg  = s.readline().decode("utf-8")
            xVal,yVal,GoHome = ParseMsg(msg)
            xVal = xAxis.Remap(xVal)
            yVal = yAxis.Remap(yVal)
            GoHome =strBool[GoHome]
            if GoHome:
                RobotController.go_Home()
                continue

            cartesian_plan, fraction = RobotController.plan_cartesian_path(xVal,yVal,10)
            if fraction ==None:continue
            RobotController.display_trajectory(cartesian_plan)
            RobotController.execute_plan(cartesian_plan,fraction)
            
        except KeyboardInterrupt:
            print('Interrupted')
            moveit_commander.roscpp_shutdown()
            s.close()
            break



