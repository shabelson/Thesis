cmake_minimum_required(VERSION 3.0.0)
project(RobotCommLib)


add_library(RobotCom
src/abb_comm.cpp)

target_include_directories(RobotCom PUBLIC include)