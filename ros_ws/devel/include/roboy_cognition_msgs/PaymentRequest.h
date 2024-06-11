// Generated by gencpp from file roboy_cognition_msgs/PaymentRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_PAYMENTREQUEST_H
#define ROBOY_COGNITION_MSGS_MESSAGE_PAYMENTREQUEST_H


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
struct PaymentRequest_
{
  typedef PaymentRequest_<ContainerAllocator> Type;

  PaymentRequest_()
    : price(0)
    , payment_option(0)
    , flavors()
    , scoops()  {
    }
  PaymentRequest_(const ContainerAllocator& _alloc)
    : price(0)
    , payment_option(0)
    , flavors(_alloc)
    , scoops(_alloc)  {
  (void)_alloc;
    }



   typedef uint16_t _price_type;
  _price_type price;

   typedef uint8_t _payment_option_type;
  _payment_option_type payment_option;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _flavors_type;
  _flavors_type flavors;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _scoops_type;
  _scoops_type scoops;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PaymentRequest_

typedef ::roboy_cognition_msgs::PaymentRequest_<std::allocator<void> > PaymentRequest;

typedef boost::shared_ptr< ::roboy_cognition_msgs::PaymentRequest > PaymentRequestPtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::PaymentRequest const> PaymentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator2> & rhs)
{
  return lhs.price == rhs.price &&
    lhs.payment_option == rhs.payment_option &&
    lhs.flavors == rhs.flavors &&
    lhs.scoops == rhs.scoops;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86e4432f3a5464738b3263cc1dbf8ed4";
  }

  static const char* value(const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86e4432f3a546473ULL;
  static const uint64_t static_value2 = 0x8b3263cc1dbf8ed4ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/PaymentRequest";
  }

  static const char* value(const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 price\n"
"uint8 payment_option\n"
"string[] flavors\n"
"int32[] scoops\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.price);
      stream.next(m.payment_option);
      stream.next(m.flavors);
      stream.next(m.scoops);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PaymentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::PaymentRequest_<ContainerAllocator>& v)
  {
    s << indent << "price: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.price);
    s << indent << "payment_option: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.payment_option);
    s << indent << "flavors[]" << std::endl;
    for (size_t i = 0; i < v.flavors.size(); ++i)
    {
      s << indent << "  flavors[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.flavors[i]);
    }
    s << indent << "scoops[]" << std::endl;
    for (size_t i = 0; i < v.scoops.size(); ++i)
    {
      s << indent << "  scoops[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.scoops[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_PAYMENTREQUEST_H