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

class HandCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hand_id = null;
      this.command = null;
      this.lock_finger_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('hand_id')) {
        this.hand_id = initObj.hand_id
      }
      else {
        this.hand_id = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('lock_finger_ids')) {
        this.lock_finger_ids = initObj.lock_finger_ids
      }
      else {
        this.lock_finger_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandCommand
    // Serialize message field [hand_id]
    bufferOffset = _serializer.uint8(obj.hand_id, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [lock_finger_ids]
    bufferOffset = _arraySerializer.uint8(obj.lock_finger_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandCommand
    let len;
    let data = new HandCommand(null);
    // Deserialize message field [hand_id]
    data.hand_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lock_finger_ids]
    data.lock_finger_ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lock_finger_ids.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/HandCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c60b9fe10716361cf8f123e26a189b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 hand_id
    uint8 command
    uint8[] lock_finger_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandCommand(null);
    if (msg.hand_id !== undefined) {
      resolved.hand_id = msg.hand_id;
    }
    else {
      resolved.hand_id = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.lock_finger_ids !== undefined) {
      resolved.lock_finger_ids = msg.lock_finger_ids;
    }
    else {
      resolved.lock_finger_ids = []
    }

    return resolved;
    }
};

module.exports = HandCommand;
