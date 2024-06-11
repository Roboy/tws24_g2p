// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RecordingControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboy_id = null;
      this.start_time = null;
      this.stop_time = null;
    }
    else {
      if (initObj.hasOwnProperty('roboy_id')) {
        this.roboy_id = initObj.roboy_id
      }
      else {
        this.roboy_id = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
      if (initObj.hasOwnProperty('stop_time')) {
        this.stop_time = initObj.stop_time
      }
      else {
        this.stop_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordingControl
    // Serialize message field [roboy_id]
    bufferOffset = _serializer.int32(obj.roboy_id, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.uint32(obj.start_time, buffer, bufferOffset);
    // Serialize message field [stop_time]
    bufferOffset = _serializer.uint32(obj.stop_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordingControl
    let len;
    let data = new RecordingControl(null);
    // Deserialize message field [roboy_id]
    data.roboy_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stop_time]
    data.stop_time = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/RecordingControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38d3d1699f1a558cbba880a0ee7ca55e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboy_id
    uint32 start_time
    uint32 stop_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordingControl(null);
    if (msg.roboy_id !== undefined) {
      resolved.roboy_id = msg.roboy_id;
    }
    else {
      resolved.roboy_id = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    if (msg.stop_time !== undefined) {
      resolved.stop_time = msg.stop_time;
    }
    else {
      resolved.stop_time = 0
    }

    return resolved;
    }
};

module.exports = RecordingControl;
