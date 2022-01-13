// Generated by gencpp from file abb_node/robot_SetSpeedRequest.msg
// DO NOT EDIT!


#ifndef ABB_NODE_MESSAGE_ROBOT_SETSPEEDREQUEST_H
#define ABB_NODE_MESSAGE_ROBOT_SETSPEEDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace abb_node
{
template <class ContainerAllocator>
struct robot_SetSpeedRequest_
{
  typedef robot_SetSpeedRequest_<ContainerAllocator> Type;

  robot_SetSpeedRequest_()
    : tcp(0.0)
    , ori(0.0)  {
    }
  robot_SetSpeedRequest_(const ContainerAllocator& _alloc)
    : tcp(0.0)
    , ori(0.0)  {
  (void)_alloc;
    }



   typedef double _tcp_type;
  _tcp_type tcp;

   typedef double _ori_type;
  _ori_type ori;





  typedef boost::shared_ptr< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> const> ConstPtr;

}; // struct robot_SetSpeedRequest_

typedef ::abb_node::robot_SetSpeedRequest_<std::allocator<void> > robot_SetSpeedRequest;

typedef boost::shared_ptr< ::abb_node::robot_SetSpeedRequest > robot_SetSpeedRequestPtr;
typedef boost::shared_ptr< ::abb_node::robot_SetSpeedRequest const> robot_SetSpeedRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator1> & lhs, const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tcp == rhs.tcp &&
    lhs.ori == rhs.ori;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator1> & lhs, const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace abb_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f0ff1193cfb3499a7608d4091f40f93";
  }

  static const char* value(const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f0ff1193cfb3499ULL;
  static const uint64_t static_value2 = 0xa7608d4091f40f93ULL;
};

template<class ContainerAllocator>
struct DataType< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abb_node/robot_SetSpeedRequest";
  }

  static const char* value(const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Service to Set the max Speed of the robot.\n"
"\n"
"float64 tcp  # mm/s\n"
"float64 ori  # deg/s\n"
;
  }

  static const char* value(const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tcp);
      stream.next(m.ori);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_SetSpeedRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abb_node::robot_SetSpeedRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::abb_node::robot_SetSpeedRequest_<ContainerAllocator>& v)
  {
    s << indent << "tcp: ";
    Printer<double>::stream(s, indent + "  ", v.tcp);
    s << indent << "ori: ";
    Printer<double>::stream(s, indent + "  ", v.ori);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ABB_NODE_MESSAGE_ROBOT_SETSPEEDREQUEST_H
