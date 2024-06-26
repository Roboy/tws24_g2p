// Generated by gencpp from file roboy_middleware_msgs/JointStatus.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_JOINTSTATUS_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_JOINTSTATUS_H


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
struct JointStatus_
{
  typedef JointStatus_<ContainerAllocator> Type;

  JointStatus_()
    : absAngles()
    , relAngles()  {
    }
  JointStatus_(const ContainerAllocator& _alloc)
    : absAngles(_alloc)
    , relAngles(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _absAngles_type;
  _absAngles_type absAngles;

   typedef std::vector<uint32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint32_t>> _relAngles_type;
  _relAngles_type relAngles;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> const> ConstPtr;

}; // struct JointStatus_

typedef ::roboy_middleware_msgs::JointStatus_<std::allocator<void> > JointStatus;

typedef boost::shared_ptr< ::roboy_middleware_msgs::JointStatus > JointStatusPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::JointStatus const> JointStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator2> & rhs)
{
  return lhs.absAngles == rhs.absAngles &&
    lhs.relAngles == rhs.relAngles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4933cd49b716032e0de2cf902e8150fa";
  }

  static const char* value(const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4933cd49b716032eULL;
  static const uint64_t static_value2 = 0x0de2cf902e8150faULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/JointStatus";
  }

  static const char* value(const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32[] absAngles\n"
"uint32[] relAngles\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.absAngles);
      stream.next(m.relAngles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::JointStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::JointStatus_<ContainerAllocator>& v)
  {
    s << indent << "absAngles[]" << std::endl;
    for (size_t i = 0; i < v.absAngles.size(); ++i)
    {
      s << indent << "  absAngles[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.absAngles[i]);
    }
    s << indent << "relAngles[]" << std::endl;
    for (size_t i = 0; i < v.relAngles.size(); ++i)
    {
      s << indent << "  relAngles[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.relAngles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_JOINTSTATUS_H
