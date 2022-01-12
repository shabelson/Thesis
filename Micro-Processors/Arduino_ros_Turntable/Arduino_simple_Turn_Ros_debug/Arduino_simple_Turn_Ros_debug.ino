#include <ros.h>
#include <ros/time.h>
#include <tf/transform_broadcaster.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Bool.h>
#include <Stepper.h>



ros::NodeHandle  nh;


geometry_msgs::TransformStamped t;
tf::TransformBroadcaster broadcaster;

int stepperCounter = 0;

const int NUMBER_OF_STEPS_PER_REV  = 2048;
const float anglePerStep = 360/2048;

char base_link[] = "/base_link";
char odom[] = "/odom";

Stepper myStepper(NUMBER_OF_STEPS_PER_REV, 8, 9, 10, 11);




void setup()
{

  nh.initNode();
  broadcaster.init(nh);
 
}

void loop()
{ 
nh.loginfo("start step");
    myStepper.step(1);
    stepperCounter++;
    stepperCounter =  stepperCounter % NUMBER_OF_STEPS_PER_REV;
    
  float currentAngle = anglePerStep*stepperCounter;
  t.header.frame_id = odom;
  t.child_frame_id = base_link;
  t.transform.translation.x = 1.0;
  //t.transform.translation.z = 0.03; 
  t.transform.rotation.x = (float)sin(double(currentAngle));
  t.transform.rotation.y = 0.0; 
  t.transform.rotation.z = (float)cos(double(currentAngle)); 
  t.transform.rotation.w = 1.0;  
  t.header.stamp = nh.now();
  
  broadcaster.sendTransform(t);
  nh.spinOnce();
  delay(10);
  
}
