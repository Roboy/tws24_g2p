// Generated by gencpp from file roboy_control_msgs/LookAtActionGoal.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_LOOKATACTIONGOAL_H
#define ROBOY_CONTROL_MSGS_MESSAGE_LOOKATACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <roboy_control_msgs/LookAtGoal.h>

namespace roboy_control_msgs
{
template <class ContainerAllocator>
struct LookAtActionGoal_
{
  typedef LookAtActionGoal_<ContainerAllocator> Type;

  LookAtActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  LookAtActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::roboy_control_msgs::LookAtGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct LookAtActionGoal_

typedef ::roboy_control_msgs::LookAtActionGoal_<std::allocator<void> > LookAtActionGoal;

typedef boost::shared_ptr< ::roboy_control_msgs::LookAtActionGoal > LookAtActionGoalPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::LookAtActionGoal const> LookAtActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05597adff93cf34660d50def9319dc0c";
  }

  static const char* value(const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05597adff93cf346ULL;
  static const uint64_t static_value2 = 0x60d50def9319dc0cULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/LookAtActionGoal";
  }

  static const char* value(const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"LookAtGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: roboy_control_msgs/LookAtGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"string endEffector\n"
"int32 yaw_joint_index\n"
"int32 pitch_joint_index\n"
"# 0: point in world frame\n"
"# 1: target frame relative to root_frame\n"
"# 2: target frame relative to root_frame single shot\n"
"int32 type\n"
"geometry_msgs/Vector3 point\n"
"string root_frame\n"
"string target_frame\n"
"bool sendToRealHardware\n"
"int32 timeout\n"
"float32 tolerance\n"
"\n"
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

  static const char* value(const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LookAtActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::LookAtActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::roboy_control_msgs::LookAtGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_LOOKATACTIONGOAL_H
