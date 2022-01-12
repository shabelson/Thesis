import rospy
from pcl_msgs.msg import pcl_msgs
from sensor_msgs.msg import PointCloud2,PointCloud

import sensor_msgs.msg as sm
import tf2_py
import tf2_msgs.msg
import roslib
import tf
import pcl_ros
import numpy as np







if __name__ =="__main__":
    rospy.init_node("pcl_rotator_py")
    pub = rospy.Publisher("pcl_rot",PointCloud2,queue_size=10)
    ros_time = rospy.Time()

    listener = tf.TransformListener()
    


    
    while not rospy.is_shutdown():
        pcl_topic = "/pcl_process"
        msg = sm.sensor_msgs.msg.PointCloud2()
        msg.header.frame_id = "model_base"
        pts  = rospy.wait_for_message(pcl_topic,PointCloud2)
        tf_m = listener.lookupTransform("base_link","model_base",rospy.Time(0))
        pc = np.asarray(pts.data)
        points=np.zeros((pc.shape[0],3))
        points[:,0]=pc['x']
        points[:,1]=pc['y']
        points[:,2]=pc['z']
        pcl_ros.PointCloud(np.array(points,dtype=np.float32))
        #pts = listener.transformPointCloud("/model_base",pts)
        #pub.publish()
        
       
        
        