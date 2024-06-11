// Generated by gencpp from file roboy_cognition_msgs/GetObject.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECT_H
#define ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECT_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/GetObjectRequest.h>
#include <roboy_cognition_msgs/GetObjectResponse.h>


namespace roboy_cognition_msgs
{

struct GetObject
{

typedef GetObjectRequest Request;
typedef GetObjectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetObject
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::GetObject > {
  static const char* value()
  {
    return "5371b92e5e40731a7295d51663dd7780";
  }

  static const char* value(const ::roboy_cognition_msgs::GetObject&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::GetObject > {
  static const char* value()
  {
    return "roboy_cognition_msgs/GetObject";
  }

  static const char* value(const ::roboy_cognition_msgs::GetObject&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::GetObjectRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::GetObject >
template<>
struct MD5Sum< ::roboy_cognition_msgs::GetObjectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::GetObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::GetObjectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::GetObjectRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::GetObject >
template<>
struct DataType< ::roboy_cognition_msgs::GetObjectRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::GetObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::GetObjectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::GetObjectResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::GetObject >
template<>
struct MD5Sum< ::roboy_cognition_msgs::GetObjectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::GetObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::GetObjectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::GetObjectResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::GetObject >
template<>
struct DataType< ::roboy_cognition_msgs::GetObjectResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::GetObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::GetObjectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_GETOBJECT_H