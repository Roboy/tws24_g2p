// Generated by gencpp from file roboy_cognition_msgs/TalkToFileRequest.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_TALKTOFILEREQUEST_H
#define ROBOY_COGNITION_MSGS_MESSAGE_TALKTOFILEREQUEST_H


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
struct TalkToFileRequest_
{
  typedef TalkToFileRequest_<ContainerAllocator> Type;

  TalkToFileRequest_()
    : text()
    , filename()  {
    }
  TalkToFileRequest_(const ContainerAllocator& _alloc)
    : text(_alloc)
    , filename(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _text_type;
  _text_type text;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TalkToFileRequest_

typedef ::roboy_cognition_msgs::TalkToFileRequest_<std::allocator<void> > TalkToFileRequest;

typedef boost::shared_ptr< ::roboy_cognition_msgs::TalkToFileRequest > TalkToFileRequestPtr;
typedef boost::shared_ptr< ::roboy_cognition_msgs::TalkToFileRequest const> TalkToFileRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator2> & rhs)
{
  return lhs.text == rhs.text &&
    lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator1> & lhs, const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace roboy_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd3689428bdfdefa4d035962fa83b055";
  }

  static const char* value(const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd3689428bdfdefaULL;
  static const uint64_t static_value2 = 0x4d035962fa83b055ULL;
};

template<class ContainerAllocator>
struct DataType< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roboy_cognition_msgs/TalkToFileRequest";
  }

  static const char* value(const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string text\n"
"string filename\n"
;
  }

  static const char* value(const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.text);
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TalkToFileRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::roboy_cognition_msgs::TalkToFileRequest_<ContainerAllocator>& v)
  {
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.text);
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_TALKTOFILEREQUEST_H
