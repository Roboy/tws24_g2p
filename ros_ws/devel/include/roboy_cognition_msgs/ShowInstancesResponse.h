// Generated by gencpp from file roboy_cognition_msgs/ShowInstancesResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_SHOWINSTANCESRESPONSE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_SHOWINSTANCESRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_cognition_msgs
{
template <class ContainerAllocator>
struct ShowInstancesResponse_
{
  typedef ShowInstancesResponse_<ContainerAllocator> Type;

  ShowInstancesResponse_()
    : instances()  {
    }
  ShowInstancesResponse_(const ContainerAllocator& _alloc)
    : instances(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _instances_type;
  _instances_type instances;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ShowInstancesResponse_

typedef ::roboy_cognition_msgs::ShowInstancesResponse_<std::allocator<void> > ShowInstancesResponse;

typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowInstancesResponse > ShowInstancesResponsePtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowInstancesResponse const> ShowInstancesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.instances == rhs.instances;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c37cf4d14d6c5bfa6fbe319c1865eb5a";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc37cf4d14d6c5bfaULL;
  static const uint64_t static_value2 = 0x6fbe319c1865eb5aULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/ShowInstancesResponse";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] instances\n"
"\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.instances);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShowInstancesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::ShowInstancesResponse_<ContainerAllocator>& v)
  {
    s << indent << "instances[]" << std::endl;
    for (size_t i = 0; i < v.instances.size(); ++i)
    {
      s << indent << "  instances[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.instances[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_SHOWINSTANCESRESPONSE_H
