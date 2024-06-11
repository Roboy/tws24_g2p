// Generated by gencpp from file roboy_cognition_msgs/GetObjectResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECTRESPONSE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECTRESPONSE_H


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
struct GetObjectResponse_
{
  typedef GetObjectResponse_<ContainerAllocator> Type;

  GetObjectResponse_()
    : result(false)
    , instance()  {
    }
  GetObjectResponse_(const ContainerAllocator& _alloc)
    : result(false)
    , instance(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _instance_type;
  _instance_type instance;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetObjectResponse_

typedef ::roboy_cognition_msgs::GetObjectResponse_<std::allocator<void> > GetObjectResponse;

typedef boost::shared_ptr< ::roboy_cognition_msgs::GetObjectResponse > GetObjectResponsePtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::GetObjectResponse const> GetObjectResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.instance == rhs.instance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55540925296eacb568db5234e46ff149";
  }

  static const char* value(const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55540925296eacb5ULL;
  static const uint64_t static_value2 = 0x68db5234e46ff149ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/GetObjectResponse";
  }

  static const char* value(const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"string instance\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.instance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetObjectResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::GetObjectResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "instance: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.instance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECTRESPONSE_H
