// Generated by gencpp from file roboy_middleware_msgs/EmergencyStop.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_EMERGENCYSTOP_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_EMERGENCYSTOP_H

#include <ros/service_traits.h>


#include <roboy_middleware_msgs/EmergencyStopRequest.h>
#include <roboy_middleware_msgs/EmergencyStopResponse.h>


namespace roboy_middleware_msgs
{

struct EmergencyStop
{

typedef EmergencyStopRequest Request;
typedef EmergencyStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EmergencyStop
} // namespace roboy_middleware_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_middleware_msgs::EmergencyStop > {
  static const char* value()
  {
    return "769d67555bcace7e21068dd8a08c7e86";
  }

  static const char* value(const ::roboy_middleware_msgs::EmergencyStop&) { return value(); }
};

template<>
struct DataType< ::roboy_middleware_msgs::EmergencyStop > {
  static const char* value()
  {
    return "roboy_middleware_msgs/EmergencyStop";
  }

  static const char* value(const ::roboy_middleware_msgs::EmergencyStop&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_middleware_msgs::EmergencyStopRequest> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::EmergencyStop >
template<>
struct MD5Sum< ::roboy_middleware_msgs::EmergencyStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::EmergencyStopRequest> should match
// service_traits::DataType< ::roboy_middleware_msgs::EmergencyStop >
template<>
struct DataType< ::roboy_middleware_msgs::EmergencyStopRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::EmergencyStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_middleware_msgs::EmergencyStopResponse> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::EmergencyStop >
template<>
struct MD5Sum< ::roboy_middleware_msgs::EmergencyStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::EmergencyStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::EmergencyStopResponse> should match
// service_traits::DataType< ::roboy_middleware_msgs::EmergencyStop >
template<>
struct DataType< ::roboy_middleware_msgs::EmergencyStopResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::EmergencyStop >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::EmergencyStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_EMERGENCYSTOP_H
