// Generated by gencpp from file roboy_control_msgs/MoveEndEffectorGoal.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_MOVEENDEFFECTORGOAL_H
#define ROBOY_CONTROL_MSGS_MESSAGE_MOVEENDEFFECTORGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace roboy_control_msgs
{
template <class ContainerAllocator>
struct MoveEndEffectorGoal_
{
  typedef MoveEndEffectorGoal_<ContainerAllocator> Type;

  MoveEndEffectorGoal_()
    : endeffector()
    , type(0)
    , ik_type(0)
    , pose()
    , target_frame()
    , timeout(0)
    , tolerance(0.0)  {
    }
  MoveEndEffectorGoal_(const ContainerAllocator& _alloc)
    : endeffector(_alloc)
    , type(0)
    , ik_type(0)
    , pose(_alloc)
    , target_frame(_alloc)
    , timeout(0)
    , tolerance(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _endeffector_type;
  _endeffector_type endeffector;

   typedef int8_t _type_type;
  _type_type type;

   typedef int8_t _ik_type_type;
  _ik_type_type ik_type;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _target_frame_type;
  _target_frame_type target_frame;

   typedef int32_t _timeout_type;
  _timeout_type timeout;

   typedef float _tolerance_type;
  _tolerance_type tolerance;





  typedef boost::shared_ptr< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MoveEndEffectorGoal_

typedef ::roboy_control_msgs::MoveEndEffectorGoal_<std::allocator<void> > MoveEndEffectorGoal;

typedef boost::shared_ptr< ::roboy_control_msgs::MoveEndEffectorGoal > MoveEndEffectorGoalPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::MoveEndEffectorGoal const> MoveEndEffectorGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator2> & rhs)
{
  return lhs.endeffector == rhs.endeffector &&
    lhs.type == rhs.type &&
    lhs.ik_type == rhs.ik_type &&
    lhs.pose == rhs.pose &&
    lhs.target_frame == rhs.target_frame &&
    lhs.timeout == rhs.timeout &&
    lhs.tolerance == rhs.tolerance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f33fbd8d95986b67598d14cdfccd5fac";
  }

  static const char* value(const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf33fbd8d95986b67ULL;
  static const uint64_t static_value2 = 0x598d14cdfccd5facULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/MoveEndEffectorGoal";
  }

  static const char* value(const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"string endeffector\n"
"# 0: pose in world frame 1: pose relative to target_frame\n"
"int8 type\n"
"# 0: position and orientation 1: position only 2: orientation only\n"
"int8 ik_type\n"
"geometry_msgs/Pose pose\n"
"string target_frame\n"
"int32 timeout\n"
"float32 tolerance\n"
"\n"
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

  static const char* value(const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.endeffector);
      stream.next(m.type);
      stream.next(m.ik_type);
      stream.next(m.pose);
      stream.next(m.target_frame);
      stream.next(m.timeout);
      stream.next(m.tolerance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveEndEffectorGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::MoveEndEffectorGoal_<ContainerAllocator>& v)
  {
    s << indent << "endeffector: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.endeffector);
    s << indent << "type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.type);
    s << indent << "ik_type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ik_type);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "target_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.target_frame);
    s << indent << "timeout: ";
    Printer<int32_t>::stream(s, indent + "  ", v.timeout);
    s << indent << "tolerance: ";
    Printer<float>::stream(s, indent + "  ", v.tolerance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_MOVEENDEFFECTORGOAL_H
