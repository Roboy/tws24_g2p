// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.update_frequency = null;
      this.global_id = null;
      this.control_mode = null;
      this.PWMLimit = null;
      this.IntegralLimit = null;
      this.Kp = null;
      this.Ki = null;
      this.Kd = null;
      this.deadband = null;
      this.setpoint = null;
    }
    else {
      if (initObj.hasOwnProperty('update_frequency')) {
        this.update_frequency = initObj.update_frequency
      }
      else {
        this.update_frequency = [];
      }
      if (initObj.hasOwnProperty('global_id')) {
        this.global_id = initObj.global_id
      }
      else {
        this.global_id = [];
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = [];
      }
      if (initObj.hasOwnProperty('PWMLimit')) {
        this.PWMLimit = initObj.PWMLimit
      }
      else {
        this.PWMLimit = [];
      }
      if (initObj.hasOwnProperty('IntegralLimit')) {
        this.IntegralLimit = initObj.IntegralLimit
      }
      else {
        this.IntegralLimit = [];
      }
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = [];
      }
      if (initObj.hasOwnProperty('Ki')) {
        this.Ki = initObj.Ki
      }
      else {
        this.Ki = [];
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = [];
      }
      if (initObj.hasOwnProperty('deadband')) {
        this.deadband = initObj.deadband
      }
      else {
        this.deadband = [];
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfig
    // Serialize message field [update_frequency]
    bufferOffset = _arraySerializer.int32(obj.update_frequency, buffer, bufferOffset, null);
    // Serialize message field [global_id]
    bufferOffset = _arraySerializer.uint8(obj.global_id, buffer, bufferOffset, null);
    // Serialize message field [control_mode]
    bufferOffset = _arraySerializer.uint8(obj.control_mode, buffer, bufferOffset, null);
    // Serialize message field [PWMLimit]
    bufferOffset = _arraySerializer.float32(obj.PWMLimit, buffer, bufferOffset, null);
    // Serialize message field [IntegralLimit]
    bufferOffset = _arraySerializer.int32(obj.IntegralLimit, buffer, bufferOffset, null);
    // Serialize message field [Kp]
    bufferOffset = _arraySerializer.int32(obj.Kp, buffer, bufferOffset, null);
    // Serialize message field [Ki]
    bufferOffset = _arraySerializer.int32(obj.Ki, buffer, bufferOffset, null);
    // Serialize message field [Kd]
    bufferOffset = _arraySerializer.int32(obj.Kd, buffer, bufferOffset, null);
    // Serialize message field [deadband]
    bufferOffset = _arraySerializer.int32(obj.deadband, buffer, bufferOffset, null);
    // Serialize message field [setpoint]
    bufferOffset = _arraySerializer.float32(obj.setpoint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfig
    let len;
    let data = new MotorConfig(null);
    // Deserialize message field [update_frequency]
    data.update_frequency = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [global_id]
    data.global_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_mode]
    data.control_mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [PWMLimit]
    data.PWMLimit = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [IntegralLimit]
    data.IntegralLimit = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Kp]
    data.Kp = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Ki]
    data.Ki = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Kd]
    data.Kd = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [deadband]
    data.deadband = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [setpoint]
    data.setpoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.update_frequency.length;
    length += object.global_id.length;
    length += object.control_mode.length;
    length += 4 * object.PWMLimit.length;
    length += 4 * object.IntegralLimit.length;
    length += 4 * object.Kp.length;
    length += 4 * object.Ki.length;
    length += 4 * object.Kd.length;
    length += 4 * object.deadband.length;
    length += 4 * object.setpoint.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/MotorConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7747d06877cbad5be373b8fc0574ddaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MotorConfig(null);
    if (msg.update_frequency !== undefined) {
      resolved.update_frequency = msg.update_frequency;
    }
    else {
      resolved.update_frequency = []
    }

    if (msg.global_id !== undefined) {
      resolved.global_id = msg.global_id;
    }
    else {
      resolved.global_id = []
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = []
    }

    if (msg.PWMLimit !== undefined) {
      resolved.PWMLimit = msg.PWMLimit;
    }
    else {
      resolved.PWMLimit = []
    }

    if (msg.IntegralLimit !== undefined) {
      resolved.IntegralLimit = msg.IntegralLimit;
    }
    else {
      resolved.IntegralLimit = []
    }

    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = []
    }

    if (msg.Ki !== undefined) {
      resolved.Ki = msg.Ki;
    }
    else {
      resolved.Ki = []
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = []
    }

    if (msg.deadband !== undefined) {
      resolved.deadband = msg.deadband;
    }
    else {
      resolved.deadband = []
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = msg.setpoint;
    }
    else {
      resolved.setpoint = []
    }

    return resolved;
    }
};

module.exports = MotorConfig;
