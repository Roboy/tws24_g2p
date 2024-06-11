// Auto-generated. Do not edit!

// (in-package bench_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetCurrentKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentKinematicsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentKinematicsRequest
    let len;
    let data = new GetCurrentKinematicsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/GetCurrentKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentKinematicsRequest(null);
    return resolved;
    }
};

class GetCurrentKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_angle = null;
      this.current_angular_velocity = null;
      this.current_angular_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('current_angle')) {
        this.current_angle = initObj.current_angle
      }
      else {
        this.current_angle = 0.0;
      }
      if (initObj.hasOwnProperty('current_angular_velocity')) {
        this.current_angular_velocity = initObj.current_angular_velocity
      }
      else {
        this.current_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('current_angular_acceleration')) {
        this.current_angular_acceleration = initObj.current_angular_acceleration
      }
      else {
        this.current_angular_acceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentKinematicsResponse
    // Serialize message field [current_angle]
    bufferOffset = _serializer.float32(obj.current_angle, buffer, bufferOffset);
    // Serialize message field [current_angular_velocity]
    bufferOffset = _serializer.float32(obj.current_angular_velocity, buffer, bufferOffset);
    // Serialize message field [current_angular_acceleration]
    bufferOffset = _serializer.float32(obj.current_angular_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentKinematicsResponse
    let len;
    let data = new GetCurrentKinematicsResponse(null);
    // Deserialize message field [current_angle]
    data.current_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angular_velocity]
    data.current_angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angular_acceleration]
    data.current_angular_acceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/GetCurrentKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94213a82b2b3ecbefd3ad0c853a1bfcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_angle
    float32 current_angular_velocity
    float32 current_angular_acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentKinematicsResponse(null);
    if (msg.current_angle !== undefined) {
      resolved.current_angle = msg.current_angle;
    }
    else {
      resolved.current_angle = 0.0
    }

    if (msg.current_angular_velocity !== undefined) {
      resolved.current_angular_velocity = msg.current_angular_velocity;
    }
    else {
      resolved.current_angular_velocity = 0.0
    }

    if (msg.current_angular_acceleration !== undefined) {
      resolved.current_angular_acceleration = msg.current_angular_acceleration;
    }
    else {
      resolved.current_angular_acceleration = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCurrentKinematicsRequest,
  Response: GetCurrentKinematicsResponse,
  md5sum() { return '94213a82b2b3ecbefd3ad0c853a1bfcf'; },
  datatype() { return 'bench_pkg/GetCurrentKinematics'; }
};
