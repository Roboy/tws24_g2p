// Generated by gencpp from file roboy_middleware_msgs/ControlMode.msg
// DO NOT EDIT!


#ifndef ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODE_H
#define ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODE_H

#include <ros/service_traits.h>


#include <roboy_middleware_msgs/ControlModeRequest.h>
#include <roboy_middleware_msgs/ControlModeResponse.h>


namespace roboy_middleware_msgs
{

struct ControlMode
{

typedef ControlModeRequest Request;
typedef ControlModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ControlMode
} // namespace roboy_middleware_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_middleware_msgs::ControlMode > {
  static const char* value()
  {
    return "d6e1c54934446851505150d7d89f00c1";
  }

  static const char* value(const ::roboy_middleware_msgs::ControlMode&) { return value(); }
};

template<>
struct DataType< ::roboy_middleware_msgs::ControlMode > {
  static const char* value()
  {
    return "roboy_middleware_msgs/ControlMode";
  }

  static const char* value(const ::roboy_middleware_msgs::ControlMode&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_middleware_msgs::ControlModeRequest> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::ControlMode >
template<>
struct MD5Sum< ::roboy_middleware_msgs::ControlModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::ControlMode >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::ControlModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::ControlModeRequest> should match
// service_traits::DataType< ::roboy_middleware_msgs::ControlMode >
template<>
struct DataType< ::roboy_middleware_msgs::ControlModeRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::ControlMode >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::ControlModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_middleware_msgs::ControlModeResponse> should match
// service_traits::MD5Sum< ::roboy_middleware_msgs::ControlMode >
template<>
struct MD5Sum< ::roboy_middleware_msgs::ControlModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_middleware_msgs::ControlMode >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::ControlModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_middleware_msgs::ControlModeResponse> should match
// service_traits::DataType< ::roboy_middleware_msgs::ControlMode >
template<>
struct DataType< ::roboy_middleware_msgs::ControlModeResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_middleware_msgs::ControlMode >::value();
  }
  static const char* value(const ::roboy_middleware_msgs::ControlModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_MIDDLEWARE_MSGS_MESSAGE_CONTROLMODE_H
