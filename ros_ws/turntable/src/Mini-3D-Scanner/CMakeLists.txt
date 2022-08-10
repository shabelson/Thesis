cmake_minimum_required(VERSION 3.0.0)
project(scanner)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  pcl_ros
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf2_sensor_msgs
  eigen_conversions
  tf
  tf_conversions
)






find_package(PCL REQUIRED)
find_package(Boost REQUIRED system filesystem)
find_package(Open3D REQUIRED)

catkin_package()

###########
## Build ##
###########


include_directories(${catkin_INCLUDE_DIRS})
include_directories(${PCL_INCLUDE_DIRS})
include_directories(${Boost_INCLUDE_DIRS})
include_directories(include)


link_directories(${PCL_LIBRARY_DIRS})
link_directories(${Boost_LIBRARY_DIRS})



#add_executable(pcl_processing
# src/pcl_processing.cpp)
#target_link_libraries(pcl_processing ${catkin_LIBRARIES} ${PCL_LIBRARIES})


add_executable(processor
 src/processor_node.cpp
 include/processor_node.h)
target_link_libraries(processor ${Boost_FILESYSTEM_LIBRARY} ${Boost_SYSTEM_LIBRARY} ${catkin_LIBRARIES} ${PCL_LIBRARIES})

add_executable(camera_emulator src/camera_emulator.cpp)
target_link_libraries(camera_emulator ${catkin_LIBRARIES} ${PCL_LIBRARIES})

add_executable(showRegResultOnline src/showRegResultOnline.cpp)
target_link_libraries(showRegResultOnline ${catkin_LIBRARIES} ${PCL_LIBRARIES})

add_executable(setup src/setup.cpp)
target_link_libraries(setup ${catkin_LIBRARIES} ${PCL_LIBRARIES})

add_executable(rotation_dir src/rotation_dir.cpp)
target_link_libraries(rotation_dir ${catkin_LIBRARIES} ${PCL_LIBRARIES})



