// Generated by gencpp from file roboy_middleware_msgs/SetStringsRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGSREQUEST_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGSREQUEST_H


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
struct SetStringsRequest_
{
  typedef SetStringsRequest_<ContainerAllocator> Type;

  SetStringsRequest_()
    : strings()  {
    }
  SetStringsRequest_(const ContainerAllocator& _alloc)
    : strings(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _strings_type;
  _strings_type strings;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetStringsRequest_

typedef ::roboy_middleware_msgs::SetStringsRequest_<std::allocator<void> > SetStringsRequest;

typedef boost::shared_ptr< ::roboy_middleware_msgs::SetStringsRequest > SetStringsRequestPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::SetStringsRequest const> SetStringsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.strings == rhs.strings;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "51789d20146e565223d0963361aecda1";
  }

  static const char* value(const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x51789d20146e5652ULL;
  static const uint64_t static_value2 = 0x23d0963361aecda1ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/SetStringsRequest";
  }

  static const char* value(const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] strings\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.strings);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetStringsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::SetStringsRequest_<ContainerAllocator>& v)
  {
    s << indent << "strings[]" << std::endl;
    for (size_t i = 0; i < v.strings.size(); ++i)
    {
      s << indent << "  strings[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.strings[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGSREQUEST_H
