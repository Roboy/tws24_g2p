// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.global_id = null;
      this.setpoint = null;
      this.encoder0_pos = null;
      this.encoder1_pos = null;
      this.displacement = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('global_id')) {
        this.global_id = initObj.global_id
      }
      else {
        this.global_id = [];
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = [];
      }
      if (initObj.hasOwnProperty('encoder0_pos')) {
        this.encoder0_pos = initObj.encoder0_pos
      }
      else {
        this.encoder0_pos = [];
      }
      if (initObj.hasOwnProperty('encoder1_pos')) {
        this.encoder1_pos = initObj.encoder1_pos
      }
      else {
        this.encoder1_pos = [];
      }
      if (initObj.hasOwnProperty('displacement')) {
        this.displacement = initObj.displacement
      }
      else {
        this.displacement = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [global_id]
    bufferOffset = _arraySerializer.uint8(obj.global_id, buffer, bufferOffset, null);
    // Serialize message field [setpoint]
    bufferOffset = _arraySerializer.float32(obj.setpoint, buffer, bufferOffset, null);
    // Serialize message field [encoder0_pos]
    bufferOffset = _arraySerializer.float32(obj.encoder0_pos, buffer, bufferOffset, null);
    // Serialize message field [encoder1_pos]
    bufferOffset = _arraySerializer.float32(obj.encoder1_pos, buffer, bufferOffset, null);
    // Serialize message field [displacement]
    bufferOffset = _arraySerializer.float32(obj.displacement, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_id]
    data.global_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [setpoint]
    data.setpoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [encoder0_pos]
    data.encoder0_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [encoder1_pos]
    data.encoder1_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [displacement]
    data.displacement = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.global_id.length;
    length += 4 * object.setpoint.length;
    length += 4 * object.encoder0_pos.length;
    length += 4 * object.encoder1_pos.length;
    length += 4 * object.displacement.length;
    length += 4 * object.current.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61eb6482f6cdc52e983eb5e8d69b0aaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8[] global_id
    float32[] setpoint
    float32[] encoder0_pos
    float32[] encoder1_pos
    float32[] displacement
    float32[] current
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.global_id !== undefined) {
      resolved.global_id = msg.global_id;
    }
    else {
      resolved.global_id = []
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = msg.setpoint;
    }
    else {
      resolved.setpoint = []
    }

    if (msg.encoder0_pos !== undefined) {
      resolved.encoder0_pos = msg.encoder0_pos;
    }
    else {
      resolved.encoder0_pos = []
    }

    if (msg.encoder1_pos !== undefined) {
      resolved.encoder1_pos = msg.encoder1_pos;
    }
    else {
      resolved.encoder1_pos = []
    }

    if (msg.displacement !== undefined) {
      resolved.displacement = msg.displacement;
    }
    else {
      resolved.displacement = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    return resolved;
    }
};

module.exports = MotorState;
