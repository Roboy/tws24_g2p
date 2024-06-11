// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AudioInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
      this.average_power = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = [];
      }
      if (initObj.hasOwnProperty('average_power')) {
        this.average_power = initObj.average_power
      }
      else {
        this.average_power = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioInfo
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.float32(obj.frequency, buffer, bufferOffset, null);
    // Serialize message field [average_power]
    bufferOffset = _arraySerializer.float32(obj.average_power, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioInfo
    let len;
    let data = new AudioInfo(null);
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [average_power]
    data.average_power = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.frequency.length;
    length += 4 * object.average_power.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_cognition_msgs/AudioInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b06171fe54f2668f04382a9767d00dfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] frequency
    float32[] average_power
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioInfo(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = []
    }

    if (msg.average_power !== undefined) {
      resolved.average_power = msg.average_power;
    }
    else {
      resolved.average_power = []
    }

    return resolved;
    }
};

module.exports = AudioInfo;
