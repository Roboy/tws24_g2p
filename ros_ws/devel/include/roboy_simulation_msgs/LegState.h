// Generated by gencpp from file roboy_simulation_msgs/LegState.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_LEGSTATE_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_LEGSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_simulation_msgs
{
template <class ContainerAllocator>
struct LegState_
{
  typedef LegState_<ContainerAllocator> Type;

  LegState_()
    : roboy_id(0)
    , leg(0)
    , state(0)  {
    }
  LegState_(const ContainerAllocator& _alloc)
    : roboy_id(0)
    , leg(0)
    , state(0)  {
  (void)_alloc;
    }



   typedef int32_t _roboy_id_type;
  _roboy_id_type roboy_id;

   typedef int32_t _leg_type;
  _leg_type leg;

   typedef int32_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::LegState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::LegState_<ContainerAllocator> const> ConstPtr;

}; // struct LegState_

typedef ::roboy_simulation_msgs::LegState_<std::allocator<void> > LegState;

typedef boost::shared_ptr< ::roboy_simulation_msgs::LegState > LegStatePtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::LegState const> LegStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::LegState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::LegState_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::LegState_<ContainerAllocator2> & rhs)
{
  return lhs.roboy_id == rhs.roboy_id &&
    lhs.leg == rhs.leg &&
    lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::LegState_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::LegState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::LegState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::LegState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::LegState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d5ffff060d22b8076e236b721cca654";
  }

  static const char* value(const ::roboy_simulation_msgs::LegState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d5ffff060d22b80ULL;
  static const uint64_t static_value2 = 0x76e236b721cca654ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/LegState";
  }

  static const char* value(const ::roboy_simulation_msgs::LegState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 roboy_id\n"
"int32 leg\n"
"int32 state\n"
;
  }

  static const char* value(const ::roboy_simulation_msgs::LegState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roboy_id);
      stream.next(m.leg);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LegState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::LegState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::LegState_<ContainerAllocator>& v)
  {
    s << indent << "roboy_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.roboy_id);
    s << indent << "leg: ";
    Printer<int32_t>::stream(s, indent + "  ", v.leg);
    s << indent << "state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_LEGSTATE_H