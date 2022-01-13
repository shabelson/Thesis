#include <ros.h>
#include <ros/time.h>
#include <tf/transform_broadcaster.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Bool.h>
#include <Stepper.h>



#include <ros.h>
#include <ros/time.h>
#include <tf/transform_broadcaster.h>



ros::NodeHandle  nh;


bool TFcollected = false;
bool newTf = true;

std_msgs::Bool newTfMsg;
ros::Publisher pub_newTF("Arduino/new_tf",&newTfMsg);

void TFCollectedCallback(const std_msgs::String& TFCollMsg)
{
 TFcollected = true;
}

ros::Subscriber <std_msgs::String> sub_tf("Arduino/TF_grabbed", TFCollectedCallback);

geometry_msgs::TransformStamped t;
tf::TransformBroadcaster broadcaster;

int stepperCounter = 0;

#define NUMBER_OF_STEPS_PER_REV 2048
const float anglePerStep = 360/2048;

char base_link[] = "/base_link";
char odom[] = "/stepper_axis";

Stepper myStepper(NUMBER_OF_STEPS_PER_REV, 8, 9, 10, 11);




inline void SetTFMsg()
{
  float currentAngle = anglePerStep*stepperCounter;
  t.header.frame_id = odom;
  t.child_frame_id = base_link;
  t.transform.translation.x = 1.0;
  t.transform.translation.z = 0.03; 
  t.transform.rotation.x = sin(double(currentAngle));
  t.transform.rotation.y = 0.0; 
  t.transform.rotation.z = cos(double(currentAngle)); 
  t.transform.rotation.w = 1.0;  
  t.header.stamp = nh.now();
}



void setup()
{
  nh.initNode();
  broadcaster.init(nh);
  nh.advertise(pub_newTF);
  nh.subscribe(sub_tf);
}

void loop()
{ 
  if(TFcollected ==true)
  {
    myStepper.step(1);
    stepperCounter++;
    stepperCounter =  stepperCounter % NUMBER_OF_STEPS_PER_REV;
    TFcollected = false;
    newTf = true;
  }

  SetTFMsg();
  broadcaster.sendTransform(t);
  newTfMsg.data = newTf;
  pub_newTF.publish(&newTfMsg);
  newTf  = false;
  nh.spinOnce();
  delay(10);
  
}
