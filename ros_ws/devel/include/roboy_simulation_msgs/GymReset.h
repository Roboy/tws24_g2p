// Generated by gencpp from file roboy_simulation_msgs/GymReset.msg
// DO NOT EDIT!


#ifndef ROBOY_SIMULATION_MSGS_MESSAGE_GYMRESET_H
#define ROBOY_SIMULATION_MSGS_MESSAGE_GYMRESET_H

#include <ros/service_traits.h>


#include <roboy_simulation_msgs/GymResetRequest.h>
#include <roboy_simulation_msgs/GymResetResponse.h>


namespace roboy_simulation_msgs
{

struct GymReset
{

typedef GymResetRequest Request;
typedef GymResetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GymReset
} // namespace roboy_simulation_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_simulation_msgs::GymReset > {
  static const char* value()
  {
    return "fdf499de51c0ee0bd20e6f3b5df6ddb4";
  }

  static const char* value(const ::roboy_simulation_msgs::GymReset&) { return value(); }
};

template<>
struct DataType< ::roboy_simulation_msgs::GymReset > {
  static const char* value()
  {
    return "roboy_simulation_msgs/GymReset";
  }

  static const char* value(const ::roboy_simulation_msgs::GymReset&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_simulation_msgs::GymResetRequest> should match
// service_traits::MD5Sum< ::roboy_simulation_msgs::GymReset >
template<>
struct MD5Sum< ::roboy_simulation_msgs::GymResetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_simulation_msgs::GymReset >::value();
  }
  static const char* value(const ::roboy_simulation_msgs::GymResetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_simulation_msgs::GymResetRequest> should match
// service_traits::DataType< ::roboy_simulation_msgs::GymReset >
template<>
struct DataType< ::roboy_simulation_msgs::GymResetRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_simulation_msgs::GymReset >::value();
  }
  static const char* value(const ::roboy_simulation_msgs::GymResetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_simulation_msgs::GymResetResponse> should match
// service_traits::MD5Sum< ::roboy_simulation_msgs::GymReset >
template<>
struct MD5Sum< ::roboy_simulation_msgs::GymResetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_simulation_msgs::GymReset >::value();
  }
  static const char* value(const ::roboy_simulation_msgs::GymResetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_simulation_msgs::GymResetResponse> should match
// service_traits::DataType< ::roboy_simulation_msgs::GymReset >
template<>
struct DataType< ::roboy_simulation_msgs::GymResetResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_simulation_msgs::GymReset >::value();
  }
  static const char* value(const ::roboy_simulation_msgs::GymResetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_SIMULATION_MSGS_MESSAGE_GYMRESET_H
