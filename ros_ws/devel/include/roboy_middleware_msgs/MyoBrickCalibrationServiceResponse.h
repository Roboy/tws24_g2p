// Generated by gencpp from file roboy_middleware_msgs/MyoBrickCalibrationServiceResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_MYOBRICKCALIBRATIONSERVICERESPONSE_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_MYOBRICKCALIBRATIONSERVICERESPONSE_H


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
struct MyoBrickCalibrationServiceResponse_
{
  typedef MyoBrickCalibrationServiceResponse_<ContainerAllocator> Type;

  MyoBrickCalibrationServiceResponse_()
    : estimated_spring_parameters()
    , motor_angle()
    , motor_encoder()  {
    }
  MyoBrickCalibrationServiceResponse_(const ContainerAllocator& _alloc)
    : estimated_spring_parameters(_alloc)
    , motor_angle(_alloc)
    , motor_encoder(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _estimated_spring_parameters_type;
  _estimated_spring_parameters_type estimated_spring_parameters;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _motor_angle_type;
  _motor_angle_type motor_angle;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _motor_encoder_type;
  _motor_encoder_type motor_encoder;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MyoBrickCalibrationServiceResponse_

typedef ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<std::allocator<void> > MyoBrickCalibrationServiceResponse;

typedef boost::shared_ptr< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse > MyoBrickCalibrationServiceResponsePtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse const> MyoBrickCalibrationServiceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.estimated_spring_parameters == rhs.estimated_spring_parameters &&
    lhs.motor_angle == rhs.motor_angle &&
    lhs.motor_encoder == rhs.motor_encoder;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c0ec05faaadb5e990760f8da40d23f61";
  }

  static const char* value(const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc0ec05faaadb5e99ULL;
  static const uint64_t static_value2 = 0x0760f8da40d23f61ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/MyoBrickCalibrationServiceResponse";
  }

  static const char* value(const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] estimated_spring_parameters\n"
"float64[] motor_angle\n"
"float64[] motor_encoder\n"
"\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.estimated_spring_parameters);
      stream.next(m.motor_angle);
      stream.next(m.motor_encoder);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MyoBrickCalibrationServiceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::MyoBrickCalibrationServiceResponse_<ContainerAllocator>& v)
  {
    s << indent << "estimated_spring_parameters[]" << std::endl;
    for (size_t i = 0; i < v.estimated_spring_parameters.size(); ++i)
    {
      s << indent << "  estimated_spring_parameters[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.estimated_spring_parameters[i]);
    }
    s << indent << "motor_angle[]" << std::endl;
    for (size_t i = 0; i < v.motor_angle.size(); ++i)
    {
      s << indent << "  motor_angle[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.motor_angle[i]);
    }
    s << indent << "motor_encoder[]" << std::endl;
    for (size_t i = 0; i < v.motor_encoder.size(); ++i)
    {
      s << indent << "  motor_encoder[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.motor_encoder[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_MYOBRICKCALIBRATIONSERVICERESPONSE_H
