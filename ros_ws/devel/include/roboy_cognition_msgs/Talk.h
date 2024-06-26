// Generated by gencpp from file roboy_cognition_msgs/Talk.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_TALK_H
#define ROBOY_COGNITION_MSGS_MESSAGE_TALK_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/TalkRequest.h>
#include <roboy_cognition_msgs/TalkResponse.h>


namespace roboy_cognition_msgs
{

struct Talk
{

typedef TalkRequest Request;
typedef TalkResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Talk
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::Talk > {
  static const char* value()
  {
    return "6ca61db74fc49874aa02b7ab6bcb76f8";
  }

  static const char* value(const ::roboy_cognition_msgs::Talk&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::Talk > {
  static const char* value()
  {
    return "roboy_cognition_msgs/Talk";
  }

  static const char* value(const ::roboy_cognition_msgs::Talk&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::TalkRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::Talk >
template<>
struct MD5Sum< ::roboy_cognition_msgs::TalkRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::Talk >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::TalkRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::TalkRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::Talk >
template<>
struct DataType< ::roboy_cognition_msgs::TalkRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::Talk >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::TalkRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::TalkResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::Talk >
template<>
struct MD5Sum< ::roboy_cognition_msgs::TalkResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::Talk >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::TalkResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::TalkResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::Talk >
template<>
struct DataType< ::roboy_cognition_msgs::TalkResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::Talk >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::TalkResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_TALK_H
