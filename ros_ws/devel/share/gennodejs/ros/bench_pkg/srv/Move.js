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

class MoveRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_angle = null;
      this.current_angular_velocity = null;
      this.current_angular_acceleration = null;
      this.desired_angle = null;
      this.desired_angular_velocity = null;
      this.desired_angular_acceleration = null;
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
    // Serializes a message object of type MoveRequest
    // Serialize message field [current_angle]
    bufferOffset = _serializer.float32(obj.current_angle, buffer, bufferOffset);
    // Serialize message field [current_angular_velocity]
    bufferOffset = _serializer.float32(obj.current_angular_velocity, buffer, bufferOffset);
    // Serialize message field [current_angular_acceleration]
    bufferOffset = _serializer.float32(obj.current_angular_acceleration, buffer, bufferOffset);
    // Serialize message field [desired_angle]
    bufferOffset = _serializer.float32(obj.desired_angle, buffer, bufferOffset);
    // Serialize message field [desired_angular_velocity]
    bufferOffset = _serializer.float32(obj.desired_angular_velocity, buffer, bufferOffset);
    // Serialize message field [desired_angular_acceleration]
    bufferOffset = _serializer.float32(obj.desired_angular_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveRequest
    let len;
    let data = new MoveRequest(null);
    // Deserialize message field [current_angle]
    data.current_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angular_velocity]
    data.current_angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_angular_acceleration]
    data.current_angular_acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_angle]
    data.desired_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_angular_velocity]
    data.desired_angular_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_angular_acceleration]
    data.desired_angular_acceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/MoveRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e55d874e75aac4ba40fb09ef74ce6514';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_angle
    float32 current_angular_velocity
    float32 current_angular_acceleration
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
    const resolved = new MoveRequest(null);
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

class MoveResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flex_myobrick_pwm = null;
      this.extend_myobrick_pwm = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveResponse
    // Serialize message field [flex_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.flex_myobrick_pwm, buffer, bufferOffset);
    // Serialize message field [extend_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.extend_myobrick_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveResponse
    let len;
    let data = new MoveResponse(null);
    // Deserialize message field [flex_myobrick_pwm]
    data.flex_myobrick_pwm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [extend_myobrick_pwm]
    data.extend_myobrick_pwm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/MoveResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb48fd0db65a57d5e7159a9d22fca96c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 flex_myobrick_pwm
    float32 extend_myobrick_pwm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: MoveRequest,
  Response: MoveResponse,
  md5sum() { return '998958e5a974f5bf0d304c6972634d0d'; },
  datatype() { return 'bench_pkg/Move'; }
};
