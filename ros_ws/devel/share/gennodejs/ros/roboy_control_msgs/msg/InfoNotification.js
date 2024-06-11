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

class InfoNotification {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.object = null;
      this.msg = null;
      this.extra = null;
      this.validity_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = '';
      }
      if (initObj.hasOwnProperty('validity_duration')) {
        this.validity_duration = initObj.validity_duration
      }
      else {
        this.validity_duration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InfoNotification
    // Serialize message field [code]
    bufferOffset = _serializer.int32(obj.code, buffer, bufferOffset);
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [extra]
    bufferOffset = _serializer.string(obj.extra, buffer, bufferOffset);
    // Serialize message field [validity_duration]
    bufferOffset = _serializer.int32(obj.validity_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InfoNotification
    let len;
    let data = new InfoNotification(null);
    // Deserialize message field [code]
    data.code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [extra]
    data.extra = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [validity_duration]
    data.validity_duration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object);
    length += _getByteLength(object.msg);
    length += _getByteLength(object.extra);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_control_msgs/InfoNotification';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9b10763b06033e440cfab3c2b143fa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 code
    string object
    string msg
    string extra
    int32 validity_duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InfoNotification(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.object !== undefined) {
      resolved.object = msg.object;
    }
    else {
      resolved.object = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.extra !== undefined) {
      resolved.extra = msg.extra;
    }
    else {
      resolved.extra = ''
    }

    if (msg.validity_duration !== undefined) {
      resolved.validity_duration = msg.validity_duration;
    }
    else {
      resolved.validity_duration = 0
    }

    return resolved;
    }
};

module.exports = InfoNotification;
