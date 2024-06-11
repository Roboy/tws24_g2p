// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ControlModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_mode = null;
      this.set_points = null;
      this.global_id = null;
    }
    else {
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('set_points')) {
        this.set_points = initObj.set_points
      }
      else {
        this.set_points = [];
      }
      if (initObj.hasOwnProperty('global_id')) {
        this.global_id = initObj.global_id
      }
      else {
        this.global_id = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlModeRequest
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [set_points]
    bufferOffset = _arraySerializer.float32(obj.set_points, buffer, bufferOffset, null);
    // Serialize message field [global_id]
    bufferOffset = _arraySerializer.uint8(obj.global_id, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlModeRequest
    let len;
    let data = new ControlModeRequest(null);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [set_points]
    data.set_points = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [global_id]
    data.global_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.set_points.length;
    length += object.global_id.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/ControlModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6e1c54934446851505150d7d89f00c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 control_mode # 0: position, 1: velocity, 2: displacement
    float32[] set_points
    # if left empty, all motors will be changed to the requested control mode
    uint8[] global_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlModeRequest(null);
    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.set_points !== undefined) {
      resolved.set_points = msg.set_points;
    }
    else {
      resolved.set_points = []
    }

    if (msg.global_id !== undefined) {
      resolved.global_id = msg.global_id;
    }
    else {
      resolved.global_id = []
    }

    return resolved;
    }
};

class ControlModeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlModeResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlModeResponse
    let len;
    let data = new ControlModeResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/ControlModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlModeResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ControlModeRequest,
  Response: ControlModeResponse,
  md5sum() { return 'd6e1c54934446851505150d7d89f00c1'; },
  datatype() { return 'roboy_middleware_msgs/ControlMode'; }
};
