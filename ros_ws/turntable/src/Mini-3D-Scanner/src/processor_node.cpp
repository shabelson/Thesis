#include "processor_node.h"

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
#include <tf/transform_broadcaster.h>

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

//template void pcl::transformPointCloud <pcl::PointXYZRGBA, float>(const pcl::PointCloud<PointT>& c_in,pcl::PointCloud<PointT>& c_out ,const Eigen::Matrix<float, 4, 4>& mat ,bool t);
template void pcl::transformPointCloud <pcl::PointXYZRGBA, float>(const pcl::PointCloud<PointT>& c_in,pcl::PointCloud<PointT>& c_out ,const Eigen::Vector3f &offset, const Eigen::Quaternionf &rotation,bool t);


//pcl::PointCloud<PointT>::Ptr Processor::TransformPtCloud (sensor_msgs::PointCloud2 &source_cloud,tf::StampedTransform &tf_trans)
//{
//  pcl::PointCloud<PointT> loc_pcl;
//  pcl::fromROSMsg(source_cloud, loc_pcl);
//  TransformPtCloud (*loc_pcl,tf_trans);
//  pcl::toROSMsg (loc_pcl,source_cloud);
//  return loc_pcl;
//
//}
pcl::PointCloud<PointT>::Ptr Processor::TransformPtCloud
(pcl::PointCloud<PointT>::Ptr &source_cloud,tf::StampedTransform &tf_trans)
{

  tf::Quaternion tf_quat;
  tf_quat= tf_trans.getRotation (); //doubles
  tf::Vector3 tf_vector;
  tf_vector = tf_trans.getOrigin ();//doubles= tf_trans.getOrigin ();//doubles


  Eigen::Quaternion<double> eigen_quatD; //doubles
  Eigen::Vector3d eigen_vectorD;  //doubles

  tf::quaternionTFToEigen (tf_quat ,eigen_quatD);
  tf::vectorTFToEigen(tf_vector    ,eigen_vectorD);



  Eigen::Quaternion<float> eigen_quat;
  Eigen::Vector3f eigen_vector;
  Eigen::Vector3f eigen_vector2(0,0,0);

  eigen_quat = eigen_quatD.cast<float>();
  eigen_vector =eigen_vectorD.cast<float>();


  pcl::PointCloud<PointT>::Ptr transformed_cloud (new pcl::PointCloud<PointT> ());
  pcl::transformPointCloud(*source_cloud, *transformed_cloud,eigen_vector,eigen_quat);

  return transformed_cloud;

}

