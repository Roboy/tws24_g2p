// Generated by gencpp from file roboy_control_msgs/ListItemsRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMSREQUEST_H
#define ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_control_msgs
{
template <class ContainerAllocator>
struct ListItemsRequest_
{
  typedef ListItemsRequest_<ContainerAllocator> Type;

  ListItemsRequest_()
    : name()  {
    }
  ListItemsRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ListItemsRequest_

typedef ::roboy_control_msgs::ListItemsRequest_<std::allocator<void> > ListItemsRequest;

typedef boost::shared_ptr< ::roboy_control_msgs::ListItemsRequest > ListItemsRequestPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::ListItemsRequest const> ListItemsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/ListItemsRequest";
  }

  static const char* value(const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name # e.g. folder path on FPGA\n"
;
  }

  static const char* value(const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListItemsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::ListItemsRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMSREQUEST_H
