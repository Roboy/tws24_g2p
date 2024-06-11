// Generated by gencpp from file roboy_middleware_msgs/InverseKinematicsMultipleFramesResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_INVERSEKINEMATICSMULTIPLEFRAMESRESPONSE_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_INVERSEKINEMATICSMULTIPLEFRAMESRESPONSE_H


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
struct InverseKinematicsMultipleFramesResponse_
{
  typedef InverseKinematicsMultipleFramesResponse_<ContainerAllocator> Type;

  InverseKinematicsMultipleFramesResponse_()
    : joint_names()
    , angles()  {
    }
  InverseKinematicsMultipleFramesResponse_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , angles(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _angles_type;
  _angles_type angles;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct InverseKinematicsMultipleFramesResponse_

typedef ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<std::allocator<void> > InverseKinematicsMultipleFramesResponse;

typedef boost::shared_ptr< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse > InverseKinematicsMultipleFramesResponsePtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse const> InverseKinematicsMultipleFramesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.joint_names == rhs.joint_names &&
    lhs.angles == rhs.angles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61cfdb390f37de2c6aab6dc9fef7fa33";
  }

  static const char* value(const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61cfdb390f37de2cULL;
  static const uint64_t static_value2 = 0x6aab6dc9fef7fa33ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/InverseKinematicsMultipleFramesResponse";
  }

  static const char* value(const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# joint names\n"
"string[] joint_names\n"
"# these are the resulting joint angles from inverse kinematics in radians\n"
"float64[] angles\n"
"\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.angles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct InverseKinematicsMultipleFramesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "angles[]" << std::endl;
    for (size_t i = 0; i < v.angles.size(); ++i)
    {
      s << indent << "  angles[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.angles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_INVERSEKINEMATICSMULTIPLEFRAMESRESPONSE_H
