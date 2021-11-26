from threading import setprofile
import abb
from msvcrt import getch

import logging
import copy
global STEP
STEP = 5

class StepMover():
    def __init__(self,robot):
        pass # This is to maintain Liskov

    def moveUp(self,robot):
        pose = robot.get_cartesian()
        pose[0][2]+= STEP
        robot.set_cartesian(pose)
    def moveDown(self,robot):
        pose = robot.get_cartesian()
        pose[0][2]-= STEP
        robot.set_cartesian(pose)
    def moveLeft(self,robot):
        pose = robot.get_cartesian()
        pose[0][1]+= STEP
        robot.set_cartesian(pose)
    def moveRight(self,robot):
        pose = robot.get_cartesian()
        pose[0][1]-= STEP
        robot.set_cartesian(pose)

class BufferMover():

    def __init__(self,robot):
        self.bufferLength = 0
        robot.buffer_set([])
    def moveUp(self,robot):
        pose = robot.get_cartesian()
        pose[0][2]+= STEP
        self.bufferLength+=1
        robot.buffer_add(pose)
        if (self.bufferLength>5):
            self.moveAll(robot)
    def moveDown(self,robot):
        pose = robot.get_cartesian()
        pose[0][2]-= STEP
        self.bufferLength+=1
        robot.buffer_add(pose)
        if (self.bufferLength>5):
            self.moveAll(robot)
    def moveLeft(self,robot):
        pose = robot.get_cartesian()
        pose[0][1]+= STEP
        self.bufferLength+=1
        robot.buffer_add(pose)
        if (self.bufferLength>5):
            self.moveAll(robot)
    def moveRight(self,robot):
        pose = robot.get_cartesian()
        pose[0][1]-= STEP
        self.bufferLength+=1
        robot.buffer_add(pose)
        if (self.bufferLength>5):
            self.moveAll(robot)
    def moveAll(self,robot):
            robot.buffer_execute()
            robot.buffer_clear()





if __name__ == "__main__":

    formatter = logging.Formatter("[%(asctime)s] %(levelname)-7s (%(filename)s:%(lineno)3s) %(message)s", "%Y-%m-%d %H:%M:%S")
    handler_stream = logging.StreamHandler()
    handler_stream.setFormatter(formatter)
    handler_stream.setLevel(logging.DEBUG)
    log = logging.getLogger('abb')
    log.setLevel(logging.DEBUG)
    log.addHandler(handler_stream)
    myRobot = abb.Robot()
    myRobot.get_robotinfo()
    myRobot.set_joints([0,0,0,0,0,0])
    interface = StepMover
    mover = interface(myRobot)
    while True:
        key = ord(getch())
        if key == 80: #Down arrow
            print('down')
            mover.moveDown(myRobot)
        elif key == 72: #Up arrow
            print('up')
            mover.moveUp(myRobot)
        elif key == 75: #Left arrow
            print('left')
            mover.moveLeft(myRobot)
        elif key == 77: #Right arrow
            print('right')
            mover.moveRight(myRobot)
        elif key == 27:
            break
    myRobot.close()