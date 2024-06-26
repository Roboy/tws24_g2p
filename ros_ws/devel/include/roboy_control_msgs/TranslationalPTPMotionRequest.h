// Generated by gencpp from file roboy_control_msgs/TranslationalPTPMotionRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_TRANSLATIONALPTPMOTIONREQUEST_H
#define ROBOY_CONTROL_MSGS_MESSAGE_TRANSLATIONALPTPMOTIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace roboy_control_msgs
{
template <class ContainerAllocator>
struct TranslationalPTPMotionRequest_
{
  typedef TranslationalPTPMotionRequest_<ContainerAllocator> Type;

  TranslationalPTPMotionRequest_()
    : start_point()
    , end_point()  {
    }
  TranslationalPTPMotionRequest_(const ContainerAllocator& _alloc)
    : start_point(_alloc)
    , end_point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _start_point_type;
  _start_point_type start_point;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _end_point_type;
  _end_point_type end_point;





  typedef boost::shared_ptr< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TranslationalPTPMotionRequest_

typedef ::roboy_control_msgs::TranslationalPTPMotionRequest_<std::allocator<void> > TranslationalPTPMotionRequest;

typedef boost::shared_ptr< ::roboy_control_msgs::TranslationalPTPMotionRequest > TranslationalPTPMotionRequestPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::TranslationalPTPMotionRequest const> TranslationalPTPMotionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start_point == rhs.start_point &&
    lhs.end_point == rhs.end_point;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0125c553546d7123dccaeab992a9e29e";
  }

  static const char* value(const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0125c553546d7123ULL;
  static const uint64_t static_value2 = 0xdccaeab992a9e29eULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/TranslationalPTPMotionRequest";
  }

  static const char* value(const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point start_point\n"
"geometry_msgs/Point end_point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_point);
      stream.next(m.end_point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TranslationalPTPMotionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::TranslationalPTPMotionRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.start_point);
    s << indent << "end_point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.end_point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_TRANSLATIONALPTPMOTIONREQUEST_H
