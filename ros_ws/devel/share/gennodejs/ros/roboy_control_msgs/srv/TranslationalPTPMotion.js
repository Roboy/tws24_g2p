// Auto-generated. Do not edit!

// (in-package roboy_control_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TranslationalPTPMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_point = null;
      this.end_point = null;
    }
    else {
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslationalPTPMotionRequest
    // Serialize message field [start_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_point, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslationalPTPMotionRequest
    let len;
    let data = new TranslationalPTPMotionRequest(null);
    // Deserialize message field [start_point]
    data.start_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_control_msgs/TranslationalPTPMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0125c553546d7123dccaeab992a9e29e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point start_point
    geometry_msgs/Point end_point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslationalPTPMotionRequest(null);
    if (msg.start_point !== undefined) {
      resolved.start_point = geometry_msgs.msg.Point.Resolve(msg.start_point)
    }
    else {
      resolved.start_point = new geometry_msgs.msg.Point()
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = geometry_msgs.msg.Point.Resolve(msg.end_point)
    }
    else {
      resolved.end_point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class TranslationalPTPMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslationalPTPMotionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslationalPTPMotionResponse
    let len;
    let data = new TranslationalPTPMotionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_control_msgs/TranslationalPTPMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslationalPTPMotionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TranslationalPTPMotionRequest,
  Response: TranslationalPTPMotionResponse,
  md5sum() { return '98431afc4e02d00f0c1c221ab989e445'; },
  datatype() { return 'roboy_control_msgs/TranslationalPTPMotion'; }
};
