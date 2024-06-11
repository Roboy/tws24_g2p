// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyPart = require('./BodyPart.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SystemStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.body_parts = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('body_parts')) {
        this.body_parts = initObj.body_parts
      }
      else {
        this.body_parts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [body_parts]
    // Serialize the length for message field [body_parts]
    bufferOffset = _serializer.uint32(obj.body_parts.length, buffer, bufferOffset);
    obj.body_parts.forEach((val) => {
      bufferOffset = BodyPart.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemStatus
    let len;
    let data = new SystemStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_parts]
    // Deserialize array length for message field [body_parts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.body_parts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.body_parts[i] = BodyPart.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.body_parts.forEach((val) => {
      length += BodyPart.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/SystemStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a154f05d39fafbb9bb8a98f0b5bb4351';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    BodyPart[] body_parts
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: roboy_middleware_msgs/BodyPart
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
    const resolved = new SystemStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.body_parts !== undefined) {
      resolved.body_parts = new Array(msg.body_parts.length);
      for (let i = 0; i < resolved.body_parts.length; ++i) {
        resolved.body_parts[i] = BodyPart.Resolve(msg.body_parts[i]);
      }
    }
    else {
      resolved.body_parts = []
    }

    return resolved;
    }
};

module.exports = SystemStatus;
