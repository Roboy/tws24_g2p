// Generated by gencpp from file roboy_cognition_msgs/CheckQuery.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_CHECKQUERY_H
#define ROBOY_COGNITION_MSGS_MESSAGE_CHECKQUERY_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/CheckQueryRequest.h>
#include <roboy_cognition_msgs/CheckQueryResponse.h>


namespace roboy_cognition_msgs
{

struct CheckQuery
{

typedef CheckQueryRequest Request;
typedef CheckQueryResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CheckQuery
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::CheckQuery > {
  static const char* value()
  {
    return "5404d412a67bedecd70067ff4e66aff8";
  }

  static const char* value(const ::roboy_cognition_msgs::CheckQuery&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::CheckQuery > {
  static const char* value()
  {
    return "roboy_cognition_msgs/CheckQuery";
  }

  static const char* value(const ::roboy_cognition_msgs::CheckQuery&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::CheckQueryRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::CheckQuery >
template<>
struct MD5Sum< ::roboy_cognition_msgs::CheckQueryRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::CheckQuery >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::CheckQueryRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::CheckQueryRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::CheckQuery >
template<>
struct DataType< ::roboy_cognition_msgs::CheckQueryRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::CheckQuery >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::CheckQueryRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::CheckQueryResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::CheckQuery >
template<>
struct MD5Sum< ::roboy_cognition_msgs::CheckQueryResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::CheckQuery >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::CheckQueryResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::CheckQueryResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::CheckQuery >
template<>
struct DataType< ::roboy_cognition_msgs::CheckQueryResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::CheckQuery >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::CheckQueryResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_CHECKQUERY_H
