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


typedef pcl::PointXYZRGBA PointT;


static int pcd_index = 0;
static char gotDataFlag = 0;// could use a 'class' to reduce this global variable
static pcl::PointCloud<PointT>::Ptr cloud_ptr (new pcl::PointCloud<PointT>);
static geometry_msgs::TransformStamped LastTF;
static std::string pcl_frame = "";
pcl::PointCloud<PointT>::Ptr cloud_filter(pcl::PointCloud<PointT>::Ptr &cloud);

static tf::StampedTransform tf_trans;

const std::string base_frame = "camera_rgb_optical_frame";
const std::string target_frame = "odom";



void callback(sensor_msgs::PointCloud2 cloud_raw)
{
    //tf::FrameGraphRequest frame_req;
    //tf::FrameGraphResponse frame_res;

    ///bool res = tf_listener.getFrames(frame_req,frame_res);
    //ROS_WARN_COND(res,"NO FRAMES - PCL PROCESSING");
    // cloud_raw is PC data from Kinect V2;
    // static int pcd_index = 0;
    //tf_listener.lookupTransform(cloud_raw.header.frame_id,target_frame,cloud_raw.header.stamp, tf_trans);

    //geometry_msgs::TransformStamped geo_trans;
    //tf::transformStampedTFToMsg(tf_trans,geo_trans);
    //sensor_msgs::PointCloud2 tfCloud(cloud_raw);

    //tf2::doTransform(cloud_raw,tfCloud,geo_trans);

    std::string filename = "/home/shabelson/Documents/studio_exps/exp1/" + std::to_string(pcd_index) + ".pcd";
    pcl_frame =  cloud_raw.header.frame_id;
    geometry_msgs::TransformStamped gm_transform;

    // The pcl froma the astra is publish under camera_rgb_optical_frame TF.
    // need to transfer to the rotated axis (base_link)
    // change PC format from PointCloud2 to pcl::PointCloud<PointT>
    //pcl::fromROSMsg(cloud_raw, *cloud_ptr);
    ROS_INFO("Processing #%i PointCloud:%s..", pcd_index,pcl_frame.c_str());



    // cloud_raw
    // crop, segment, filter
    cloud_ptr = cloud_filter(cloud_ptr);
    //LastTF.loo
    // save PCD file to local folder
    pcl::io::savePCDFileBinary (filename, *cloud_ptr);

    gotDataFlag = 1;
    ++pcd_index;
}


void callback_tf(const geometry_msgs::TransformStamped current_tf)
{
  if (gotDataFlag==1)
  {
    LastTF = current_tf;
  }

}

int main (int argc, char **argv)
{

    ros::init (argc, argv, "pcl_processing");
    ros::NodeHandle nh;
    //tf::TransformListener tf_listener;
    ros::Subscriber sub = nh.subscribe("/camera/depth_registered/points", 1 , callback);
    //ros::Subscriber sub_tf = nh.subscribe("/tf", 1 , callback_tf);
    ros::Publisher pub = nh.advertise<std_msgs::Int64> ("pcd_save_done", 1);
    ros::Publisher pub_pcl = nh.advertise<sensor_msgs::PointCloud2> ("/pcl_process", 1);
    sensor_msgs::PointCloud2 ros_pcl;
    ros::Rate loop_rate(1);
    std_msgs::Int64 number_PCDdone;
    // std::stringstream ss;
    //if use class => Can be replaced by asyncspin
    while (ros::ok())
    {
        /* Do something? */
        // ss.str("");
        // ss << "have saved pcd #" << pcd_index ;
        // msg.data = ss.str();
        number_PCDdone.data = pcd_index;

        // ros::spin()
        //*** only when this is run, it will get to callback
        ros::spinOnce();

        // only publish data when having got data
        if (gotDataFlag == 1){
            pcl::toROSMsg(*cloud_ptr.get(),ros_pcl);
            pub.publish(number_PCDdone);
            pub_pcl.publish(ros_pcl);
            gotDataFlag = 0;
        }
        loop_rate.sleep();
    }
    return 0;
}


pcl::PointCloud<PointT>::Ptr cloud_filter(pcl::PointCloud<PointT>::Ptr &cloud)
{
    pcl::PointCloud<PointT>::Ptr cloud_filtered (new pcl::PointCloud<PointT>);

  //****************************************************//
    // Create the filtering object - passthrough
    pcl::PassThrough<PointT> passz;
    passz.setInputCloud (cloud);
    passz.setFilterFieldName ("z");
    //passz.setFilterLimits (0.0f, 1.5f);
    // passz.setFilterLimits (0.5, 1.5);

     passz.setFilterLimits (0, 1.5f);
    //passz.setFilterLimitsNegative (true);
    passz.filter (*cloud_filtered);

    pcl::PassThrough<PointT> passy;
    passy.setInputCloud (cloud_filtered);
    passy.setFilterFieldName ("y");
    //passy.setFilterLimits (-1.0f, 1.0f);
    passy.setFilterLimits (0.05, 0.3f);

    // passy.setFilterLimits (-2.0, 2.0);
    //pass.setFilterLimitsNegative (true);
    passy.filter (*cloud_filtered);

    pcl::PassThrough<PointT> passx;
    passx.setInputCloud (cloud_filtered);
    passx.setFilterFieldName ("x");
    //passx.setFilterLimits (-1.0f, 1.0f);
     passx.setFilterLimits (0, 0.2f);

    // passx.setFilterLimits (-3.0, 3.0);
    //pass.setFilterLimitsNegative (true);
    passx.filter (*cloud_filtered);
  //****************************************************//



  //****************************************************//
    // // segment ground
    // pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
    // pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
    // // Create the segmentation object
    // pcl::SACSegmentation<PointT> seg;
    // // Optional
    // seg.setOptimizeCoefficients (true);
    // // Mandatory
    // seg.setModelType (pcl::SACMODEL_PLANE);  // plane
    // seg.setMethodType (pcl::SAC_RANSAC);
    // seg.setDistanceThreshold (0.010);

    // seg.setInputCloud (cloud_filtered);
    // seg.segment (*inliers, *coefficients);

    // pcl::ExtractIndices<PointT> extract;
    // extract.setInputCloud(cloud_filtered);
    // extract.setIndices(inliers);
    // extract.setNegative(true);
    // extract.filter(*cloud_filtered);
  //****************************************************//


  //****************************************************//
    // Create the filtering object - StatisticalOutlierRemoval filter
    pcl::StatisticalOutlierRemoval<PointT> sor;
    sor.setInputCloud (cloud_filtered);
    sor.setMeanK (50);
    sor.setStddevMulThresh (1.0);
    sor.filter (*cloud_filtered);

  //****************************************************//

    // pcl::PointCloud<PointT>::Ptr cloud_write (new pcl::PointCloud<PointT>);
    // cloud_write.width = cloud_filtered.points.size();
    // cloud_write.height = 1;
    // cloud_write.is_dense = false;

    return cloud_filtered;

}
