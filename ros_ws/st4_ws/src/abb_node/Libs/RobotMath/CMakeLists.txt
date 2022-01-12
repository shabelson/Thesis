cmake_minimum_required(VERSION 3.0.0)
project(abb_node)


add_library(RobotMath
src/HomogTransf.cpp
src/Mat.cpp
src/Polynom.cpp
src/Quaternion.cpp
src/RotMat.cpp
src/Vec.cpp)

target_include_directories(RobotMath PUBLIC include)