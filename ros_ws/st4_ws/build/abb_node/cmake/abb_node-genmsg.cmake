# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "abb_node: 0 messages, 16 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Icontrol_msgs:/opt/ros/melodic/share/control_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(abb_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" ""
)

get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_custom_target(_abb_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abb_node" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)
_generate_srv_cpp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
)

### Generating Module File
_generate_module_cpp(abb_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(abb_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(abb_node_generate_messages abb_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_cpp _abb_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abb_node_gencpp)
add_dependencies(abb_node_gencpp abb_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abb_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)
_generate_srv_eus(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
)

### Generating Module File
_generate_module_eus(abb_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(abb_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(abb_node_generate_messages abb_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_eus _abb_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abb_node_geneus)
add_dependencies(abb_node_geneus abb_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abb_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)
_generate_srv_lisp(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
)

### Generating Module File
_generate_module_lisp(abb_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(abb_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(abb_node_generate_messages abb_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_lisp _abb_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abb_node_genlisp)
add_dependencies(abb_node_genlisp abb_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abb_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)
_generate_srv_nodejs(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
)

### Generating Module File
_generate_module_nodejs(abb_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(abb_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(abb_node_generate_messages abb_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_nodejs _abb_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abb_node_gennodejs)
add_dependencies(abb_node_gennodejs abb_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abb_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)
_generate_srv_py(abb_node
  "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
)

### Generating Module File
_generate_module_py(abb_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(abb_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(abb_node_generate_messages abb_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetSpeed.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetComm.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetZone.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Ping.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetDIO.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetWorkObject.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTrackDist.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SpecialCommand.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetVacuum.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_IsMoving.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_Stop.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetJoints.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_SetTool.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_node/srv/robot_GetCartesian.srv" NAME_WE)
add_dependencies(abb_node_generate_messages_py _abb_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abb_node_genpy)
add_dependencies(abb_node_genpy abb_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abb_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abb_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET control_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp control_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(abb_node_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abb_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET control_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus control_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(abb_node_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abb_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET control_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp control_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(abb_node_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abb_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET control_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs control_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(abb_node_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abb_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET control_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py control_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(abb_node_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
