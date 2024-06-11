// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GymResetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step_size = null;
    }
    else {
      if (initObj.hasOwnProperty('step_size')) {
        this.step_size = initObj.step_size
      }
      else {
        this.step_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GymResetRequest
    // Serialize message field [step_size]
    bufferOffset = _serializer.float64(obj.step_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GymResetRequest
    let len;
    let data = new GymResetRequest(null);
    // Deserialize message field [step_size]
    data.step_size = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/GymResetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76290af81b223bb4ba79cf43558301b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 step_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GymResetRequest(null);
    if (msg.step_size !== undefined) {
      resolved.step_size = msg.step_size;
    }
    else {
      resolved.step_size = 0.0
    }

    return resolved;
    }
};

class GymResetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q = null;
      this.qdot = null;
    }
    else {
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = [];
      }
      if (initObj.hasOwnProperty('qdot')) {
        this.qdot = initObj.qdot
      }
      else {
        this.qdot = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GymResetResponse
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float64(obj.q, buffer, bufferOffset, null);
    // Serialize message field [qdot]
    bufferOffset = _arraySerializer.float64(obj.qdot, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GymResetResponse
    let len;
    let data = new GymResetResponse(null);
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qdot]
    data.qdot = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.q.length;
    length += 8 * object.qdot.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/GymResetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45a5c905c9481a71e7b5dee770e487ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] q
    float64[] qdot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GymResetResponse(null);
    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = []
    }

    if (msg.qdot !== undefined) {
      resolved.qdot = msg.qdot;
    }
    else {
      resolved.qdot = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GymResetRequest,
  Response: GymResetResponse,
  md5sum() { return 'fdf499de51c0ee0bd20e6f3b5df6ddb4'; },
  datatype() { return 'roboy_simulation_msgs/GymReset'; }
};
