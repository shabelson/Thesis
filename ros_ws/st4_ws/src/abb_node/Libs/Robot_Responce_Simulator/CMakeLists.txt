cmake_minimum_required(VERSION 3.0.0)
project(RobotSimLib)


add_library(RobotSim
src/rapid_responce_simulator.cpp)

target_include_directories(RobotSim PUBLIC include)
