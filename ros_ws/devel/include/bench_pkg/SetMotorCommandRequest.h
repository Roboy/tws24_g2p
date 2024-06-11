// Generated by gencpp from file bench_pkg/SetMotorCommandRequest.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_SETMOTORCOMMANDREQUEST_H
#define BENCH_PKG_MESSAGE_SETMOTORCOMMANDREQUEST_H


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
struct SetMotorCommandRequest_
{
  typedef SetMotorCommandRequest_<ContainerAllocator> Type;

  SetMotorCommandRequest_()
    : myobrick_global_ids()
    , pwm_values()  {
    }
  SetMotorCommandRequest_(const ContainerAllocator& _alloc)
    : myobrick_global_ids(_alloc)
    , pwm_values(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _myobrick_global_ids_type;
  _myobrick_global_ids_type myobrick_global_ids;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _pwm_values_type;
  _pwm_values_type pwm_values;





  typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetMotorCommandRequest_

typedef ::bench_pkg::SetMotorCommandRequest_<std::allocator<void> > SetMotorCommandRequest;

typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandRequest > SetMotorCommandRequestPtr;
typedef boost::shared_ptr< ::bench_pkg::SetMotorCommandRequest const> SetMotorCommandRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator1> & lhs, const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator2> & rhs)
{
  return lhs.myobrick_global_ids == rhs.myobrick_global_ids &&
    lhs.pwm_values == rhs.pwm_values;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator1> & lhs, const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cd2b90725c2fd26cea0f9b67f529b3e3";
  }

  static const char* value(const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcd2b90725c2fd26cULL;
  static const uint64_t static_value2 = 0xea0f9b67f529b3e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/SetMotorCommandRequest";
  }

  static const char* value(const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] myobrick_global_ids\n"
"float32[] pwm_values\n"
;
  }

  static const char* value(const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.myobrick_global_ids);
      stream.next(m.pwm_values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMotorCommandRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bench_pkg::SetMotorCommandRequest_<ContainerAllocator>& v)
  {
    s << indent << "myobrick_global_ids[]" << std::endl;
    for (size_t i = 0; i < v.myobrick_global_ids.size(); ++i)
    {
      s << indent << "  myobrick_global_ids[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.myobrick_global_ids[i]);
    }
    s << indent << "pwm_values[]" << std::endl;
    for (size_t i = 0; i < v.pwm_values.size(); ++i)
    {
      s << indent << "  pwm_values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pwm_values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_SETMOTORCOMMANDREQUEST_H
