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

class VisualizationControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboy_id = null;
      this.control = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('roboy_id')) {
        this.roboy_id = initObj.roboy_id
      }
      else {
        this.roboy_id = 0;
      }
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisualizationControl
    // Serialize message field [roboy_id]
    bufferOffset = _serializer.int32(obj.roboy_id, buffer, bufferOffset);
    // Serialize message field [control]
    bufferOffset = _serializer.int32(obj.control, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualizationControl
    let len;
    let data = new VisualizationControl(null);
    // Deserialize message field [roboy_id]
    data.roboy_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control]
    data.control = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/VisualizationControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f08b9af8c2344f7cdcbec5fccf19c8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboy_id
    int32 control
    bool value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualizationControl(null);
    if (msg.roboy_id !== undefined) {
      resolved.roboy_id = msg.roboy_id;
    }
    else {
      resolved.roboy_id = 0
    }

    if (msg.control !== undefined) {
      resolved.control = msg.control;
    }
    else {
      resolved.control = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

module.exports = VisualizationControl;
