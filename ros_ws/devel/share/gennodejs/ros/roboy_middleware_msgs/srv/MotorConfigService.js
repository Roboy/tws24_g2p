// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorConfig = require('../msg/MotorConfig.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorConfigServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.legacy = null;
      this.config = null;
    }
    else {
      if (initObj.hasOwnProperty('legacy')) {
        this.legacy = initObj.legacy
      }
      else {
        this.legacy = false;
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new MotorConfig();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfigServiceRequest
    // Serialize message field [legacy]
    bufferOffset = _serializer.bool(obj.legacy, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = MotorConfig.serialize(obj.config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfigServiceRequest
    let len;
    let data = new MotorConfigServiceRequest(null);
    // Deserialize message field [legacy]
    data.legacy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = MotorConfig.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorConfig.getMessageSize(object.config);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/MotorConfigServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcd84830deb93befbbac3d9cc47a271d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool legacy
    MotorConfig config
    
    ================================================================================
    MSG: roboy_middleware_msgs/MotorConfig
    int32[] update_frequency
    uint8[] global_id
    uint8[] control_mode
    float32[] PWMLimit
    int32[] IntegralLimit
    int32[] Kp
    int32[] Ki
    int32[] Kd
    int32[] deadband
    float32[] setpoint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorConfigServiceRequest(null);
    if (msg.legacy !== undefined) {
      resolved.legacy = msg.legacy;
    }
    else {
      resolved.legacy = false
    }

    if (msg.config !== undefined) {
      resolved.config = MotorConfig.Resolve(msg.config)
    }
    else {
      resolved.config = new MotorConfig()
    }

    return resolved;
    }
};

class MotorConfigServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfigServiceResponse
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.int32(obj.mode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfigServiceResponse
    let len;
    let data = new MotorConfigServiceResponse(null);
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.mode.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/MotorConfigServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fd7890fd399a8964959d3d06ecb53b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorConfigServiceResponse(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorConfigServiceRequest,
  Response: MotorConfigServiceResponse,
  md5sum() { return 'c7c106ea6c43e18d48624729d5844f3e'; },
  datatype() { return 'roboy_middleware_msgs/MotorConfigService'; }
};
