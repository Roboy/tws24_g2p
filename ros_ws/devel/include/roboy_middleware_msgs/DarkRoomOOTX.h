// Generated by gencpp from file roboy_middleware_msgs/DarkRoomOOTX.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMOOTX_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMOOTX_H


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
struct DarkRoomOOTX_
{
  typedef DarkRoomOOTX_<ContainerAllocator> Type;

  DarkRoomOOTX_()
    : lighthouse(0)
    , fw_version(0)
    , id(0)
    , fcal_0_phase(0.0)
    , fcal_1_phase(0.0)
    , fcal_0_tilt(0.0)
    , fcal_1_tilt(0.0)
    , unlock_count(0)
    , hw_version(0)
    , fcal_0_curve(0.0)
    , fcal_1_curve(0.0)
    , accel_dir_x(0.0)
    , accel_dir_y(0.0)
    , accel_dir_z(0.0)
    , fcal_0_gibphase(0.0)
    , fcal_1_gibphase(0.0)
    , fcal_0_gibmag(0.0)
    , fcal_1_gibmag(0.0)
    , mode(0)
    , faults(0)
    , crc32(0)  {
    }
  DarkRoomOOTX_(const ContainerAllocator& _alloc)
    : lighthouse(0)
    , fw_version(0)
    , id(0)
    , fcal_0_phase(0.0)
    , fcal_1_phase(0.0)
    , fcal_0_tilt(0.0)
    , fcal_1_tilt(0.0)
    , unlock_count(0)
    , hw_version(0)
    , fcal_0_curve(0.0)
    , fcal_1_curve(0.0)
    , accel_dir_x(0.0)
    , accel_dir_y(0.0)
    , accel_dir_z(0.0)
    , fcal_0_gibphase(0.0)
    , fcal_1_gibphase(0.0)
    , fcal_0_gibmag(0.0)
    , fcal_1_gibmag(0.0)
    , mode(0)
    , faults(0)
    , crc32(0)  {
  (void)_alloc;
    }



   typedef int32_t _lighthouse_type;
  _lighthouse_type lighthouse;

   typedef uint16_t _fw_version_type;
  _fw_version_type fw_version;

   typedef uint32_t _id_type;
  _id_type id;

   typedef float _fcal_0_phase_type;
  _fcal_0_phase_type fcal_0_phase;

   typedef float _fcal_1_phase_type;
  _fcal_1_phase_type fcal_1_phase;

   typedef float _fcal_0_tilt_type;
  _fcal_0_tilt_type fcal_0_tilt;

   typedef float _fcal_1_tilt_type;
  _fcal_1_tilt_type fcal_1_tilt;

   typedef uint8_t _unlock_count_type;
  _unlock_count_type unlock_count;

   typedef uint8_t _hw_version_type;
  _hw_version_type hw_version;

   typedef float _fcal_0_curve_type;
  _fcal_0_curve_type fcal_0_curve;

   typedef float _fcal_1_curve_type;
  _fcal_1_curve_type fcal_1_curve;

   typedef float _accel_dir_x_type;
  _accel_dir_x_type accel_dir_x;

   typedef float _accel_dir_y_type;
  _accel_dir_y_type accel_dir_y;

   typedef float _accel_dir_z_type;
  _accel_dir_z_type accel_dir_z;

   typedef float _fcal_0_gibphase_type;
  _fcal_0_gibphase_type fcal_0_gibphase;

   typedef float _fcal_1_gibphase_type;
  _fcal_1_gibphase_type fcal_1_gibphase;

   typedef float _fcal_0_gibmag_type;
  _fcal_0_gibmag_type fcal_0_gibmag;

   typedef float _fcal_1_gibmag_type;
  _fcal_1_gibmag_type fcal_1_gibmag;

   typedef uint8_t _mode_type;
  _mode_type mode;

   typedef uint8_t _faults_type;
  _faults_type faults;

   typedef uint32_t _crc32_type;
  _crc32_type crc32;





  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> const> ConstPtr;

}; // struct DarkRoomOOTX_

typedef ::roboy_middleware_msgs::DarkRoomOOTX_<std::allocator<void> > DarkRoomOOTX;

typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomOOTX > DarkRoomOOTXPtr;
typedef boost::shared_ptr< ::roboy_middleware_msgs::DarkRoomOOTX const> DarkRoomOOTXConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator2> & rhs)
{
  return lhs.lighthouse == rhs.lighthouse &&
    lhs.fw_version == rhs.fw_version &&
    lhs.id == rhs.id &&
    lhs.fcal_0_phase == rhs.fcal_0_phase &&
    lhs.fcal_1_phase == rhs.fcal_1_phase &&
    lhs.fcal_0_tilt == rhs.fcal_0_tilt &&
    lhs.fcal_1_tilt == rhs.fcal_1_tilt &&
    lhs.unlock_count == rhs.unlock_count &&
    lhs.hw_version == rhs.hw_version &&
    lhs.fcal_0_curve == rhs.fcal_0_curve &&
    lhs.fcal_1_curve == rhs.fcal_1_curve &&
    lhs.accel_dir_x == rhs.accel_dir_x &&
    lhs.accel_dir_y == rhs.accel_dir_y &&
    lhs.accel_dir_z == rhs.accel_dir_z &&
    lhs.fcal_0_gibphase == rhs.fcal_0_gibphase &&
    lhs.fcal_1_gibphase == rhs.fcal_1_gibphase &&
    lhs.fcal_0_gibmag == rhs.fcal_0_gibmag &&
    lhs.fcal_1_gibmag == rhs.fcal_1_gibmag &&
    lhs.mode == rhs.mode &&
    lhs.faults == rhs.faults &&
    lhs.crc32 == rhs.crc32;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator1> & lhs, const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_middleware_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c3f1c9ae60d97f625d267c4d498128f4";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc3f1c9ae60d97f62ULL;
  static const uint64_t static_value2 = 0x5d267c4d498128f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_middleware_msgs/DarkRoomOOTX";
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 lighthouse\n"
"uint16 fw_version\n"
"uint32 id\n"
"float32 fcal_0_phase\n"
"float32 fcal_1_phase\n"
"float32 fcal_0_tilt\n"
"float32 fcal_1_tilt\n"
"uint8 unlock_count\n"
"uint8 hw_version\n"
"float32 fcal_0_curve\n"
"float32 fcal_1_curve\n"
"float32 accel_dir_x\n"
"float32 accel_dir_y\n"
"float32 accel_dir_z\n"
"float32 fcal_0_gibphase\n"
"float32 fcal_1_gibphase\n"
"float32 fcal_0_gibmag\n"
"float32 fcal_1_gibmag\n"
"uint8 mode\n"
"uint8 faults\n"
"uint32 crc32\n"
;
  }

  static const char* value(const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lighthouse);
      stream.next(m.fw_version);
      stream.next(m.id);
      stream.next(m.fcal_0_phase);
      stream.next(m.fcal_1_phase);
      stream.next(m.fcal_0_tilt);
      stream.next(m.fcal_1_tilt);
      stream.next(m.unlock_count);
      stream.next(m.hw_version);
      stream.next(m.fcal_0_curve);
      stream.next(m.fcal_1_curve);
      stream.next(m.accel_dir_x);
      stream.next(m.accel_dir_y);
      stream.next(m.accel_dir_z);
      stream.next(m.fcal_0_gibphase);
      stream.next(m.fcal_1_gibphase);
      stream.next(m.fcal_0_gibmag);
      stream.next(m.fcal_1_gibmag);
      stream.next(m.mode);
      stream.next(m.faults);
      stream.next(m.crc32);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DarkRoomOOTX_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_middleware_msgs::DarkRoomOOTX_<ContainerAllocator>& v)
  {
    s << indent << "lighthouse: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lighthouse);
    s << indent << "fw_version: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.fw_version);
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "fcal_0_phase: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_0_phase);
    s << indent << "fcal_1_phase: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_1_phase);
    s << indent << "fcal_0_tilt: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_0_tilt);
    s << indent << "fcal_1_tilt: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_1_tilt);
    s << indent << "unlock_count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.unlock_count);
    s << indent << "hw_version: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hw_version);
    s << indent << "fcal_0_curve: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_0_curve);
    s << indent << "fcal_1_curve: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_1_curve);
    s << indent << "accel_dir_x: ";
    Printer<float>::stream(s, indent + "  ", v.accel_dir_x);
    s << indent << "accel_dir_y: ";
    Printer<float>::stream(s, indent + "  ", v.accel_dir_y);
    s << indent << "accel_dir_z: ";
    Printer<float>::stream(s, indent + "  ", v.accel_dir_z);
    s << indent << "fcal_0_gibphase: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_0_gibphase);
    s << indent << "fcal_1_gibphase: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_1_gibphase);
    s << indent << "fcal_0_gibmag: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_0_gibmag);
    s << indent << "fcal_1_gibmag: ";
    Printer<float>::stream(s, indent + "  ", v.fcal_1_gibmag);
    s << indent << "mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "faults: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.faults);
    s << indent << "crc32: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.crc32);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_DARKROOMOOTX_H
