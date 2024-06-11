// Generated by gencpp from file roboy_middleware_msgs/DarkRoomSensor.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSENSOR_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSENSOR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace roboy_middleware_msgs
{
template <class ContainerAllocator>
struct DarkRoomSensor_
{
  typedef DarkRoomSensor_<ContainerAllocator> Type;

  DarkRoomSensor_()
    : ids()
    , position()  {
    }
  DarkRoomSensor_(const ContainerAllocator& _alloc)
    : ids(_alloc)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _ids_type;
  _ids_type ids;

   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Vector3_<ContainerAllocator> >> _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> const> ConstPtr;

}; // struct DarkRoomSensor_

typedef ::roboy_middleware_msgs::DarkRoomSensor_<std::allocator<void> > DarkRoomSensor;

typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomSensor > DarkRoomSensorPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomSensor const> DarkRoomSensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator2> & rhs)
{
  return lhs.ids == rhs.ids &&
    lhs.position == rhs.position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c8aef307d10bb8c303e67acf5cfadd8";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c8aef307d10bb8cULL;
  static const uint64_t static_value2 = 0x303e67acf5cfadd8ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/DarkRoomSensor";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] ids\n"
"geometry_msgs/Vector3[] position\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ids);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DarkRoomSensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::DarkRoomSensor_<ContainerAllocator>& v)
  {
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.ids[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.position[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMSENSOR_H