pcl::PointCloud<PointT>::Ptr Processor::cloud_filter(pcl::PointCloud<PointT>::Ptr &cloud)
{
    pcl::PointCloud<PointT>::Ptr cloud_filtered (new pcl::PointCloud<PointT>);
//std::cout<<"Enter Filter"<<std::endl;
  //****************************************************//
    // Create the filtering object - passthrough
    pcl::PassThrough<PointT> passz;
    passz.setInputCloud (cloud);
    float bounds = 0.11;
    passz.setFilterFieldName ("z");
    //passz.setFilterLimits (0.0f, 1.5f);
    // passz.setFilterLimits (0.5, 1.5);

     passz.setFilterLimits (-1*bounds, bounds);
    //passz.setFilterLimitsNegative (true);
    passz.filter (*cloud_filtered);

    pcl::PassThrough<PointT> passy;
    passy.setInputCloud (cloud_filtered);
    passy.setFilterFieldName ("y");
    //passy.setFilterLimits (-1.0f, 1.0f);
    passy.setFilterLimits (-1*bounds, bounds);

    // passy.setFilterLimits (-2.0, 2.0);
    //pass.setFilterLimitsNegative (true);
    passy.filter (*cloud_filtered);

    pcl::PassThrough<PointT> passx;
    passx.setInputCloud (cloud_filtered);
    passx.setFilterFieldName ("x");
    //passx.setFilterLimits (-1.0f, 1.0f);
     passx.setFilterLimits (0, 2*bounds);

    // passx.setFilterLimits (-3.0, 3.0);
    //pass.setFilterLimitsNegative (true);
    passx.filter (*cloud_filtered);
    //std::cout<<"Succed XYZ"<<std::endl;
  //****************************************************//
    PointT tempPt;
    tempPt.r =255;
    tempPt.g = 0;
    tempPt.b = 0;

    for ( int i=-bounds*100;i<bounds*100;i++ )
      for ( int t=-bounds*100;t<bounds*100;t++ )
      {
      tempPt.x = 0;
      tempPt.y = i;
      tempPt.z = t;
      cloud_filtered->push_back (tempPt);
      }



  //****************************************************//
    // // segment ground
     //pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
     //pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
     //// Create the segmentation object
     //pcl::SACSegmentation<PointT> seg;
     //// Optional
     //seg.setOptimizeCoefficients (true);
     //// Mandatory
     //seg.setModelType (pcl::SACMODEL_PLANE);  // plane
     //seg.setMethodType (pcl::SAC_RANSAC);
     //seg.setDistanceThreshold (0.010);
     //
     //seg.setInputCloud (cloud_filtered);
     //seg.segment (*inliers, *coefficients);
     //
     //pcl::ExtractIndices<PointT> extract;
     //extract.setInputCloud(cloud_filtered);
     //extract.setIndices(inliers);
     //extract.setNegative(true);
     //extract.filter(*cloud_filtered);
  //****************************************************//


  //****************************************************//
    // Create the filtering object - StatisticalOutlierRemoval filter
    //pcl::StatisticalOutlierRemoval<PointT> sor;
    //sor.setInputCloud (cloud_filtered);
    //sor.setMeanK (50);
    //sor.setStddevMulThresh (1.0);
    //sor.filter (*cloud_filtered);
    //std::cout<<"Succed Statistics"<<std::endl;

  //****************************************************//

    // pcl::PointCloud<PointT>::Ptr cloud_write (new pcl::PointCloud<PointT>);
    // cloud_write.width = cloud_filtered.points.size();
    // cloud_write.height = 1;
    // cloud_write.is_dense = false;

    return cloud_filtered;

}
void Processor::pcl_callback(const sensor_msgs::PointCloud2 &cloud_raw)
{



  //static tf::

  ros::Time now = ros::Time::now();

  tf_broadcast.sendTransform (tf::StampedTransform (model_tf,now,robot_base_frame,model_frame));

  tf::FrameGraphRequest frame_req;

  tf::FrameGraphResponse frame_res;

  base_frame = cloud_raw.header.frame_id;
  try
  {
    //std::cout<<"try wait for Tranform"<<std::endl;
    tf_listener.waitForTransform (base_frame , model_frame , now , ros::Duration(3.0));
  }
  catch (...)
  {
    std::cout<<"FAILED wait for Tranform"<<std::endl;
    return;
  }


  std::string err_string;

  //CHANGES THE Frame from base_frame to target_frame
  int commontime = tf_listener.getLatestCommonTime (target_frame ,base_frame,tm,&err_string);


  tf_listener.lookupTransform (target_frame ,base_frame  , ros::Time(commontime), tf_trans_to_flange); //the frame order is revereved

  geometry_msgs::TransformStamped geo_trans;
  tf::transformStampedTFToMsg(tf_trans_to_flange,geo_trans);
  tf2::doTransform(cloud_raw,ros_pcl,geo_trans);

  //FILTER THE PCL according to the new frame (flange)
  pcl::fromROSMsg(ros_pcl, *cloud_ptr);
  cloud_ptr = cloud_filter(cloud_ptr);
  //cloud_ptr = this->TransformPtCloud(cloud_ptr,tf_trans_to_flange);
  pcl::toROSMsg(*cloud_ptr.get(),ros_pcl);

  //MOVE THE PCL to te model base
  //tf_listener.lookupTransform ( model_frame, target_frame ,ros::Time(commontime), tf_transe_flange_to_model);
  //tf::transformStampedTFToMsg(tf_transe_flange_to_model,geo_trans);
  //tf2::doTransform(ros_pcl,ros_pcl,geo_trans);
  //
  //pcl::fromROSMsg(ros_pcl, *cloud_ptr);
  ////cloud_ptr = this->TransformPtCloud(cloud_ptr,tf_transe_flange_to_model);
  //pcl::toROSMsg(*cloud_ptr.get(),ros_pcl);


  //float roll = 0, pitch = 0, yaw = 0;
  //pcl::fromROSMsg(ros_pcl, *cloud_ptr);

  //pcl::toROSMsg(*cloud_ptr.get(),ros_pcl);
  //
  //Eigen::Quaternion<float> qf;
  //Eigen::Quaternion<double> qd;
  //
  //tf::quaternionTFToEigen (rot,qd);
  //qf = qd.cast<float>();
  //Eigen::Vector3f noneVec(0,0,0);
  //qf.inverse();
  //pcl::transformPointCloud(*cloud_ptr, *cloud_ptr,noneVec,qf);
  //pcl::toROSMsg(*cloud_ptr.get(),ros_pcl);
  ////bring geometry to 0,0,0 in proper orentation to camera frame (the proper vector is the between
  ////the model_base (ee_wrist) and the the camera_rgb_optical_frame
  //pcl::transformPointCloud(*cloud_ptr, *cloud_ptr,noneVec,q);
  //
  //
  //q = Eigen::AngleAxisf(roll, Eigen::Vector3f::UnitX())
  //    * Eigen::AngleAxisf(pitch, Eigen::Vector3f::UnitY())
  //    * Eigen::AngleAxisf(yaw, Eigen::Vector3f::UnitZ());
  //noneVec = Eigen::Vector3f(0,0,0);

  //cloud_ptr = this->TransformPtCloud (cloud_ptr, tf_trans);
  //
  //
  //
  //tf_listener.lookupTransform ("/camera_body_link"  , "/model_base" , ros::Time(commontime), tf_trans);
  //tf::transformStampedTFToMsg(tf_trans,geo_trans);
  //cloud_ptr = this->TransformPtCloud (cloud_ptr, tf_trans);

  std::string filename = "/home/shabelson/Documents/studio_exps/exp1/" + std::to_string(pcd_index) + ".pcd";


  ROS_INFO("Processing #%i PointCloud:%s..", pcd_index,pcl_frame.c_str());

  try
    {
      pcl::io::savePCDFileBinary (filename, *cloud_ptr);
    }
  catch(...)
    {
      ROS_WARN("PROCESSOR : PCL SAVE FAIL");
      return;
    }

  gotDataFlag = 1;

  ++pcd_index;

  //

  std_msgs::Int64 msg;

  msg.data = pcd_index;

  pub_pcl_done.publish(msg);

  pub_pcl.publish(ros_pcl);

}


void Processor::callback_tf(const geometry_msgs::TransformStamped &in_pcl)
{}



int main (int argc, char **argv)
{

  //std::cout<<"hello world"<<std::endl;

  ros::init(argc, argv, "pcl_processing");
  ros::Time::useSystemTime();
  ros::NodeHandle nh;
  Processor pcl_process(nh);
  ros::spin();
  return 0;
}
