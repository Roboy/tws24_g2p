// Generated by gencpp from file roboy_cognition_msgs/ShowPropertyResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTYRESPONSE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTYRESPONSE_H


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
struct ShowPropertyResponse_
{
  typedef ShowPropertyResponse_<ContainerAllocator> Type;

  ShowPropertyResponse_()
    : property()  {
    }
  ShowPropertyResponse_(const ContainerAllocator& _alloc)
    : property(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _property_type;
  _property_type property;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ShowPropertyResponse_

typedef ::roboy_cognition_msgs::ShowPropertyResponse_<std::allocator<void> > ShowPropertyResponse;

typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowPropertyResponse > ShowPropertyResponsePtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::ShowPropertyResponse const> ShowPropertyResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator2> & rhs)
{
  return lhs.property == rhs.property;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91972fb903649c0a05c7379f59be5fea";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91972fb903649c0aULL;
  static const uint64_t static_value2 = 0x05c7379f59be5feaULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/ShowPropertyResponse";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string property\n"
"\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.property);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ShowPropertyResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::ShowPropertyResponse_<ContainerAllocator>& v)
  {
    s << indent << "property: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.property);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTYRESPONSE_H