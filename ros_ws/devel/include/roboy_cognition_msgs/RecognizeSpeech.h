// Generated by gencpp from file roboy_cognition_msgs/RecognizeSpeech.msg
// DO NOT EDIT!


#ifndef ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZESPEECH_H
#define ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZESPEECH_H

#include <ros/service_traits.h>


#include <roboy_cognition_msgs/RecognizeSpeechRequest.h>
#include <roboy_cognition_msgs/RecognizeSpeechResponse.h>


namespace roboy_cognition_msgs
{

struct RecognizeSpeech
{

typedef RecognizeSpeechRequest Request;
typedef RecognizeSpeechResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RecognizeSpeech
} // namespace roboy_cognition_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeSpeech > {
  static const char* value()
  {
    return "74697ed3d931f6eede8bf3a8dfeca160";
  }

  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeech&) { return value(); }
};

template<>
struct DataType< ::roboy_cognition_msgs::RecognizeSpeech > {
  static const char* value()
  {
    return "roboy_cognition_msgs/RecognizeSpeech";
  }

  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeech&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeSpeechRequest> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeSpeech >
template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeSpeechRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::RecognizeSpeech >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeechRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::RecognizeSpeechRequest> should match
// service_traits::DataType< ::roboy_cognition_msgs::RecognizeSpeech >
template<>
struct DataType< ::roboy_cognition_msgs::RecognizeSpeechRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::RecognizeSpeech >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeechRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeSpeechResponse> should match
// service_traits::MD5Sum< ::roboy_cognition_msgs::RecognizeSpeech >
template<>
struct MD5Sum< ::roboy_cognition_msgs::RecognizeSpeechResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_cognition_msgs::RecognizeSpeech >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeechResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_cognition_msgs::RecognizeSpeechResponse> should match
// service_traits::DataType< ::roboy_cognition_msgs::RecognizeSpeech >
template<>
struct DataType< ::roboy_cognition_msgs::RecognizeSpeechResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_cognition_msgs::RecognizeSpeech >::value();
  }
  static const char* value(const ::roboy_cognition_msgs::RecognizeSpeechResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_COGNITION_MSGS_MESSAGE_RECOGNIZESPEECH_H
