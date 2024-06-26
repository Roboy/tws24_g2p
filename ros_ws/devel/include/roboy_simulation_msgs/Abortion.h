// Generated by gencpp from file roboy_simulation_msgs/Abortion.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_ABORTION_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_ABORTION_H


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
struct Abortion_
{
  typedef Abortion_<ContainerAllocator> Type;

  Abortion_()
    : roboy_id(0)
    , reason(0)  {
    }
  Abortion_(const ContainerAllocator& _alloc)
    : roboy_id(0)
    , reason(0)  {
  (void)_alloc;
    }



   typedef int32_t _roboy_id_type;
  _roboy_id_type roboy_id;

   typedef int32_t _reason_type;
  _reason_type reason;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> const> ConstPtr;

}; // struct Abortion_

typedef ::roboy_simulation_msgs::Abortion_<std::allocator<void> > Abortion;

typedef boost::shared_ptr< ::roboy_simulation_msgs::Abortion > AbortionPtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::Abortion const> AbortionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::Abortion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::Abortion_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::Abortion_<ContainerAllocator2> & rhs)
{
  return lhs.roboy_id == rhs.roboy_id &&
    lhs.reason == rhs.reason;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::Abortion_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::Abortion_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcfddf20469a5c8a1cd78f789c34e8e0";
  }

  static const char* value(const ::roboy_simulation_msgs::Abortion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfcfddf20469a5c8aULL;
  static const uint64_t static_value2 = 0x1cd78f789c34e8e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/Abortion";
  }

  static const char* value(const ::roboy_simulation_msgs::Abortion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 roboy_id\n"
"int32 reason\n"
;
  }

  static const char* value(const ::roboy_simulation_msgs::Abortion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roboy_id);
      stream.next(m.reason);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Abortion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::Abortion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::Abortion_<ContainerAllocator>& v)
  {
    s << indent << "roboy_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.roboy_id);
    s << indent << "reason: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reason);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_ABORTION_H
