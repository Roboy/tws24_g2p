// Generated by gencpp from file roboy_middleware_msgs/ControlModeRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODEREQUEST_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_middleware_msgs
{
template <class ContainerAllocator>
struct ControlModeRequest_
{
  typedef ControlModeRequest_<ContainerAllocator> Type;

  ControlModeRequest_()
    : control_mode(0)
    , set_points()
    , global_id()  {
    }
  ControlModeRequest_(const ContainerAllocator& _alloc)
    : control_mode(0)
    , set_points(_alloc)
    , global_id(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _control_mode_type;
  _control_mode_type control_mode;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _set_points_type;
  _set_points_type set_points;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _global_id_type;
  _global_id_type global_id;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ControlModeRequest_

typedef ::roboy_middleware_msgs::ControlModeRequest_<std::allocator<void> > ControlModeRequest;

typedef boost::shared_ptr< ::roboy_middleware_msgs::ControlModeRequest > ControlModeRequestPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::ControlModeRequest const> ControlModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.control_mode == rhs.control_mode &&
    lhs.set_points == rhs.set_points &&
    lhs.global_id == rhs.global_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d6e1c54934446851505150d7d89f00c1";
  }

  static const char* value(const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd6e1c54934446851ULL;
  static const uint64_t static_value2 = 0x505150d7d89f00c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/ControlModeRequest";
  }

  static const char* value(const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 control_mode # 0: position, 1: velocity, 2: displacement\n"
"float32[] set_points\n"
"# if left empty, all motors will be changed to the requested control mode\n"
"uint8[] global_id\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.control_mode);
      stream.next(m.set_points);
      stream.next(m.global_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::ControlModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "control_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.control_mode);
    s << indent << "set_points[]" << std::endl;
    for (size_t i = 0; i < v.set_points.size(); ++i)
    {
      s << indent << "  set_points[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.set_points[i]);
    }
    s << indent << "global_id[]" << std::endl;
    for (size_t i = 0; i < v.global_id.size(); ++i)
    {
      s << indent << "  global_id[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.global_id[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODEREQUEST_H
