#ifndef PCL_PROCESSING_H
#define PCL_PROCESSING_H

#include <iostream>
#include <string>
#include <sstream>

#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <std_msgs/Int64.h>
#include <pcl_conversions/pcl_conversions.h>

#include <pcl/io/pcd_io.h>
#include <pcl/point_cloud.h>
#include <pcl/filters/passthrough.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/statistical_outlier_removal.h>
#include <pcl/filters/extract_indices.h>

#include <tf/transform_listener.h>

#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_sensor_msgs/tf2_sensor_msgs.h>
#include <tf2_msgs/TFMessage.h>
#include <tf2_eigen/tf2_eigen.h>
#include <tf2/transform_datatypes.h>
#include <Eigen/Eigen>





static int pcd_index = 0;
static char gotDataFlag = 0;// could use a 'class' to reduce this global variable
static pcl::PointCloud<PointT>::Ptr cloud_ptr (new pcl::PointCloud<PointT>);
static geometry_msgs::TransformStamped LastTF;
static std::string pcl_frame = "";
pcl::PointCloud<PointT>::Ptr cloud_filter(pcl::PointCloud<PointT>::Ptr &cloud);

static tf::StampedTransform tf_trans;

const std::string base_frame = "camera_rgb_optical_frame";
const std::string target_frame = "model_base";

class proccesor
{


  
}






















#endif // PCL_PROCESSING_H
