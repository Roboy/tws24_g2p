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

class DesiredKinematicsInputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesiredKinematicsInputRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesiredKinematicsInputRequest
    let len;
    let data = new DesiredKinematicsInputRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/DesiredKinematicsInputRequest';
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
    const resolved = new DesiredKinematicsInputRequest(null);
    return resolved;
    }
};

class DesiredKinematicsInputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_angle = null;
      this.desired_angular_velocity = null;
      this.desired_angular_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_angle')) {
        this.desired_angle = initObj.desired_angle
      }
      else {
        this.desired_angle = 0.0;
      }
      if (initObj.hasOwnProperty('desired_angular_velocity')) {
        this.desired_angular_velocity = initObj.desired_angular_velocity
      }
      else {
        this.desired_angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('desired_angular_acceleration')) {
        this.desired_angular_acceleration = initObj.desired_angular_acceleration
      }
      else {
        this.desired_angular_acceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DesiredKinematicsInputResponse
    // Serialize message field [desired_angle]
    bufferOffset = _serializer.float32(obj.desired_angle, buffer, bufferOffset);
    // Serialize message field [desired_angular_velocity]
    bufferOffset = _serializer.float32(obj.desired_angular_velocity, buffer, bufferOffset);
    // Serialize message field [desired_angular_acceleration]
    bufferOffset = _serializer.float32(obj.desired_angular_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DesiredKinematicsInputResponse
    let len;
    let data = new DesiredKinematicsInputResponse(null);
    // Deserialize message field [desired_angle]
    data.desired_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_angular_velocity]
    data.desired_angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_angular_acceleration]
    data.desired_angular_acceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/DesiredKinematicsInputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df533ed2fd99d430c4c78a9486207074';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 desired_angle
    float32 desired_angular_velocity
    float32 desired_angular_acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DesiredKinematicsInputResponse(null);
    if (msg.desired_angle !== undefined) {
      resolved.desired_angle = msg.desired_angle;
    }
    else {
      resolved.desired_angle = 0.0
    }

    if (msg.desired_angular_velocity !== undefined) {
      resolved.desired_angular_velocity = msg.desired_angular_velocity;
    }
    else {
      resolved.desired_angular_velocity = 0.0
    }

    if (msg.desired_angular_acceleration !== undefined) {
      resolved.desired_angular_acceleration = msg.desired_angular_acceleration;
    }
    else {
      resolved.desired_angular_acceleration = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: DesiredKinematicsInputRequest,
  Response: DesiredKinematicsInputResponse,
  md5sum() { return 'df533ed2fd99d430c4c78a9486207074'; },
  datatype() { return 'bench_pkg/DesiredKinematicsInput'; }
};
