// Generated by gencpp from file roboy_cognition_msgs/WhichTones.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_WHICHTONES_H
#define ROBOY_COGNITION_MSGS_MESSAGE_WHICHTONES_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/WhichTonesRequest.h>
#include <roboy_cognition_msgs/WhichTonesResponse.h>


namespace roboy_cognition_msgs
{

struct WhichTones
{

typedef WhichTonesRequest Request;
typedef WhichTonesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WhichTones
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::WhichTones > {
  static const char* value()
  {
    return "7f84d4f68a15e7b68416ee4eb41d9000";
  }

  static const char* value(const ::roboy_cognition_msgs::WhichTones&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::WhichTones > {
  static const char* value()
  {
    return "roboy_cognition_msgs/WhichTones";
  }

  static const char* value(const ::roboy_cognition_msgs::WhichTones&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::WhichTonesRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::WhichTones >
template<>
struct MD5Sum< ::roboy_cognition_msgs::WhichTonesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::WhichTones >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::WhichTonesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::WhichTonesRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::WhichTones >
template<>
struct DataType< ::roboy_cognition_msgs::WhichTonesRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::WhichTones >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::WhichTonesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::WhichTonesResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::WhichTones >
template<>
struct MD5Sum< ::roboy_cognition_msgs::WhichTonesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::WhichTones >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::WhichTonesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::WhichTonesResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::WhichTones >
template<>
struct DataType< ::roboy_cognition_msgs::WhichTonesResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::WhichTones >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::WhichTonesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_WHICHTONES_H
