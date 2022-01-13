#include <iostream>
#include <string>
#include <sstream>

#include <ros/ros.h>
#include <std_msgs/Int64.h>

#include <pcl/io/pcd_io.h>
#include <pcl/point_cloud.h>
#include <pcl/filters/passthrough.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/statistical_outlier_removal.h>
#include <pcl/filters/extract_indices.h>
#include <pcl_conversions/pcl_conversions.h>
#include <Eigen/Eigen>
#include <tf/transform_broadcaster.h>
#include <pcl/features/normal_3d.h>
#include <cmath>
#include <geometry_msgs/Vector3.h>
#include <sensor_msgs/PointCloud2.h>




typedef pcl::PointXYZRGBA PointT;
struct Normal{
    long double x;
    long double y;
    long double z;
};
static char task_done = 0;
static int global_index = 0 ;
static geometry_msgs::Vector3 normal_final;
sensor_msgs::PointCloud2 outPcl;

Normal plane_normal(pcl::PointCloud<PointT>::Ptr &cloud);

float cal_angle(Normal norm1, Normal norm2);

ros::Publisher pub2,pub3;

void callback(std_msgs::Int64 num)
{
    int pcd_index = num.data;
    if (pcd_index > 1){
        static tf::TransformBroadcaster br;
        tf::Quaternion quat1,quat2;

        tf::Transform tf_norm1,tf_norm2;

        std::string fr_parent = "base_link";
        std::string fr_child1 = "norm1_link";
        std::string fr_child2 = "norm2_link";



        global_index = pcd_index;
        pcl::PointCloud<PointT>::Ptr cloud_ptr (new pcl::PointCloud<PointT>);
        static sensor_msgs::PointCloud2 pc2_msg1,pc2_msg2;
        std::string filename1, filename2;
        Normal norm1, norm2;
        filename1 = "/home/shabelson/Documents/studio_exps/exp1/" + std::to_string(pcd_index-1) + ".pcd";

        if (pcl::io::loadPCDFile<PointT> (filename1, *cloud_ptr) == -1) return ;
        norm1 = plane_normal(cloud_ptr);
        quat1.setEulerZYX (norm1.z,norm1.y,norm1.x);
        std::cout << "norm1 x: " << norm1.x << std::endl;
        std::cout << "norm1 y: " << norm1.y << std::endl;
        std::cout << "norm1 z: " << norm1.z << std::endl;


        pcl::toROSMsg(*cloud_ptr.get(),pc2_msg1);


        filename2 = "/home/shabelson/Documents/studio_exps/exp1/" + std::to_string(pcd_index) + ".pcd";
        if (pcl::io::loadPCDFile<PointT> (filename2, *cloud_ptr) == -1) return ;
        norm2 = plane_normal(cloud_ptr);
        std::cout << "norm2 x: " << norm2.x << std::endl;
        std::cout << "norm2 y: " << norm2.y << std::endl;
        std::cout << "norm2 z: " << norm2.z << std::endl;
        quat2.setEulerZYX (norm2.z,norm2.y,norm2.x);
        pcl::toROSMsg(*cloud_ptr.get(),pc2_msg2);

        float angle_radians = cal_angle(norm1, norm2);
        std::cout << "angle is (in radians):" << angle_radians << std::endl;
        if (angle_radians < 0.10f){
            // about 3 degrees
            task_done = 1;

            normal_final.x = float(norm2.x);
            normal_final.y = float(norm2.y);
            normal_final.z = float(norm2.z);
        }


        tf_norm1.setRotation(quat1);
        tf_norm2.setRotation(quat2);
        br.sendTransform(tf::StampedTransform(tf_norm1, ros::Time::now(), fr_parent, fr_child1));
        br.sendTransform(tf::StampedTransform(tf_norm2, ros::Time::now(), fr_parent, fr_child2));
        pc2_msg1.header.frame_id = "/base_link";
        pc2_msg2.header.frame_id = "/base_link";

        pub2.publish(pc2_msg1);
        pub3.publish(pc2_msg2);




    }


    // ROS_INFO("Setuping...");

}


