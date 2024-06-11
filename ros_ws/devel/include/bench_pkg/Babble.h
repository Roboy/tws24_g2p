// Generated by gencpp from file bench_pkg/Babble.msg
// DO NOT EDIT!


#ifndef BENCH_PKG_MESSAGE_BABBLE_H
#define BENCH_PKG_MESSAGE_BABBLE_H

#include <ros/service_traits.h>


#include <bench_pkg/BabbleRequest.h>
#include <bench_pkg/BabbleResponse.h>


namespace bench_pkg
{

struct Babble
{

typedef BabbleRequest Request;
typedef BabbleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Babble
} // namespace bench_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bench_pkg::Babble > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::bench_pkg::Babble&) { return value(); }
};

template<>
struct DataType< ::bench_pkg::Babble > {
  static const char* value()
  {
    return "bench_pkg/Babble";
  }

  static const char* value(const ::bench_pkg::Babble&) { return value(); }
};


// service_traits::MD5Sum< ::bench_pkg::BabbleRequest> should match
// service_traits::MD5Sum< ::bench_pkg::Babble >
template<>
struct MD5Sum< ::bench_pkg::BabbleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bench_pkg::Babble >::value();
  }
  static const char* value(const ::bench_pkg::BabbleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bench_pkg::BabbleRequest> should match
// service_traits::DataType< ::bench_pkg::Babble >
template<>
struct DataType< ::bench_pkg::BabbleRequest>
{
  static const char* value()
  {
    return DataType< ::bench_pkg::Babble >::value();
  }
  static const char* value(const ::bench_pkg::BabbleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bench_pkg::BabbleResponse> should match
// service_traits::MD5Sum< ::bench_pkg::Babble >
template<>
struct MD5Sum< ::bench_pkg::BabbleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bench_pkg::Babble >::value();
  }
  static const char* value(const ::bench_pkg::BabbleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bench_pkg::BabbleResponse> should match
// service_traits::DataType< ::bench_pkg::Babble >
template<>
struct DataType< ::bench_pkg::BabbleResponse>
{
  static const char* value()
  {
    return DataType< ::bench_pkg::Babble >::value();
  }
  static const char* value(const ::bench_pkg::BabbleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BENCH_PKG_MESSAGE_BABBLE_H
