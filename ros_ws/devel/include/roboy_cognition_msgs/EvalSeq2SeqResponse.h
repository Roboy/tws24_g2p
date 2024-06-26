// Generated by gencpp from file roboy_cognition_msgs/EvalSeq2SeqResponse.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_EVALSEQ2SEQRESPONSE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_EVALSEQ2SEQRESPONSE_H


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
struct EvalSeq2SeqResponse_
{
  typedef EvalSeq2SeqResponse_<ContainerAllocator> Type;

  EvalSeq2SeqResponse_()
    : result(false)  {
    }
  EvalSeq2SeqResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EvalSeq2SeqResponse_

typedef ::roboy_cognition_msgs::EvalSeq2SeqResponse_<std::allocator<void> > EvalSeq2SeqResponse;

typedef boost::shared_ptr< ::roboy_cognition_msgs::EvalSeq2SeqResponse > EvalSeq2SeqResponsePtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::EvalSeq2SeqResponse const> EvalSeq2SeqResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/EvalSeq2SeqResponse";
  }

  static const char* value(const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EvalSeq2SeqResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::EvalSeq2SeqResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_EVALSEQ2SEQRESPONSE_H
