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

class JointStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.absAngles = null;
      this.relAngles = null;
    }
    else {
      if (initObj.hasOwnProperty('absAngles')) {
        this.absAngles = initObj.absAngles
      }
      else {
        this.absAngles = [];
      }
      if (initObj.hasOwnProperty('relAngles')) {
        this.relAngles = initObj.relAngles
      }
      else {
        this.relAngles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointStatus
    // Serialize message field [absAngles]
    bufferOffset = _arraySerializer.uint32(obj.absAngles, buffer, bufferOffset, null);
    // Serialize message field [relAngles]
    bufferOffset = _arraySerializer.uint32(obj.relAngles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointStatus
    let len;
    let data = new JointStatus(null);
    // Deserialize message field [absAngles]
    data.absAngles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [relAngles]
    data.relAngles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.absAngles.length;
    length += 4 * object.relAngles.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/JointStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4933cd49b716032e0de2cf902e8150fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] absAngles
    uint32[] relAngles
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointStatus(null);
    if (msg.absAngles !== undefined) {
      resolved.absAngles = msg.absAngles;
    }
    else {
      resolved.absAngles = []
    }

    if (msg.relAngles !== undefined) {
      resolved.relAngles = msg.relAngles;
    }
    else {
      resolved.relAngles = []
    }

    return resolved;
    }
};

module.exports = JointStatus;