int main (int argc, char **argv)
{
    ros::init (argc, argv, "rotation_dir");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("pcd_save_done", 1 , callback);
    ros::Publisher pub = nh.advertise<geometry_msgs::Vector3> ("plane_normal", 1);
    pub2 = nh.advertise<sensor_msgs::PointCloud2> ("proccessed_ptcloud1", 1);
    pub3 = nh.advertise<sensor_msgs::PointCloud2> ("proccessed_ptcloud2", 1);
    pcl::PointCloud<PointT>::Ptr cloud_ptr (new pcl::PointCloud<PointT>);
    std::string pclName;
    ros::Rate loop_rate(1);

    while (ros::ok())
    {
      pclName = "/home/shabelson/Documents/studio_exps/exp1/" + std::to_string(global_index-1) + ".pcd";
      if (pcl::io::loadPCDFile<PointT> (pclName, *cloud_ptr) != -1)
      {

      pub.publish(normal_final);
      };
        ros::spinOnce();
        loop_rate.sleep();
        if (task_done == 1) {
            loop_rate.sleep();

        }
    }
    return 0;
}


float cal_angle(Normal norm1, Normal norm2)
{
    float angle;
    angle = std::acos(
            std::abs(norm1.x*norm2.x + norm1.y*norm2.y + norm1.z*norm2.z) /
            std::sqrt(norm1.x*norm1.x + norm1.y*norm1.y + norm1.z*norm1.z) /
            std::sqrt(norm2.x*norm2.x + norm2.y*norm2.y + norm2.z*norm2.z)
            );

    return angle;
}



Normal plane_normal(pcl::PointCloud<PointT>::Ptr &cloud)
{
    pcl::PointCloud<PointT>::Ptr cloud_filtered (new pcl::PointCloud<PointT>);
    cloud_filtered = cloud;

    // // segment ground
    pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
    pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
    // Create the segmentation object
    pcl::SACSegmentation<PointT> seg;
    // Optional
    seg.setOptimizeCoefficients (true);
    // Mandatory
    seg.setModelType (pcl::SACMODEL_PLANE);  // plane
    seg.setMethodType (pcl::SAC_RANSAC);
    seg.setDistanceThreshold (0.010);

    seg.setInputCloud (cloud_filtered);
    seg.segment (*inliers, *coefficients);

    pcl::ExtractIndices<PointT> extract;
    extract.setInputCloud(cloud_filtered);
    extract.setIndices(inliers);

///######################################
///######################################
///######################################
    extract.setNegative(false);
    extract.filter(*cloud_filtered);
///######################################
///######################################
///######################################

  //****************************************************//
    // Create the filtering object - StatisticalOutlierRemoval filter
    pcl::StatisticalOutlierRemoval<PointT> sor;
    sor.setInputCloud (cloud_filtered);
    sor.setMeanK (50);
    sor.setStddevMulThresh (1.0);
    sor.filter (*cloud_filtered);

  //****************************************************//

///######################################
///#### get normal of the plane
///######################################
    pcl::PointCloud<pcl::Normal>::Ptr normals(new pcl::PointCloud<pcl::Normal>);
    pcl::NormalEstimation<PointT,pcl::Normal> normalEstimation;
    normalEstimation.setInputCloud(cloud_filtered);

    normalEstimation.setRadiusSearch(0.05);

    pcl::search::KdTree<PointT>::Ptr kdtree(new pcl::search::KdTree<PointT>);
    normalEstimation.setSearchMethod(kdtree);

    normalEstimation.compute(*normals);

    long double mean_normal_x = 0;
    long double mean_normal_y = 0;
    long double mean_normal_z = 0;
    unsigned int normal_cnt = 0;

    for(unsigned int ix=0;ix < normals->points.size(); ix++)
    {  if(std::isnan(normals->points[ix].normal_x)||
          std::isnan(normals->points[ix].normal_y)||
          std::isnan(normals->points[ix].normal_z))
        {
            continue;
            // std::cout<<"no ix=" << ix << std::endl;
        }
        else
        {
            normal_cnt ++ ;
            // std::cout<<"yes" << std::endl;
            mean_normal_x += normals->points[ix].normal_x;
            mean_normal_y += normals->points[ix].normal_y;
            mean_normal_z += normals->points[ix].normal_z;
        }
    }
    mean_normal_x /= normal_cnt;
    mean_normal_y /= normal_cnt;
    mean_normal_z /= normal_cnt;

    // std::cout << "x: " << mean_normal_x << std::endl;
    // std::cout << "y: " << mean_normal_y << std::endl;
    // std::cout << "z: " << mean_normal_z << std::endl;
    Normal normal_of_plane;
    normal_of_plane.x = mean_normal_x;
    normal_of_plane.y = mean_normal_y;
    normal_of_plane.z = mean_normal_z;

///######################################
///######################################
///######################################

    return normal_of_plane;

}
