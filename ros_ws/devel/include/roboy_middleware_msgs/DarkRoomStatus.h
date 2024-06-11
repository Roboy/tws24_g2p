// Generated by gencpp from file roboy_middleware_msgs/DarkRoomStatus.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSTATUS_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSTATUS_H


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
struct DarkRoomStatus_
{
  typedef DarkRoomStatus_<ContainerAllocator> Type;

  DarkRoomStatus_()
    : object_id()
    , sensor_state()  {
    }
  DarkRoomStatus_(const ContainerAllocator& _alloc)
    : object_id(_alloc)
    , sensor_state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _object_id_type;
  _object_id_type object_id;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _sensor_state_type;
  _sensor_state_type sensor_state;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> const> ConstPtr;

}; // struct DarkRoomStatus_

typedef ::roboy_middleware_msgs::DarkRoomStatus_<std::allocator<void> > DarkRoomStatus;

typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomStatus > DarkRoomStatusPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomStatus const> DarkRoomStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator2> & rhs)
{
  return lhs.object_id == rhs.object_id &&
    lhs.sensor_state == rhs.sensor_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "701850641a680172b1574e149f61356d";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x701850641a680172ULL;
  static const uint64_t static_value2 = 0xb1574e149f61356dULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/DarkRoomStatus";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string object_id\n"
"uint8[] sensor_state\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_id);
      stream.next(m.sensor_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DarkRoomStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::DarkRoomStatus_<ContainerAllocator>& v)
  {
    s << indent << "object_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.object_id);
    s << indent << "sensor_state[]" << std::endl;
    for (size_t i = 0; i < v.sensor_state.size(); ++i)
    {
      s << indent << "  sensor_state[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.sensor_state[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSTATUS_H