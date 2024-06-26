// Generated by gencpp from file roboy_middleware_msgs/MotorStatus.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_MOTORSTATUS_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_MOTORSTATUS_H


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
struct MotorStatus_
{
  typedef MotorStatus_<ContainerAllocator> Type;

  MotorStatus_()
    : id(0)
    , power_sense(false)
    , pwm_ref()
    , position()
    , velocity()
    , displacement()
    , current()
    , angle()  {
    }
  MotorStatus_(const ContainerAllocator& _alloc)
    : id(0)
    , power_sense(false)
    , pwm_ref(_alloc)
    , position(_alloc)
    , velocity(_alloc)
    , displacement(_alloc)
    , current(_alloc)
    , angle(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _power_sense_type;
  _power_sense_type power_sense;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _pwm_ref_type;
  _pwm_ref_type pwm_ref;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _position_type;
  _position_type position;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _velocity_type;
  _velocity_type velocity;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _displacement_type;
  _displacement_type displacement;

   typedef std::vector<int16_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int16_t>> _current_type;
  _current_type current;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> const> ConstPtr;

}; // struct MotorStatus_

typedef ::roboy_middleware_msgs::MotorStatus_<std::allocator<void> > MotorStatus;

typedef boost::shared_ptr< ::roboy_middleware_msgs::MotorStatus > MotorStatusPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::MotorStatus const> MotorStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.power_sense == rhs.power_sense &&
    lhs.pwm_ref == rhs.pwm_ref &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.displacement == rhs.displacement &&
    lhs.current == rhs.current &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff901b4c758403a6897b5a0d94561c04";
  }

  static const char* value(const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff901b4c758403a6ULL;
  static const uint64_t static_value2 = 0x897b5a0d94561c04ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/MotorStatus";
  }

  static const char* value(const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n"
"bool power_sense\n"
"int32[] pwm_ref\n"
"int32[] position\n"
"int32[] velocity\n"
"int32[] displacement\n"
"int16[] current\n"
"# only available for myoBricks\n"
"int32[] angle\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.power_sense);
      stream.next(m.pwm_ref);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.displacement);
      stream.next(m.current);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::MotorStatus_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "power_sense: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.power_sense);
    s << indent << "pwm_ref[]" << std::endl;
    for (size_t i = 0; i < v.pwm_ref.size(); ++i)
    {
      s << indent << "  pwm_ref[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.pwm_ref[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "displacement[]" << std::endl;
    for (size_t i = 0; i < v.displacement.size(); ++i)
    {
      s << indent << "  displacement[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.displacement[i]);
    }
    s << indent << "current[]" << std::endl;
    for (size_t i = 0; i < v.current.size(); ++i)
    {
      s << indent << "  current[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.current[i]);
    }
    s << indent << "angle[]" << std::endl;
    for (size_t i = 0; i < v.angle.size(); ++i)
    {
      s << indent << "  angle[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.angle[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_MOTORSTATUS_H
