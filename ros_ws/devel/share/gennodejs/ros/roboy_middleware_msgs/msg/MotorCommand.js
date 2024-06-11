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

class MotorCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global_id = null;
      this.setpoint = null;
    }
    else {
      if (initObj.hasOwnProperty('global_id')) {
        this.global_id = initObj.global_id
      }
      else {
        this.global_id = [];
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
    // Serializes a message object of type MotorCommand
    // Serialize message field [global_id]
    bufferOffset = _arraySerializer.uint8(obj.global_id, buffer, bufferOffset, null);
    // Serialize message field [setpoint]
    bufferOffset = _arraySerializer.float32(obj.setpoint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCommand
    let len;
    let data = new MotorCommand(null);
    // Deserialize message field [global_id]
    data.global_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [setpoint]
    data.setpoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.global_id.length;
    length += 4 * object.setpoint.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/MotorCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaa17bf08ee721981a6d18f514c6f029';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] global_id
    float32[] setpoint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCommand(null);
    if (msg.global_id !== undefined) {
      resolved.global_id = msg.global_id;
    }
    else {
      resolved.global_id = []
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

module.exports = MotorCommand;
