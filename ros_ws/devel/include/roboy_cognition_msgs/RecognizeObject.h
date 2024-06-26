// Generated by gencpp from file roboy_cognition_msgs/RecognizeObject.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZEOBJECT_H
#define ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZEOBJECT_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/RecognizeObjectRequest.h>
#include <roboy_cognition_msgs/RecognizeObjectResponse.h>


namespace roboy_cognition_msgs
{

struct RecognizeObject
{

typedef RecognizeObjectRequest Request;
typedef RecognizeObjectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RecognizeObject
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeObject > {
  static const char* value()
  {
    return "258a9296e168e47170c83d2bf19a1ae6";
  }

  static const char* value(const ::roboy_cognition_msgs::RecognizeObject&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::RecognizeObject > {
  static const char* value()
  {
    return "roboy_cognition_msgs/RecognizeObject";
  }

  static const char* value(const ::roboy_cognition_msgs::RecognizeObject&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeObjectRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeObject >
template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeObjectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::RecognizeObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeObjectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::RecognizeObjectRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::RecognizeObject >
template<>
struct DataType< ::roboy_cognition_msgs::RecognizeObjectRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::RecognizeObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeObjectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeObjectResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeObject >
template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeObjectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::RecognizeObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeObjectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::RecognizeObjectResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::RecognizeObject >
template<>
struct DataType< ::roboy_cognition_msgs::RecognizeObjectResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::RecognizeObject >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeObjectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZEOBJECT_H
