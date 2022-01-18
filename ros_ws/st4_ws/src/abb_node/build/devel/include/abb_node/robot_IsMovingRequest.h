// Generated by gencpp from file abb_node/robot_IsMovingRequest.msg
// DO NOT EDIT!


#ifndef ABB_NODE_MESSAGE_ROBOT_ISMOVINGREQUEST_H
#define ABB_NODE_MESSAGE_ROBOT_ISMOVINGREQUEST_H


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
struct robot_IsMovingRequest_
{
  typedef robot_IsMovingRequest_<ContainerAllocator> Type;

  robot_IsMovingRequest_()
    {
    }
  robot_IsMovingRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct robot_IsMovingRequest_

typedef ::abb_node::robot_IsMovingRequest_<std::allocator<void> > robot_IsMovingRequest;

typedef boost::shared_ptr< ::abb_node::robot_IsMovingRequest > robot_IsMovingRequestPtr;
typedef boost::shared_ptr< ::abb_node::robot_IsMovingRequest const> robot_IsMovingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abb_node::robot_IsMovingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace abb_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::abb_node::robot_IsMovingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abb_node/robot_IsMovingRequest";
  }

  static const char* value(const ::abb_node::robot_IsMovingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Service to get whether robot is moving or not\n"
"\n"
;
  }

  static const char* value(const ::abb_node::robot_IsMovingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_IsMovingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abb_node::robot_IsMovingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::abb_node::robot_IsMovingRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ABB_NODE_MESSAGE_ROBOT_ISMOVINGREQUEST_H
