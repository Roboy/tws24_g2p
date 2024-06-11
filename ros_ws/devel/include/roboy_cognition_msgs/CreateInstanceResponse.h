// Generated by gencpp from file roboy_cognition_msgs/CreateInstanceResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_CREATEINSTANCERESPONSE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_CREATEINSTANCERESPONSE_H


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
struct CreateInstanceResponse_
{
  typedef CreateInstanceResponse_<ContainerAllocator> Type;

  CreateInstanceResponse_()
    : instance()  {
    }
  CreateInstanceResponse_(const ContainerAllocator& _alloc)
    : instance(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _instance_type;
  _instance_type instance;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CreateInstanceResponse_

typedef ::roboy_cognition_msgs::CreateInstanceResponse_<std::allocator<void> > CreateInstanceResponse;

typedef boost::shared_ptr< ::roboy_cognition_msgs::CreateInstanceResponse > CreateInstanceResponsePtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::CreateInstanceResponse const> CreateInstanceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.instance == rhs.instance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a189cfe330fcc645d0364f487b22a38";
  }

  static const char* value(const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a189cfe330fcc64ULL;
  static const uint64_t static_value2 = 0x5d0364f487b22a38ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/CreateInstanceResponse";
  }

  static const char* value(const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string instance\n"
"\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.instance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CreateInstanceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::CreateInstanceResponse_<ContainerAllocator>& v)
  {
    s << indent << "instance: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.instance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_CREATEINSTANCERESPONSE_H
