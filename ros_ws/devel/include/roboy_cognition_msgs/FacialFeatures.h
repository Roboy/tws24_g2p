// Generated by gencpp from file roboy_cognition_msgs/FacialFeatures.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_FACIALFEATURES_H
#define ROBOY_COGNITION_MSGS_MESSAGE_FACIALFEATURES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_cognition_msgs
{
template <class ContainerAllocator>
struct FacialFeatures_
{
  typedef FacialFeatures_<ContainerAllocator> Type;

  FacialFeatures_()
    : speaking(false)
    , ff()  {
      ff.assign(0.0);
  }
  FacialFeatures_(const ContainerAllocator& _alloc)
    : speaking(false)
    , ff()  {
  (void)_alloc;
      ff.assign(0.0);
  }



   typedef uint8_t _speaking_type;
  _speaking_type speaking;

   typedef boost::array<double, 128>  _ff_type;
  _ff_type ff;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> const> ConstPtr;

}; // struct FacialFeatures_

typedef ::roboy_cognition_msgs::FacialFeatures_<std::allocator<void> > FacialFeatures;

typedef boost::shared_ptr< ::roboy_cognition_msgs::FacialFeatures > FacialFeaturesPtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::FacialFeatures const> FacialFeaturesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator2> & rhs)
{
  return lhs.speaking == rhs.speaking &&
    lhs.ff == rhs.ff;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "782758a9ad871ad0f7c61033e6a9c6cf";
  }

  static const char* value(const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x782758a9ad871ad0ULL;
  static const uint64_t static_value2 = 0xf7c61033e6a9c6cfULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/FacialFeatures";
  }

  static const char* value(const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#only for unrecognized faces\n"
"#is person speaking?\n"
"bool speaking\n"
"#facial features (128x1 vector)\n"
"float64[128] ff\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speaking);
      stream.next(m.ff);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FacialFeatures_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::FacialFeatures_<ContainerAllocator>& v)
  {
    s << indent << "speaking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.speaking);
    s << indent << "ff[]" << std::endl;
    for (size_t i = 0; i < v.ff.size(); ++i)
    {
      s << indent << "  ff[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.ff[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_FACIALFEATURES_H
