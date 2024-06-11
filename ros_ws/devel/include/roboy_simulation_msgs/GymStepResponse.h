// Generated by gencpp from file roboy_simulation_msgs/GymStepResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_GYMSTEPRESPONSE_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_GYMSTEPRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace roboy_simulation_msgs
{
template <class ContainerAllocator>
struct GymStepResponse_
{
  typedef GymStepResponse_<ContainerAllocator> Type;

  GymStepResponse_()
    : q()
    , qdot()
    , feasible(false)  {
    }
  GymStepResponse_(const ContainerAllocator& _alloc)
    : q(_alloc)
    , qdot(_alloc)
    , feasible(false)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _q_type;
  _q_type q;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _qdot_type;
  _qdot_type qdot;

   typedef uint8_t _feasible_type;
  _feasible_type feasible;





  typedef boost::shared_ptr< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GymStepResponse_

typedef ::roboy_simulation_msgs::GymStepResponse_<std::allocator<void> > GymStepResponse;

typedef boost::shared_ptr< ::roboy_simulation_msgs::GymStepResponse > GymStepResponsePtr;
typedef boost::shared_ptr< ::roboy_simulation_msgs::GymStepResponse const> GymStepResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator2> & rhs)
{
  return lhs.q == rhs.q &&
    lhs.qdot == rhs.qdot &&
    lhs.feasible == rhs.feasible;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator1> & lhs, const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_simulation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a84bae228444ba1017ac397cff61e033";
  }

  static const char* value(const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa84bae228444ba10ULL;
  static const uint64_t static_value2 = 0x17ac397cff61e033ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_simulation_msgs/GymStepResponse";
  }

  static const char* value(const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] q\n"
"float64[] qdot\n"
"bool feasible\n"
"\n"
;
  }

  static const char* value(const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.q);
      stream.next(m.qdot);
      stream.next(m.feasible);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GymStepResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_simulation_msgs::GymStepResponse_<ContainerAllocator>& v)
  {
    s << indent << "q[]" << std::endl;
    for (size_t i = 0; i < v.q.size(); ++i)
    {
      s << indent << "  q[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.q[i]);
    }
    s << indent << "qdot[]" << std::endl;
    for (size_t i = 0; i < v.qdot.size(); ++i)
    {
      s << indent << "  qdot[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.qdot[i]);
    }
    s << indent << "feasible: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.feasible);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_GYMSTEPRESPONSE_H