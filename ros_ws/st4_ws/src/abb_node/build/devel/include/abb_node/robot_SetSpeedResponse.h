// Generated by gencpp from file abb_node/robot_SetSpeedResponse.msg
// DO NOT EDIT!


#ifndef ABB_NODE_MESSAGE_ROBOT_SETSPEEDRESPONSE_H
#define ABB_NODE_MESSAGE_ROBOT_SETSPEEDRESPONSE_H


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
struct robot_SetSpeedResponse_
{
  typedef robot_SetSpeedResponse_<ContainerAllocator> Type;

  robot_SetSpeedResponse_()
    : ret(0)
    , msg()  {
    }
  robot_SetSpeedResponse_(const ContainerAllocator& _alloc)
    : ret(0)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _ret_type;
  _ret_type ret;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> const> ConstPtr;

}; // struct robot_SetSpeedResponse_

typedef ::abb_node::robot_SetSpeedResponse_<std::allocator<void> > robot_SetSpeedResponse;

typedef boost::shared_ptr< ::abb_node::robot_SetSpeedResponse > robot_SetSpeedResponsePtr;
typedef boost::shared_ptr< ::abb_node::robot_SetSpeedResponse const> robot_SetSpeedResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator1> & lhs, const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ret == rhs.ret &&
    lhs.msg == rhs.msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator1> & lhs, const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace abb_node

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e32786be6359fbbb6259aee4f579d10";
  }

  static const char* value(const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e32786be6359fbbULL;
  static const uint64_t static_value2 = 0xb6259aee4f579d10ULL;
};

template<class ContainerAllocator>
struct DataType< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "abb_node/robot_SetSpeedResponse";
  }

  static const char* value(const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 ret\n"
"string msg\n"
"\n"
;
  }

  static const char* value(const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ret);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_SetSpeedResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::abb_node::robot_SetSpeedResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::abb_node::robot_SetSpeedResponse_<ContainerAllocator>& v)
  {
    s << indent << "ret: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ret);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ABB_NODE_MESSAGE_ROBOT_SETSPEEDRESPONSE_H
