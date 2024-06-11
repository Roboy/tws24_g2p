// Generated by gencpp from file roboy_control_msgs/GetLinkPoseRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSEREQUEST_H
#define ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_control_msgs
{
template <class ContainerAllocator>
struct GetLinkPoseRequest_
{
  typedef GetLinkPoseRequest_<ContainerAllocator> Type;

  GetLinkPoseRequest_()
    : link_name()  {
    }
  GetLinkPoseRequest_(const ContainerAllocator& _alloc)
    : link_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _link_name_type;
  _link_name_type link_name;





  typedef boost::shared_ptr< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetLinkPoseRequest_

typedef ::roboy_control_msgs::GetLinkPoseRequest_<std::allocator<void> > GetLinkPoseRequest;

typedef boost::shared_ptr< ::roboy_control_msgs::GetLinkPoseRequest > GetLinkPoseRequestPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::GetLinkPoseRequest const> GetLinkPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.link_name == rhs.link_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d82d60381f1b66a30f2157f60884345";
  }

  static const char* value(const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d82d60381f1b66aULL;
  static const uint64_t static_value2 = 0x30f2157f60884345ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/GetLinkPoseRequest";
  }

  static const char* value(const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string link_name\n"
;
  }

  static const char* value(const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.link_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetLinkPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::GetLinkPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "link_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.link_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSEREQUEST_H