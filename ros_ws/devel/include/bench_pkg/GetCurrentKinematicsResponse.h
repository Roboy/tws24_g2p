// Generated by gencpp from file bench_pkg/GetCurrentKinematicsResponse.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSRESPONSE_H
#define BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bench_pkg
{
template <class ContainerAllocator>
struct GetCurrentKinematicsResponse_
{
  typedef GetCurrentKinematicsResponse_<ContainerAllocator> Type;

  GetCurrentKinematicsResponse_()
    : current_angle(0.0)
    , current_angular_velocity(0.0)
    , current_angular_acceleration(0.0)  {
    }
  GetCurrentKinematicsResponse_(const ContainerAllocator& _alloc)
    : current_angle(0.0)
    , current_angular_velocity(0.0)
    , current_angular_acceleration(0.0)  {
  (void)_alloc;
    }



   typedef float _current_angle_type;
  _current_angle_type current_angle;

   typedef float _current_angular_velocity_type;
  _current_angular_velocity_type current_angular_velocity;

   typedef float _current_angular_acceleration_type;
  _current_angular_acceleration_type current_angular_acceleration;





  typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetCurrentKinematicsResponse_

typedef ::bench_pkg::GetCurrentKinematicsResponse_<std::allocator<void> > GetCurrentKinematicsResponse;

typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsResponse > GetCurrentKinematicsResponsePtr;
typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsResponse const> GetCurrentKinematicsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator1> & lhs, const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current_angle == rhs.current_angle &&
    lhs.current_angular_velocity == rhs.current_angular_velocity &&
    lhs.current_angular_acceleration == rhs.current_angular_acceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator1> & lhs, const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94213a82b2b3ecbefd3ad0c853a1bfcf";
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94213a82b2b3ecbeULL;
  static const uint64_t static_value2 = 0xfd3ad0c853a1bfcfULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/GetCurrentKinematicsResponse";
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 current_angle\n"
"float32 current_angular_velocity\n"
"float32 current_angular_acceleration\n"
;
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_angle);
      stream.next(m.current_angular_velocity);
      stream.next(m.current_angular_acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCurrentKinematicsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bench_pkg::GetCurrentKinematicsResponse_<ContainerAllocator>& v)
  {
    s << indent << "current_angle: ";
    Printer<float>::stream(s, indent + "  ", v.current_angle);
    s << indent << "current_angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.current_angular_velocity);
    s << indent << "current_angular_acceleration: ";
    Printer<float>::stream(s, indent + "  ", v.current_angular_acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSRESPONSE_H
