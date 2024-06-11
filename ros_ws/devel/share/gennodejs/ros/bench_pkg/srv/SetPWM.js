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

class SetPWMRequest {
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
    // Serializes a message object of type SetPWMRequest
    // Serialize message field [flex_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.flex_myobrick_pwm, buffer, bufferOffset);
    // Serialize message field [extend_myobrick_pwm]
    bufferOffset = _serializer.float32(obj.extend_myobrick_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPWMRequest
    let len;
    let data = new SetPWMRequest(null);
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
    return 'bench_pkg/SetPWMRequest';
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
    const resolved = new SetPWMRequest(null);
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

class SetPWMResponse {
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
    // Serializes a message object of type SetPWMResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPWMResponse
    let len;
    let data = new SetPWMResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/SetPWMResponse';
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
    const resolved = new SetPWMResponse(null);
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
  Request: SetPWMRequest,
  Response: SetPWMResponse,
  md5sum() { return '20d18a942afc8e121fb01cf2222fde88'; },
  datatype() { return 'bench_pkg/SetPWM'; }
};
