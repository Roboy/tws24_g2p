// Generated by gencpp from file roboy_middleware_msgs/SystemCheckResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_SYSTEMCHECKRESPONSE_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_SYSTEMCHECKRESPONSE_H


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
struct SystemCheckResponse_
{
  typedef SystemCheckResponse_<ContainerAllocator> Type;

  SystemCheckResponse_()
    : motorIDs()
    , encoder0_pos()
    , encoder1_pos()
    , communication_quality()  {
    }
  SystemCheckResponse_(const ContainerAllocator& _alloc)
    : motorIDs(_alloc)
    , encoder0_pos(_alloc)
    , encoder1_pos(_alloc)
    , communication_quality(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _motorIDs_type;
  _motorIDs_type motorIDs;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _encoder0_pos_type;
  _encoder0_pos_type encoder0_pos;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _encoder1_pos_type;
  _encoder1_pos_type encoder1_pos;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _communication_quality_type;
  _communication_quality_type communication_quality;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SystemCheckResponse_

typedef ::roboy_middleware_msgs::SystemCheckResponse_<std::allocator<void> > SystemCheckResponse;

typedef boost::shared_ptr< ::roboy_middleware_msgs::SystemCheckResponse > SystemCheckResponsePtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::SystemCheckResponse const> SystemCheckResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator2> & rhs)
{
  return lhs.motorIDs == rhs.motorIDs &&
    lhs.encoder0_pos == rhs.encoder0_pos &&
    lhs.encoder1_pos == rhs.encoder1_pos &&
    lhs.communication_quality == rhs.communication_quality;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8b46525f687a0d9002d0c14cf5e5c645";
  }

  static const char* value(const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8b46525f687a0d90ULL;
  static const uint64_t static_value2 = 0x02d0c14cf5e5c645ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/SystemCheckResponse";
  }

  static const char* value(const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# returns which mototrs are functional\n"
"uint8[] motorIDs\n"
"bool[] encoder0_pos\n"
"bool[] encoder1_pos\n"
"bool[] communication_quality\n"
"\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.motorIDs);
      stream.next(m.encoder0_pos);
      stream.next(m.encoder1_pos);
      stream.next(m.communication_quality);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SystemCheckResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::SystemCheckResponse_<ContainerAllocator>& v)
  {
    s << indent << "motorIDs[]" << std::endl;
    for (size_t i = 0; i < v.motorIDs.size(); ++i)
    {
      s << indent << "  motorIDs[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.motorIDs[i]);
    }
    s << indent << "encoder0_pos[]" << std::endl;
    for (size_t i = 0; i < v.encoder0_pos.size(); ++i)
    {
      s << indent << "  encoder0_pos[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.encoder0_pos[i]);
    }
    s << indent << "encoder1_pos[]" << std::endl;
    for (size_t i = 0; i < v.encoder1_pos.size(); ++i)
    {
      s << indent << "  encoder1_pos[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.encoder1_pos[i]);
    }
    s << indent << "communication_quality[]" << std::endl;
    for (size_t i = 0; i < v.communication_quality.size(); ++i)
    {
      s << indent << "  communication_quality[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.communication_quality[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_SYSTEMCHECKRESPONSE_H
