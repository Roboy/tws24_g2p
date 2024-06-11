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

class BodyPart {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPart
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPart
    let len;
    let data = new BodyPart(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/BodyPart';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7244bd0a66f4dc551fcf27198addf4f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sample values
    uint8 ENABLED=0
    uint8 DISABLED=1
    uint8 ERROR_CONDITION_A=2
    uint8 ERROR_CONDITION_B=3
    
    # Body part designator
    string name
    
    # Status byte implemented like Unix return codes:
    # 0: All OK / Ready
    # 1: Function disabled
    # 2-100: Custom error codes indicating different stop conditions or
    # malfunctions.
    # 100-255: Custom readiness states. Some functionality still online / waiting
    # for something.
    #
    uint8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyPart(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
BodyPart.Constants = {
  ENABLED: 0,
  DISABLED: 1,
  ERROR_CONDITION_A: 2,
  ERROR_CONDITION_B: 3,
}

module.exports = BodyPart;
