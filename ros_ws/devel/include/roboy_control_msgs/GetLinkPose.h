// Generated by gencpp from file roboy_control_msgs/GetLinkPose.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSE_H
#define ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSE_H

#include <ros/service_traits.h>


#include <roboy_control_msgs/GetLinkPoseRequest.h>
#include <roboy_control_msgs/GetLinkPoseResponse.h>


namespace roboy_control_msgs
{

struct GetLinkPose
{

typedef GetLinkPoseRequest Request;
typedef GetLinkPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetLinkPose
} // namespace roboy_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_control_msgs::GetLinkPose > {
  static const char* value()
  {
    return "2e5fd53ebd98cb5347be4c4321e60048";
  }

  static const char* value(const ::roboy_control_msgs::GetLinkPose&) { return value(); }
};

template<>
struct DataType< ::roboy_control_msgs::GetLinkPose > {
  static const char* value()
  {
    return "roboy_control_msgs/GetLinkPose";
  }

  static const char* value(const ::roboy_control_msgs::GetLinkPose&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_control_msgs::GetLinkPoseRequest> should match
// service_traits::MD5Sum< ::roboy_control_msgs::GetLinkPose >
template<>
struct MD5Sum< ::roboy_control_msgs::GetLinkPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_control_msgs::GetLinkPose >::value();
  }
  static const char* value(const ::roboy_control_msgs::GetLinkPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_control_msgs::GetLinkPoseRequest> should match
// service_traits::DataType< ::roboy_control_msgs::GetLinkPose >
template<>
struct DataType< ::roboy_control_msgs::GetLinkPoseRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_control_msgs::GetLinkPose >::value();
  }
  static const char* value(const ::roboy_control_msgs::GetLinkPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_control_msgs::GetLinkPoseResponse> should match
// service_traits::MD5Sum< ::roboy_control_msgs::GetLinkPose >
template<>
struct MD5Sum< ::roboy_control_msgs::GetLinkPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_control_msgs::GetLinkPose >::value();
  }
  static const char* value(const ::roboy_control_msgs::GetLinkPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_control_msgs::GetLinkPoseResponse> should match
// service_traits::DataType< ::roboy_control_msgs::GetLinkPose >
template<>
struct DataType< ::roboy_control_msgs::GetLinkPoseResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_control_msgs::GetLinkPose >::value();
  }
  static const char* value(const ::roboy_control_msgs::GetLinkPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_GETLINKPOSE_H