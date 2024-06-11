// Generated by gencpp from file roboy_simulation_msgs/JointState.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_JOINTSTATE_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_JOINTSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace roboy_simulation_msgs
{
template <class ContainerAllocator>
struct JointState_
{
  typedef JointState_<ContainerAllocator> Type;

  JointState_()
    : names()
    , origin()
    , axis()
    , torque()
    , q()
    , qd()  {
    }
  JointState_(const ContainerAllocator& _alloc)
    : names(_alloc)
    , origin(_alloc)
    , axis(_alloc)
    , torque(_alloc)
    , q(_alloc)
    , qd(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _names_type;
  _names_type names;

   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Vector3_<ContainerAllocator> >> _origin_type;
  _origin_type origin;

   typedef std::vector< ::geometry_msgs::Vector3_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Vector3_<ContainerAllocator> >> _axis_type;
  _axis_type axis;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _torque_type;
  _torque_type torque;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _q_type;
  _q_type q;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _qd_type;
  _qd_type qd;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::JointState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::JointState_<ContainerAllocator> const> ConstPtr;

}; // struct JointState_

typedef ::roboy_simulation_msgs::JointState_<std::allocator<void> > JointState;

typedef boost::shared_ptr< ::roboy_simulation_msgs::JointState > JointStatePtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::JointState const> JointStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::JointState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::JointState_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::JointState_<ContainerAllocator2> & rhs)
{
  return lhs.names == rhs.names &&
    lhs.origin == rhs.origin &&
    lhs.axis == rhs.axis &&
    lhs.torque == rhs.torque &&
    lhs.q == rhs.q &&
    lhs.qd == rhs.qd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::JointState_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::JointState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::JointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::JointState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::JointState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f172c3b09cb0d7db3f536e0f2680157d";
  }

  static const char* value(const ::roboy_simulation_msgs::JointState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf172c3b09cb0d7dbULL;
  static const uint64_t static_value2 = 0x3f536e0f2680157dULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/JointState";
  }

  static const char* value(const ::roboy_simulation_msgs::JointState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# joint name\n"
"string[] names\n"
"# joint origin in global coordinates\n"
"geometry_msgs/Vector3[] origin\n"
"# joint axis in global coordinates\n"
"geometry_msgs/Vector3[] axis\n"
"float64[] torque\n"
"# angle in radian\n"
"float32[] q\n"
"# velocity in meter/s\n"
"float32[] qd\n"
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

  static const char* value(const ::roboy_simulation_msgs::JointState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.names);
      stream.next(m.origin);
      stream.next(m.axis);
      stream.next(m.torque);
      stream.next(m.q);
      stream.next(m.qd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::JointState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::JointState_<ContainerAllocator>& v)
  {
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "origin[]" << std::endl;
    for (size_t i = 0; i < v.origin.size(); ++i)
    {
      s << indent << "  origin[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.origin[i]);
    }
    s << indent << "axis[]" << std::endl;
    for (size_t i = 0; i < v.axis.size(); ++i)
    {
      s << indent << "  axis[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "    ", v.axis[i]);
    }
    s << indent << "torque[]" << std::endl;
    for (size_t i = 0; i < v.torque.size(); ++i)
    {
      s << indent << "  torque[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.torque[i]);
    }
    s << indent << "q[]" << std::endl;
    for (size_t i = 0; i < v.q.size(); ++i)
    {
      s << indent << "  q[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.q[i]);
    }
    s << indent << "qd[]" << std::endl;
    for (size_t i = 0; i < v.qd.size(); ++i)
    {
      s << indent << "  qd[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.qd[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_JOINTSTATE_H