// Generated by gencpp from file roboy_simulation_msgs/ControllerType.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_CONTROLLERTYPE_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_CONTROLLERTYPE_H


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
struct ControllerType_
{
  typedef ControllerType_<ContainerAllocator> Type;

  ControllerType_()
    : joint_name()
    , type(0)  {
    }
  ControllerType_(const ContainerAllocator& _alloc)
    : joint_name(_alloc)
    , type(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _joint_name_type;
  _joint_name_type joint_name;

   typedef int8_t _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerType_

typedef ::roboy_simulation_msgs::ControllerType_<std::allocator<void> > ControllerType;

typedef boost::shared_ptr< ::roboy_simulation_msgs::ControllerType > ControllerTypePtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::ControllerType const> ControllerTypeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator2> & rhs)
{
  return lhs.joint_name == rhs.joint_name &&
    lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75ea1207d0622977ffe04469bf40935f";
  }

  static const char* value(const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75ea1207d0622977ULL;
  static const uint64_t static_value2 = 0xffe04469bf40935fULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/ControllerType";
  }

  static const char* value(const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string joint_name\n"
"int8 type\n"
;
  }

  static const char* value(const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_name);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerType_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::ControllerType_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::ControllerType_<ContainerAllocator>& v)
  {
    s << indent << "joint_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.joint_name);
    s << indent << "type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_CONTROLLERTYPE_H
