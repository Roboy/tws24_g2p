// Auto-generated. Do not edit!

// (in-package roboy_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StartRecordTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.body_parts = null;
      this.id_list = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('body_parts')) {
        this.body_parts = initObj.body_parts
      }
      else {
        this.body_parts = [];
      }
      if (initObj.hasOwnProperty('id_list')) {
        this.id_list = initObj.id_list
      }
      else {
        this.id_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartRecordTrajectory
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [body_parts]
    bufferOffset = _arraySerializer.string(obj.body_parts, buffer, bufferOffset, null);
    // Serialize message field [id_list]
    bufferOffset = _arraySerializer.int8(obj.id_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRecordTrajectory
    let len;
    let data = new StartRecordTrajectory(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body_parts]
    data.body_parts = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [id_list]
    data.id_list = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    object.body_parts.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.id_list.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_control_msgs/StartRecordTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87f4ca9ce44f7e39ae96c9a7bde4f0da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string[] body_parts # to record
    int8[] id_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartRecordTrajectory(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.body_parts !== undefined) {
      resolved.body_parts = msg.body_parts;
    }
    else {
      resolved.body_parts = []
    }

    if (msg.id_list !== undefined) {
      resolved.id_list = msg.id_list;
    }
    else {
      resolved.id_list = []
    }

    return resolved;
    }
};

module.exports = StartRecordTrajectory;
