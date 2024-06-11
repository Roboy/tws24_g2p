// Generated by gencpp from file bench_pkg/Activate.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_ACTIVATE_H
#define BENCH_PKG_MESSAGE_ACTIVATE_H

#include <ros/service_traits.h>


#include <bench_pkg/ActivateRequest.h>
#include <bench_pkg/ActivateResponse.h>


namespace bench_pkg
{

struct Activate
{

typedef ActivateRequest Request;
typedef ActivateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Activate
} // namespace bench_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bench_pkg::Activate > {
  static const char* value()
  {
    return "251c4a167cb335bc980389871f0bb7af";
  }

  static const char* value(const ::bench_pkg::Activate&) { return value(); }
};

template<>
struct DataType< ::bench_pkg::Activate > {
  static const char* value()
  {
    return "bench_pkg/Activate";
  }

  static const char* value(const ::bench_pkg::Activate&) { return value(); }
};


// service_traits::MD5Sum< ::bench_pkg::ActivateRequest> should match
// service_traits::MD5Sum< ::bench_pkg::Activate >
template<>
struct MD5Sum< ::bench_pkg::ActivateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bench_pkg::Activate >::value();
  }
  static const char* value(const ::bench_pkg::ActivateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bench_pkg::ActivateRequest> should match
// service_traits::DataType< ::bench_pkg::Activate >
template<>
struct DataType< ::bench_pkg::ActivateRequest>
{
  static const char* value()
  {
    return DataType< ::bench_pkg::Activate >::value();
  }
  static const char* value(const ::bench_pkg::ActivateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bench_pkg::ActivateResponse> should match
// service_traits::MD5Sum< ::bench_pkg::Activate >
template<>
struct MD5Sum< ::bench_pkg::ActivateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bench_pkg::Activate >::value();
  }
  static const char* value(const ::bench_pkg::ActivateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bench_pkg::ActivateResponse> should match
// service_traits::DataType< ::bench_pkg::Activate >
template<>
struct DataType< ::bench_pkg::ActivateResponse>
{
  static const char* value()
  {
    return DataType< ::bench_pkg::Activate >::value();
  }
  static const char* value(const ::bench_pkg::ActivateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BENCH_PKG_MESSAGE_ACTIVATE_H