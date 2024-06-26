// Generated by gencpp from file roboy_cognition_msgs/OrderIceCreamResult.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_ORDERICECREAMRESULT_H
#define ROBOY_COGNITION_MSGS_MESSAGE_ORDERICECREAMRESULT_H


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
struct OrderIceCreamResult_
{
  typedef OrderIceCreamResult_<ContainerAllocator> Type;

  OrderIceCreamResult_()
    : success(false)
    , error_message()  {
    }
  OrderIceCreamResult_(const ContainerAllocator& _alloc)
    : success(false)
    , error_message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _error_message_type;
  _error_message_type error_message;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> const> ConstPtr;

}; // struct OrderIceCreamResult_

typedef ::roboy_cognition_msgs::OrderIceCreamResult_<std::allocator<void> > OrderIceCreamResult;

typedef boost::shared_ptr< ::roboy_cognition_msgs::OrderIceCreamResult > OrderIceCreamResultPtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::OrderIceCreamResult const> OrderIceCreamResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.error_message == rhs.error_message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fe914479ce03184a758c3f6990c928f";
  }

  static const char* value(const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fe914479ce03184ULL;
  static const uint64_t static_value2 = 0xa758c3f6990c928fULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/OrderIceCreamResult";
  }

  static const char* value(const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# success is send when scooping is finished\n"
"# if scooping did not succeed, success is false and an error message should be replied\n"
"bool success \n"
"string error_message\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.error_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OrderIceCreamResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::OrderIceCreamResult_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.error_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_ORDERICECREAMRESULT_H
