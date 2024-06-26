// Generated by gencpp from file roboy_cognition_msgs/ShowProperty.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTY_H
#define ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTY_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/ShowPropertyRequest.h>
#include <roboy_cognition_msgs/ShowPropertyResponse.h>


namespace roboy_cognition_msgs
{

struct ShowProperty
{

typedef ShowPropertyRequest Request;
typedef ShowPropertyResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ShowProperty
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::ShowProperty > {
  static const char* value()
  {
    return "dc601e0fdf79ede7c0526ff3f333e5b2";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowProperty&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::ShowProperty > {
  static const char* value()
  {
    return "roboy_cognition_msgs/ShowProperty";
  }

  static const char* value(const ::roboy_cognition_msgs::ShowProperty&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::ShowPropertyRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::ShowProperty >
template<>
struct MD5Sum< ::roboy_cognition_msgs::ShowPropertyRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::ShowProperty >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::ShowPropertyRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::ShowPropertyRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::ShowProperty >
template<>
struct DataType< ::roboy_cognition_msgs::ShowPropertyRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::ShowProperty >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::ShowPropertyRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::ShowPropertyResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::ShowProperty >
template<>
struct MD5Sum< ::roboy_cognition_msgs::ShowPropertyResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::ShowProperty >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::ShowPropertyResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::ShowPropertyResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::ShowProperty >
template<>
struct DataType< ::roboy_cognition_msgs::ShowPropertyResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::ShowProperty >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::ShowPropertyResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_SHOWPROPERTY_H
