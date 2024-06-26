// Generated by gencpp from file roboy_simulation_msgs/UpdateBodyInformationRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_UPDATEBODYINFORMATIONREQUEST_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_UPDATEBODYINFORMATIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <roboy_simulation_msgs/BodyInformation.h>

namespace roboy_simulation_msgs
{
template <class ContainerAllocator>
struct UpdateBodyInformationRequest_
{
  typedef UpdateBodyInformationRequest_<ContainerAllocator> Type;

  UpdateBodyInformationRequest_()
    : body_information()  {
    }
  UpdateBodyInformationRequest_(const ContainerAllocator& _alloc)
    : body_information(_alloc)  {
  (void)_alloc;
    }



   typedef  ::roboy_simulation_msgs::BodyInformation_<ContainerAllocator>  _body_information_type;
  _body_information_type body_information;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UpdateBodyInformationRequest_

typedef ::roboy_simulation_msgs::UpdateBodyInformationRequest_<std::allocator<void> > UpdateBodyInformationRequest;

typedef boost::shared_ptr< ::roboy_simulation_msgs::UpdateBodyInformationRequest > UpdateBodyInformationRequestPtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::UpdateBodyInformationRequest const> UpdateBodyInformationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.body_information == rhs.body_information;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de12943356d169037be74d3dfce2e283";
  }

  static const char* value(const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde12943356d16903ULL;
  static const uint64_t static_value2 = 0x7be74d3dfce2e283ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/UpdateBodyInformationRequest";
  }

  static const char* value(const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/BodyInformation body_information\n"
"\n"
"================================================================================\n"
"MSG: roboy_simulation_msgs/BodyInformation\n"
"# list containing all links and some information like name, dimensions etc.\n"
"roboy_simulation_msgs/LinkInformation[] link_information\n"
"================================================================================\n"
"MSG: roboy_simulation_msgs/LinkInformation\n"
"# id of the link in the simulation\n"
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

  static const char* value(const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.body_information);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UpdateBodyInformationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::UpdateBodyInformationRequest_<ContainerAllocator>& v)
  {
    s << indent << "body_information: ";
    s << std::endl;
    Printer< ::roboy_simulation_msgs::BodyInformation_<ContainerAllocator> >::stream(s, indent + "  ", v.body_information);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_UPDATEBODYINFORMATIONREQUEST_H
