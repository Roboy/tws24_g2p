// Generated by gencpp from file bench_pkg/MoveRequest.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_MOVEREQUEST_H
#define BENCH_PKG_MESSAGE_MOVEREQUEST_H


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
struct MoveRequest_
{
  typedef MoveRequest_<ContainerAllocator> Type;

  MoveRequest_()
    : current_angle(0.0)
    , current_angular_velocity(0.0)
    , current_angular_acceleration(0.0)
    , desired_angle(0.0)
    , desired_angular_velocity(0.0)
    , desired_angular_acceleration(0.0)  {
    }
  MoveRequest_(const ContainerAllocator& _alloc)
    : current_angle(0.0)
    , current_angular_velocity(0.0)
    , current_angular_acceleration(0.0)
    , desired_angle(0.0)
    , desired_angular_velocity(0.0)
    , desired_angular_acceleration(0.0)  {
  (void)_alloc;
    }



   typedef float _current_angle_type;
  _current_angle_type current_angle;

   typedef float _current_angular_velocity_type;
  _current_angular_velocity_type current_angular_velocity;

   typedef float _current_angular_acceleration_type;
  _current_angular_acceleration_type current_angular_acceleration;

   typedef float _desired_angle_type;
  _desired_angle_type desired_angle;

   typedef float _desired_angular_velocity_type;
  _desired_angular_velocity_type desired_angular_velocity;

   typedef float _desired_angular_acceleration_type;
  _desired_angular_acceleration_type desired_angular_acceleration;





  typedef boost::shared_ptr< ::bench_pkg::MoveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::MoveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveRequest_

typedef ::bench_pkg::MoveRequest_<std::allocator<void> > MoveRequest;

typedef boost::shared_ptr< ::bench_pkg::MoveRequest > MoveRequestPtr;
typedef boost::shared_ptr< ::bench_pkg::MoveRequest const> MoveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::MoveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::MoveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bench_pkg::MoveRequest_<ContainerAllocator1> & lhs, const ::bench_pkg::MoveRequest_<ContainerAllocator2> & rhs)
{
  return lhs.current_angle == rhs.current_angle &&
    lhs.current_angular_velocity == rhs.current_angular_velocity &&
    lhs.current_angular_acceleration == rhs.current_angular_acceleration &&
    lhs.desired_angle == rhs.desired_angle &&
    lhs.desired_angular_velocity == rhs.desired_angular_velocity &&
    lhs.desired_angular_acceleration == rhs.desired_angular_acceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bench_pkg::MoveRequest_<ContainerAllocator1> & lhs, const ::bench_pkg::MoveRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::MoveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::MoveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::MoveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::MoveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::MoveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::MoveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e55d874e75aac4ba40fb09ef74ce6514";
  }

  static const char* value(const ::bench_pkg::MoveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe55d874e75aac4baULL;
  static const uint64_t static_value2 = 0x40fb09ef74ce6514ULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/MoveRequest";
  }

  static const char* value(const ::bench_pkg::MoveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::MoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 current_angle\n"
"float32 current_angular_velocity\n"
"float32 current_angular_acceleration\n"
"float32 desired_angle\n"
"float32 desired_angular_velocity\n"
"float32 desired_angular_acceleration\n"
;
  }

  static const char* value(const ::bench_pkg::MoveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::MoveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_angle);
      stream.next(m.current_angular_velocity);
      stream.next(m.current_angular_acceleration);
      stream.next(m.desired_angle);
      stream.next(m.desired_angular_velocity);
      stream.next(m.desired_angular_acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::MoveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bench_pkg::MoveRequest_<ContainerAllocator>& v)
  {
    s << indent << "current_angle: ";
    Printer<float>::stream(s, indent + "  ", v.current_angle);
    s << indent << "current_angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.current_angular_velocity);
    s << indent << "current_angular_acceleration: ";
    Printer<float>::stream(s, indent + "  ", v.current_angular_acceleration);
    s << indent << "desired_angle: ";
    Printer<float>::stream(s, indent + "  ", v.desired_angle);
    s << indent << "desired_angular_velocity: ";
    Printer<float>::stream(s, indent + "  ", v.desired_angular_velocity);
    s << indent << "desired_angular_acceleration: ";
    Printer<float>::stream(s, indent + "  ", v.desired_angular_acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_MOVEREQUEST_H
