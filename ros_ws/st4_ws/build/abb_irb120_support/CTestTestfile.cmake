# CMake generated Testfile for 
# Source directory: /home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_models/abb_irb120_support
# Build directory: /home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/build/abb_irb120_support
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_abb_irb120_support_roslaunch-check_tests_roslaunch_test.xml "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/build/abb_irb120_support/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/build/abb_irb120_support/test_results/abb_irb120_support/roslaunch-check_tests_roslaunch_test.xml.xml" "--return-code" "/usr/local/bin/cmake -E make_directory /home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/build/abb_irb120_support/test_results/abb_irb120_support" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/build/abb_irb120_support/test_results/abb_irb120_support/roslaunch-check_tests_roslaunch_test.xml.xml\" \"/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_models/abb_irb120_support/tests/roslaunch_test.xml\" ")
set_tests_properties(_ctest_abb_irb120_support_roslaunch-check_tests_roslaunch_test.xml PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_models/abb_irb120_support/CMakeLists.txt;11;roslaunch_add_file_check;/home/shabelson/Documents/GitHub/Thesis/ros_ws/st4_ws/src/abb_models/abb_irb120_support/CMakeLists.txt;0;")
subdirs("gtest")
