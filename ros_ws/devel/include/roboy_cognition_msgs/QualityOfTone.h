// Generated by gencpp from file roboy_cognition_msgs/QualityOfTone.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONE_H
#define ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONE_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/QualityOfToneRequest.h>
#include <roboy_cognition_msgs/QualityOfToneResponse.h>


namespace roboy_cognition_msgs
{

struct QualityOfTone
{

typedef QualityOfToneRequest Request;
typedef QualityOfToneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct QualityOfTone
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::QualityOfTone > {
  static const char* value()
  {
    return "eeaf952b12443d5b5a1e7a092753228a";
  }

  static const char* value(const ::roboy_cognition_msgs::QualityOfTone&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::QualityOfTone > {
  static const char* value()
  {
    return "roboy_cognition_msgs/QualityOfTone";
  }

  static const char* value(const ::roboy_cognition_msgs::QualityOfTone&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::QualityOfToneRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::QualityOfTone >
template<>
struct MD5Sum< ::roboy_cognition_msgs::QualityOfToneRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::QualityOfTone >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::QualityOfToneRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::QualityOfToneRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::QualityOfTone >
template<>
struct DataType< ::roboy_cognition_msgs::QualityOfToneRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::QualityOfTone >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::QualityOfToneRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::QualityOfToneResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::QualityOfTone >
template<>
struct MD5Sum< ::roboy_cognition_msgs::QualityOfToneResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::QualityOfTone >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::QualityOfToneResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::QualityOfToneResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::QualityOfTone >
template<>
struct DataType< ::roboy_cognition_msgs::QualityOfToneResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::QualityOfTone >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::QualityOfToneResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_QUALITYOFTONE_H
