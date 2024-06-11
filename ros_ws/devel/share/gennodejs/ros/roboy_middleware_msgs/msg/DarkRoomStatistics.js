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

class DarkRoomStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
      this.lighthouse = null;
      this.update_frequency_horizontal = null;
      this.update_frequency_vertical = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('lighthouse')) {
        this.lighthouse = initObj.lighthouse
      }
      else {
        this.lighthouse = 0;
      }
      if (initObj.hasOwnProperty('update_frequency_horizontal')) {
        this.update_frequency_horizontal = initObj.update_frequency_horizontal
      }
      else {
        this.update_frequency_horizontal = [];
      }
      if (initObj.hasOwnProperty('update_frequency_vertical')) {
        this.update_frequency_vertical = initObj.update_frequency_vertical
      }
      else {
        this.update_frequency_vertical = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoomStatistics
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [lighthouse]
    bufferOffset = _serializer.int32(obj.lighthouse, buffer, bufferOffset);
    // Serialize message field [update_frequency_horizontal]
    bufferOffset = _arraySerializer.float32(obj.update_frequency_horizontal, buffer, bufferOffset, null);
    // Serialize message field [update_frequency_vertical]
    bufferOffset = _arraySerializer.float32(obj.update_frequency_vertical, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoomStatistics
    let len;
    let data = new DarkRoomStatistics(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lighthouse]
    data.lighthouse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [update_frequency_horizontal]
    data.update_frequency_horizontal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [update_frequency_vertical]
    data.update_frequency_vertical = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    length += 4 * object.update_frequency_horizontal.length;
    length += 4 * object.update_frequency_vertical.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/DarkRoomStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e96c4c9ae71be87963c0b1fcc870765';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_name
    int32 lighthouse
    float32[] update_frequency_horizontal
    float32[] update_frequency_vertical
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoomStatistics(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.lighthouse !== undefined) {
      resolved.lighthouse = msg.lighthouse;
    }
    else {
      resolved.lighthouse = 0
    }

    if (msg.update_frequency_horizontal !== undefined) {
      resolved.update_frequency_horizontal = msg.update_frequency_horizontal;
    }
    else {
      resolved.update_frequency_horizontal = []
    }

    if (msg.update_frequency_vertical !== undefined) {
      resolved.update_frequency_vertical = msg.update_frequency_vertical;
    }
    else {
      resolved.update_frequency_vertical = []
    }

    return resolved;
    }
};

module.exports = DarkRoomStatistics;
