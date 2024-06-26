// Generated by gencpp from file roboy_control_msgs/SetControllerParametersRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_SETCONTROLLERPARAMETERSREQUEST_H
#define ROBOY_CONTROL_MSGS_MESSAGE_SETCONTROLLERPARAMETERSREQUEST_H


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
struct SetControllerParametersRequest_
{
  typedef SetControllerParametersRequest_<ContainerAllocator> Type;

  SetControllerParametersRequest_()
    : kp(0.0)
    , kd(0.0)  {
    }
  SetControllerParametersRequest_(const ContainerAllocator& _alloc)
    : kp(0.0)
    , kd(0.0)  {
  (void)_alloc;
    }



   typedef double _kp_type;
  _kp_type kp;

   typedef double _kd_type;
  _kd_type kd;





  typedef boost::shared_ptr< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetControllerParametersRequest_

typedef ::roboy_control_msgs::SetControllerParametersRequest_<std::allocator<void> > SetControllerParametersRequest;

typedef boost::shared_ptr< ::roboy_control_msgs::SetControllerParametersRequest > SetControllerParametersRequestPtr;
typedef boost::shared_ptr< ::roboy_control_msgs::SetControllerParametersRequest const> SetControllerParametersRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator2> & rhs)
{
  return lhs.kp == rhs.kp &&
    lhs.kd == rhs.kd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator1> & lhs, const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a1d40702f2b7265f668191485ba784e";
  }

  static const char* value(const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a1d40702f2b7265ULL;
  static const uint64_t static_value2 = 0xf668191485ba784eULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_control_msgs/SetControllerParametersRequest";
  }

  static const char* value(const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 kp\n"
"float64 kd\n"
;
  }

  static const char* value(const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.kp);
      stream.next(m.kd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetControllerParametersRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_control_msgs::SetControllerParametersRequest_<ContainerAllocator>& v)
  {
    s << indent << "kp: ";
    Printer<double>::stream(s, indent + "  ", v.kp);
    s << indent << "kd: ";
    Printer<double>::stream(s, indent + "  ", v.kd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_SETCONTROLLERPARAMETERSREQUEST_H
