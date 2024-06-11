// Generated by gencpp from file roboy_middleware_msgs/RoboyState.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_ROBOYSTATE_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_ROBOYSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace roboy_middleware_msgs
{
template <class ContainerAllocator>
struct RoboyState_
{
  typedef RoboyState_<ContainerAllocator> Type;

  RoboyState_()
    : header()
    , name()
    , power_sense()
    , power_5V_enabled(false)
    , power_12V_enabled(false)
    , current()  {
    }
  RoboyState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , power_sense(_alloc)
    , power_5V_enabled(false)
    , power_12V_enabled(false)
    , current(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _power_sense_type;
  _power_sense_type power_sense;

   typedef uint8_t _power_5V_enabled_type;
  _power_5V_enabled_type power_5V_enabled;

   typedef uint8_t _power_12V_enabled_type;
  _power_12V_enabled_type power_12V_enabled;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> const> ConstPtr;

}; // struct RoboyState_

typedef ::roboy_middleware_msgs::RoboyState_<std::allocator<void> > RoboyState;

typedef boost::shared_ptr< ::roboy_middleware_msgs::RoboyState > RoboyStatePtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::RoboyState const> RoboyStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.power_sense == rhs.power_sense &&
    lhs.power_5V_enabled == rhs.power_5V_enabled &&
    lhs.power_12V_enabled == rhs.power_12V_enabled &&
    lhs.current == rhs.current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b194c9036326e7ae508f1bc6cc2fdf96";
  }

  static const char* value(const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb194c9036326e7aeULL;
  static const uint64_t static_value2 = 0x508f1bc6cc2fdf96ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/RoboyState";
  }

  static const char* value(const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string name\n"
"bool[] power_sense\n"
"bool power_5V_enabled\n"
"bool power_12V_enabled\n"
"float32[] current\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.power_sense);
      stream.next(m.power_5V_enabled);
      stream.next(m.power_12V_enabled);
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoboyState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::RoboyState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::RoboyState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "power_sense[]" << std::endl;
    for (size_t i = 0; i < v.power_sense.size(); ++i)
    {
      s << indent << "  power_sense[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.power_sense[i]);
    }
    s << indent << "power_5V_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_5V_enabled);
    s << indent << "power_12V_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_12V_enabled);
    s << indent << "current[]" << std::endl;
    for (size_t i = 0; i < v.current.size(); ++i)
    {
      s << indent << "  current[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.current[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_ROBOYSTATE_H