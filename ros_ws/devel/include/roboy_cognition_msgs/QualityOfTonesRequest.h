// Generated by gencpp from file roboy_cognition_msgs/QualityOfTonesRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONESREQUEST_H
#define ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONESREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_cognition_msgs
{
template <class ContainerAllocator>
struct QualityOfTonesRequest_
{
  typedef QualityOfTonesRequest_<ContainerAllocator> Type;

  QualityOfTonesRequest_()
    : time_in_milliseconds(0.0)
    , major_only(false)  {
    }
  QualityOfTonesRequest_(const ContainerAllocator& _alloc)
    : time_in_milliseconds(0.0)
    , major_only(false)  {
  (void)_alloc;
    }



   typedef float _time_in_milliseconds_type;
  _time_in_milliseconds_type time_in_milliseconds;

   typedef uint8_t _major_only_type;
  _major_only_type major_only;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct QualityOfTonesRequest_

typedef ::roboy_cognition_msgs::QualityOfTonesRequest_<std::allocator<void> > QualityOfTonesRequest;

typedef boost::shared_ptr< ::roboy_cognition_msgs::QualityOfTonesRequest > QualityOfTonesRequestPtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::QualityOfTonesRequest const> QualityOfTonesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.time_in_milliseconds == rhs.time_in_milliseconds &&
    lhs.major_only == rhs.major_only;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5428a71035998cbb0ba75d33cb81c7ab";
  }

  static const char* value(const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5428a71035998cbbULL;
  static const uint64_t static_value2 = 0x0ba75d33cb81c7abULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/QualityOfTonesRequest";
  }

  static const char* value(const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 time_in_milliseconds\n"
"bool major_only\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_in_milliseconds);
      stream.next(m.major_only);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QualityOfTonesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::QualityOfTonesRequest_<ContainerAllocator>& v)
  {
    s << indent << "time_in_milliseconds: ";
    Printer<float>::stream(s, indent + "  ", v.time_in_milliseconds);
    s << indent << "major_only: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.major_only);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONESREQUEST_H
