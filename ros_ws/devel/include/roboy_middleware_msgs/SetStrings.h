// Generated by gencpp from file roboy_middleware_msgs/SetStrings.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGS_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGS_H

#include <ros/service_traits.h>


#include <roboy_middleware_msgs/SetStringsRequest.h>
#include <roboy_middleware_msgs/SetStringsResponse.h>


namespace roboy_middleware_msgs
{

struct SetStrings
{

typedef SetStringsRequest Request;
typedef SetStringsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetStrings
} // namespace roboy_middleware_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_middleware_msgs::SetStrings > {
  static const char* value()
  {
    return "962de84cd3589029beb1778181ac83ae";
  }

  static const char* value(const ::roboy_middleware_msgs::SetStrings&) { return value(); }
};

template<>
struct DataType< ::roboy_middleware_msgs::SetStrings > {
  static const char* value()
  {
    return "roboy_middleware_msgs/SetStrings";
  }

  static const char* value(const ::roboy_middleware_msgs::SetStrings&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_middleware_msgs::SetStringsRequest> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::SetStrings >
template<>
struct MD5Sum< ::roboy_middleware_msgs::SetStringsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::SetStrings >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::SetStringsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::SetStringsRequest> should match
// service_traits::DataType< ::roboy_middleware_msgs::SetStrings >
template<>
struct DataType< ::roboy_middleware_msgs::SetStringsRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::SetStrings >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::SetStringsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_middleware_msgs::SetStringsResponse> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::SetStrings >
template<>
struct MD5Sum< ::roboy_middleware_msgs::SetStringsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::SetStrings >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::SetStringsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::SetStringsResponse> should match
// service_traits::DataType< ::roboy_middleware_msgs::SetStrings >
template<>
struct DataType< ::roboy_middleware_msgs::SetStringsResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::SetStrings >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::SetStringsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_SETSTRINGS_H
