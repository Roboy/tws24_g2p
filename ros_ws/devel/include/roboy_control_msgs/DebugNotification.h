// Generated by gencpp from file roboy_control_msgs/DebugNotification.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_DEBUGNOTIFICATION_H
#define ROBOY_CONTROL_MSGS_MESSAGE_DEBUGNOTIFICATION_H


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
struct DebugNotification_
{
  typedef DebugNotification_<ContainerAllocator> Type;

  DebugNotification_()
    : code(0)
    , object()
    , msg()
    , extra()
    , validity_duration(0)  {
    }
  DebugNotification_(const ContainerAllocator& _alloc)
    : code(0)
    , object(_alloc)
    , msg(_alloc)
    , extra(_alloc)
    , validity_duration(0)  {
  (void)_alloc;
    }



   typedef int32_t _code_type;
  _code_type code;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _object_type;
  _object_type object;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _msg_type;
  _msg_type msg;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _extra_type;
  _extra_type extra;

   typedef int32_t _validity_duration_type;
  _validity_duration_type validity_duration;





  typedef boost::shared_ptr< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> const> ConstPtr;

}; // struct DebugNotification_

typedef ::roboy_control_msgs::DebugNotification_<std::allocator<void> > DebugNotification;

typedef boost::shared_ptr< ::roboy_control_msgs::DebugNotification > DebugNotificationPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::DebugNotification const> DebugNotificationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::DebugNotification_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::DebugNotification_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::DebugNotification_<ContainerAllocator2> & rhs)
{
  return lhs.code == rhs.code &&
    lhs.object == rhs.object &&
    lhs.msg == rhs.msg &&
    lhs.extra == rhs.extra &&
    lhs.validity_duration == rhs.validity_duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::DebugNotification_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::DebugNotification_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f9b10763b06033e440cfab3c2b143fa6";
  }

  static const char* value(const ::roboy_control_msgs::DebugNotification_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf9b10763b06033e4ULL;
  static const uint64_t static_value2 = 0x40cfab3c2b143fa6ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/DebugNotification";
  }

  static const char* value(const ::roboy_control_msgs::DebugNotification_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 code\n"
"string object\n"
"string msg\n"
"string extra\n"
"int32 validity_duration\n"
;
  }

  static const char* value(const ::roboy_control_msgs::DebugNotification_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.code);
      stream.next(m.object);
      stream.next(m.msg);
      stream.next(m.extra);
      stream.next(m.validity_duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DebugNotification_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::DebugNotification_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::DebugNotification_<ContainerAllocator>& v)
  {
    s << indent << "code: ";
    Printer<int32_t>::stream(s, indent + "  ", v.code);
    s << indent << "object: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.object);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.msg);
    s << indent << "extra: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.extra);
    s << indent << "validity_duration: ";
    Printer<int32_t>::stream(s, indent + "  ", v.validity_duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_DEBUGNOTIFICATION_H
