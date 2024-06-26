// Generated by gencpp from file roboy_control_msgs/ListItems.msg
// DO NOT EDIT!


#ifndef ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMS_H
#define ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMS_H

#include <ros/service_traits.h>


#include <roboy_control_msgs/ListItemsRequest.h>
#include <roboy_control_msgs/ListItemsResponse.h>


namespace roboy_control_msgs
{

struct ListItems
{

typedef ListItemsRequest Request;
typedef ListItemsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ListItems
} // namespace roboy_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::roboy_control_msgs::ListItems > {
  static const char* value()
  {
    return "f59feb99c2158f8692d1c10f10534d0b";
  }

  static const char* value(const ::roboy_control_msgs::ListItems&) { return value(); }
};

template<>
struct DataType< ::roboy_control_msgs::ListItems > {
  static const char* value()
  {
    return "roboy_control_msgs/ListItems";
  }

  static const char* value(const ::roboy_control_msgs::ListItems&) { return value(); }
};


// service_traits::MD5Sum< ::roboy_control_msgs::ListItemsRequest> should match
// service_traits::MD5Sum< ::roboy_control_msgs::ListItems >
template<>
struct MD5Sum< ::roboy_control_msgs::ListItemsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_control_msgs::ListItems >::value();
  }
  static const char* value(const ::roboy_control_msgs::ListItemsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_control_msgs::ListItemsRequest> should match
// service_traits::DataType< ::roboy_control_msgs::ListItems >
template<>
struct DataType< ::roboy_control_msgs::ListItemsRequest>
{
  static const char* value()
  {
    return DataType< ::roboy_control_msgs::ListItems >::value();
  }
  static const char* value(const ::roboy_control_msgs::ListItemsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::roboy_control_msgs::ListItemsResponse> should match
// service_traits::MD5Sum< ::roboy_control_msgs::ListItems >
template<>
struct MD5Sum< ::roboy_control_msgs::ListItemsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::roboy_control_msgs::ListItems >::value();
  }
  static const char* value(const ::roboy_control_msgs::ListItemsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::roboy_control_msgs::ListItemsResponse> should match
// service_traits::DataType< ::roboy_control_msgs::ListItems >
template<>
struct DataType< ::roboy_control_msgs::ListItemsResponse>
{
  static const char* value()
  {
    return DataType< ::roboy_control_msgs::ListItems >::value();
  }
  static const char* value(const ::roboy_control_msgs::ListItemsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOY_CONTROL_MSGS_MESSAGE_LISTITEMS_H
