#ifndef PROCESSOR_NODE_H
#define PROCESSOR_NODE_H


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
#include <tf/transform_datatypes.h>
#include "tf_conversions/tf_eigen.h"
#include "tf_conversions/tf_kdl.h"

#include <pcl/common/transforms.h>

#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include <tf2_sensor_msgs/tf2_sensor_msgs.h>
#include <tf2_msgs/TFMessage.h>
#include <tf2_eigen/tf2_eigen.h>
#include <tf2/transform_datatypes.h>
#include <tf2/convert.h>

#include <Eigen/Eigen>
#include <Eigen/Geometry>
#include <Eigen/Core>

#include <boost/shared_ptr.hpp>

typedef pcl::PointXYZRGBA PointT;

class Processor
{
public:
  //methods:

  void pcl_callback(const sensor_msgs::PointCloud2 &cloud_raw);
  void callback_tf(const geometry_msgs::TransformStamped &in_pcl);
  tf::Quaternion q_orig, q_rot, q_new;
  Processor(ros::NodeHandle &nh)

  {

    std::cout<<"Processor Init"<<std::endl;
    tf::TransformListener tf_listener(nh);
    pcl::PointCloud<PointT>::Ptr temp (new pcl::PointCloud<PointT>);
    cloud_ptr.swap (temp);
    sub_registered_cloud= nh.subscribe("/camera/depth_registered/points", 1 ,&Processor::pcl_callback,this);
    pub_pcl_done = nh.advertise<std_msgs::Int64> ("/pcd_save_done", 1);
    pub_pcl = nh.advertise<sensor_msgs::PointCloud2> ("/pcl_process", 1);
    gotDataFlag = 0;
    pcd_index = 0;
    //base_frame = "camera_rgb_optical_frame";
    base_frame = "model_base";
    target_frame = "camera_body_link";
    std::cout<<"Processor Init Done"<<std::endl;
    have_ref_frame = false;
    ref_eigen_quat.setIdentity ();


  }
  //variables:
    tf::TransformListener tf_listener;

private:

  char gotDataFlag;// could use a 'class' to reduce this global variable
  int pcd_index;
  Eigen::Quaternionf ref_eigen_quat;
  Eigen::Vector3f  ref_eigen_vector;
  geometry_msgs::TransformStamped LastTF;
  std::string pcl_frame = "";
  tf::StampedTransform tf_trans;
  tf::StampedTransform ref_trans;
  std::string base_frame;
  std::string target_frame;
  ros::Subscriber sub_registered_cloud;
  ros::Subscriber sub_tf;
  ros::Publisher pub_pcl_done;
  ros::Publisher pub_pcl;
  ros::Time tm;
  pcl::PointCloud<PointT>::Ptr cloud_ptr;
  sensor_msgs::PointCloud2 ros_pcl;
  bool have_ref_frame = false;

  //methods:


  pcl::PointCloud<PointT>::Ptr cloud_filter(pcl::PointCloud<PointT>::Ptr &cloud);
  //pcl::PointCloud<PointT>::Ptr cloud_transform(pcl::PointCloud<PointT>::Ptr &cloud , geometry_msgs::TransformStamped geo_trans);
  pcl::PointCloud<PointT>::Ptr TransformPtCloud (pcl::PointCloud<PointT>::Ptr& source_cloud,tf::StampedTransform& tf_trans);
};




#endif // PROCESSOR_NODE_H
