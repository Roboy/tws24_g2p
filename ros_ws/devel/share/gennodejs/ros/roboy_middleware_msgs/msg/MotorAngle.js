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

class MotorAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.angles = null;
      this.raw_angles = null;
      this.raw_angles_prev = null;
      this.offset_angles = null;
      this.relative_angles = null;
      this.rev_counter = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('raw_angles')) {
        this.raw_angles = initObj.raw_angles
      }
      else {
        this.raw_angles = [];
      }
      if (initObj.hasOwnProperty('raw_angles_prev')) {
        this.raw_angles_prev = initObj.raw_angles_prev
      }
      else {
        this.raw_angles_prev = [];
      }
      if (initObj.hasOwnProperty('offset_angles')) {
        this.offset_angles = initObj.offset_angles
      }
      else {
        this.offset_angles = [];
      }
      if (initObj.hasOwnProperty('relative_angles')) {
        this.relative_angles = initObj.relative_angles
      }
      else {
        this.relative_angles = [];
      }
      if (initObj.hasOwnProperty('rev_counter')) {
        this.rev_counter = initObj.rev_counter
      }
      else {
        this.rev_counter = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorAngle
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float32(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [raw_angles]
    bufferOffset = _arraySerializer.int32(obj.raw_angles, buffer, bufferOffset, null);
    // Serialize message field [raw_angles_prev]
    bufferOffset = _arraySerializer.int32(obj.raw_angles_prev, buffer, bufferOffset, null);
    // Serialize message field [offset_angles]
    bufferOffset = _arraySerializer.int32(obj.offset_angles, buffer, bufferOffset, null);
    // Serialize message field [relative_angles]
    bufferOffset = _arraySerializer.int32(obj.relative_angles, buffer, bufferOffset, null);
    // Serialize message field [rev_counter]
    bufferOffset = _arraySerializer.int32(obj.rev_counter, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorAngle
    let len;
    let data = new MotorAngle(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [raw_angles]
    data.raw_angles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [raw_angles_prev]
    data.raw_angles_prev = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [offset_angles]
    data.offset_angles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [relative_angles]
    data.relative_angles = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [rev_counter]
    data.rev_counter = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.angles.length;
    length += 4 * object.raw_angles.length;
    length += 4 * object.raw_angles_prev.length;
    length += 4 * object.offset_angles.length;
    length += 4 * object.relative_angles.length;
    length += 4 * object.rev_counter.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/MotorAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74ec1ac15dd8a5dd0a5669e1aac02ac8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    float32[] angles
    int32[] raw_angles
    int32[] raw_angles_prev
    int32[] offset_angles
    int32[] relative_angles
    int32[] rev_counter
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorAngle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.raw_angles !== undefined) {
      resolved.raw_angles = msg.raw_angles;
    }
    else {
      resolved.raw_angles = []
    }

    if (msg.raw_angles_prev !== undefined) {
      resolved.raw_angles_prev = msg.raw_angles_prev;
    }
    else {
      resolved.raw_angles_prev = []
    }

    if (msg.offset_angles !== undefined) {
      resolved.offset_angles = msg.offset_angles;
    }
    else {
      resolved.offset_angles = []
    }

    if (msg.relative_angles !== undefined) {
      resolved.relative_angles = msg.relative_angles;
    }
    else {
      resolved.relative_angles = []
    }

    if (msg.rev_counter !== undefined) {
      resolved.rev_counter = msg.rev_counter;
    }
    else {
      resolved.rev_counter = []
    }

    return resolved;
    }
};

module.exports = MotorAngle;
