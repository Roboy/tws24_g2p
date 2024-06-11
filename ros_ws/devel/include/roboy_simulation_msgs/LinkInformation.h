// Generated by gencpp from file roboy_simulation_msgs/LinkInformation.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_LINKINFORMATION_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_LINKINFORMATION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Pose.h>

namespace roboy_simulation_msgs
{
template <class ContainerAllocator>
struct LinkInformation_
{
  typedef LinkInformation_<ContainerAllocator> Type;

  LinkInformation_()
    : id(0)
    , name()
    , dimensions()
    , init_pose()  {
    }
  LinkInformation_(const ContainerAllocator& _alloc)
    : id(0)
    , name(_alloc)
    , dimensions(_alloc)
    , init_pose(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _dimensions_type;
  _dimensions_type dimensions;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _init_pose_type;
  _init_pose_type init_pose;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> const> ConstPtr;

}; // struct LinkInformation_

typedef ::roboy_simulation_msgs::LinkInformation_<std::allocator<void> > LinkInformation;

typedef boost::shared_ptr< ::roboy_simulation_msgs::LinkInformation > LinkInformationPtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::LinkInformation const> LinkInformationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.name == rhs.name &&
    lhs.dimensions == rhs.dimensions &&
    lhs.init_pose == rhs.init_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da41a99dfc52d4f683b6fe3c478f8696";
  }

  static const char* value(const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda41a99dfc52d4f6ULL;
  static const uint64_t static_value2 = 0x83b6fe3c478f8696ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/LinkInformation";
  }

  static const char* value(const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# id of the link in the simulation\n"
"int32 id\n"
"# name of the link in the simulation\n"
"string name\n"
"# dimentions of the link\n"
"geometry_msgs/Vector3 dimensions\n"
"# initial pose of the link\n"
"geometry_msgs/Pose init_pose\n"
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
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.name);
      stream.next(m.dimensions);
      stream.next(m.init_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LinkInformation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::LinkInformation_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "dimensions: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.dimensions);
    s << indent << "init_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.init_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_LINKINFORMATION_H