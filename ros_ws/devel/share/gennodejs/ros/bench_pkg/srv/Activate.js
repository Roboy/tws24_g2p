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

class ActivateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flex_myobrick_pwm = null;
      this.extend_myobrick_pwm = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('flex_myobrick_pwm')) {
        this.flex_myobrick_pwm = initObj.flex_myobrick_pwm
      }
      else {
        this.flex_myobrick_pwm = 0.0;
      }
      if (initObj.hasOwnProperty('extend_myobrick_pwm')) {
        this.extend_myobrick_pwm = initObj.extend_myobrick_pwm
      }
      else {
        this.extend_myobrick_pwm = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActivateRequest
    // Serialize message field [flex_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.flex_myobrick_pwm, buffer, bufferOffset);
    // Serialize message field [extend_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.extend_myobrick_pwm, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivateRequest
    let len;
    let data = new ActivateRequest(null);
    // Deserialize message field [flex_myobrick_pwm]
    data.flex_myobrick_pwm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [extend_myobrick_pwm]
    data.extend_myobrick_pwm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/ActivateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfa215f01ace98ac461ef9dc29f2f878';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 flex_myobrick_pwm
    float32 extend_myobrick_pwm
    float32 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActivateRequest(null);
    if (msg.flex_myobrick_pwm !== undefined) {
      resolved.flex_myobrick_pwm = msg.flex_myobrick_pwm;
    }
    else {
      resolved.flex_myobrick_pwm = 0.0
    }

    if (msg.extend_myobrick_pwm !== undefined) {
      resolved.extend_myobrick_pwm = msg.extend_myobrick_pwm;
    }
    else {
      resolved.extend_myobrick_pwm = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

class ActivateResponse {
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
    // Serializes a message object of type ActivateResponse
    // Serialize message field [current_angle]
    bufferOffset = _serializer.float32(obj.current_angle, buffer, bufferOffset);
    // Serialize message field [current_angular_velocity]
    bufferOffset = _serializer.float32(obj.current_angular_velocity, buffer, bufferOffset);
    // Serialize message field [current_angular_acceleration]
    bufferOffset = _serializer.float32(obj.current_angular_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActivateResponse
    let len;
    let data = new ActivateResponse(null);
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
    return 'bench_pkg/ActivateResponse';
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
    const resolved = new ActivateResponse(null);
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
  Request: ActivateRequest,
  Response: ActivateResponse,
  md5sum() { return '251c4a167cb335bc980389871f0bb7af'; },
  datatype() { return 'bench_pkg/Activate'; }
};
