// Generated by gencpp from file bench_pkg/QueryInputResponse.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_QUERYINPUTRESPONSE_H
#define BENCH_PKG_MESSAGE_QUERYINPUTRESPONSE_H


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
struct QueryInputResponse_
{
  typedef QueryInputResponse_<ContainerAllocator> Type;

  QueryInputResponse_()
    {
    }
  QueryInputResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::bench_pkg::QueryInputResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bench_pkg::QueryInputResponse_<ContainerAllocator> const> ConstPtr;

}; // struct QueryInputResponse_

typedef ::bench_pkg::QueryInputResponse_<std::allocator<void> > QueryInputResponse;

typedef boost::shared_ptr< ::bench_pkg::QueryInputResponse > QueryInputResponsePtr;
typedef boost::shared_ptr< ::bench_pkg::QueryInputResponse const> QueryInputResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bench_pkg::QueryInputResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace bench_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bench_pkg::QueryInputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bench_pkg::QueryInputResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bench_pkg::QueryInputResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::bench_pkg::QueryInputResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bench_pkg/QueryInputResponse";
  }

  static const char* value(const ::bench_pkg::QueryInputResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::bench_pkg::QueryInputResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryInputResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bench_pkg::QueryInputResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::bench_pkg::QueryInputResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BENCH_PKG_MESSAGE_QUERYINPUTRESPONSE_H
