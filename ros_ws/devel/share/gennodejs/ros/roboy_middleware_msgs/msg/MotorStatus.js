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

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.power_sense = null;
      this.pwm_ref = null;
      this.position = null;
      this.velocity = null;
      this.displacement = null;
      this.current = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('power_sense')) {
        this.power_sense = initObj.power_sense
      }
      else {
        this.power_sense = false;
      }
      if (initObj.hasOwnProperty('pwm_ref')) {
        this.pwm_ref = initObj.pwm_ref
      }
      else {
        this.pwm_ref = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('displacement')) {
        this.displacement = initObj.displacement
      }
      else {
        this.displacement = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [power_sense]
    bufferOffset = _serializer.bool(obj.power_sense, buffer, bufferOffset);
    // Serialize message field [pwm_ref]
    bufferOffset = _arraySerializer.int32(obj.pwm_ref, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.int32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.int32(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [displacement]
    bufferOffset = _arraySerializer.int32(obj.displacement, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.int16(obj.current, buffer, bufferOffset, null);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.int32(obj.angle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_sense]
    data.power_sense = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwm_ref]
    data.pwm_ref = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [displacement]
    data.displacement = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pwm_ref.length;
    length += 4 * object.position.length;
    length += 4 * object.velocity.length;
    length += 4 * object.displacement.length;
    length += 2 * object.current.length;
    length += 4 * object.angle.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff901b4c758403a6897b5a0d94561c04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    bool power_sense
    int32[] pwm_ref
    int32[] position
    int32[] velocity
    int32[] displacement
    int16[] current
    # only available for myoBricks
    int32[] angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.power_sense !== undefined) {
      resolved.power_sense = msg.power_sense;
    }
    else {
      resolved.power_sense = false
    }

    if (msg.pwm_ref !== undefined) {
      resolved.pwm_ref = msg.pwm_ref;
    }
    else {
      resolved.pwm_ref = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.displacement !== undefined) {
      resolved.displacement = msg.displacement;
    }
    else {
      resolved.displacement = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    return resolved;
    }
};

module.exports = MotorStatus;
