// Generated by gencpp from file bench_pkg/GetCurrentKinematicsRequest.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSREQUEST_H
#define BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSREQUEST_H


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
struct GetCurrentKinematicsRequest_
{
  typedef GetCurrentKinematicsRequest_<ContainerAllocator> Type;

  GetCurrentKinematicsRequest_()
    {
    }
  GetCurrentKinematicsRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetCurrentKinematicsRequest_

typedef ::bench_pkg::GetCurrentKinematicsRequest_<std::allocator<void> > GetCurrentKinematicsRequest;

typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsRequest > GetCurrentKinematicsRequestPtr;
typedef boost::shared_ptr< ::bench_pkg::GetCurrentKinematicsRequest const> GetCurrentKinematicsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/GetCurrentKinematicsRequest";
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetCurrentKinematicsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::bench_pkg::GetCurrentKinematicsRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_GETCURRENTKINEMATICSREQUEST_H
