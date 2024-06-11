// Generated by gencpp from file bench_pkg/SetMotorCommandResponse.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_SETMOTORCOMMANDRESPONSE_H
#define BENCH_PKG_MESSAGE_SETMOTORCOMMANDRESPONSE_H


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
struct SetMotorCommandResponse_
{
  typedef SetMotorCommandResponse_<ContainerAllocator> Type;

  SetMotorCommandResponse_()
    : joint_angle(0.0)  {
    }
  SetMotorCommandResponse_(const ContainerAllocator& _alloc)
    : joint_angle(0.0)  {
  (void)_alloc;
    }



   typedef float _joint_angle_type;
  _joint_angle_type joint_angle;





  typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetMotorCommandResponse_

typedef ::bench_pkg::SetMotorCommandResponse_<std::allocator<void> > SetMotorCommandResponse;

typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandResponse > SetMotorCommandResponsePtr;
typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandResponse const> SetMotorCommandResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator1> & lhs, const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator2> & rhs)
{
  return lhs.joint_angle == rhs.joint_angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator1> & lhs, const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f64e29b37471e6fbeac81718e0db6639";
  }

  static const char* value(const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf64e29b37471e6fbULL;
  static const uint64_t static_value2 = 0xeac81718e0db6639ULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/SetMotorCommandResponse";
  }

  static const char* value(const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 joint_angle\n"
;
  }

  static const char* value(const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMotorCommandResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bench_pkg::SetMotorCommandResponse_<ContainerAllocator>& v)
  {
    s << indent << "joint_angle: ";
    Printer<float>::stream(s, indent + "  ", v.joint_angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_SETMOTORCOMMANDRESPONSE_H
