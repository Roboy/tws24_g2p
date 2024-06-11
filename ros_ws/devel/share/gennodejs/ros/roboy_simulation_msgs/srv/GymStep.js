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

class GymStepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller = null;
      this.set_points = null;
      this.step_size = null;
    }
    else {
      if (initObj.hasOwnProperty('controller')) {
        this.controller = initObj.controller
      }
      else {
        this.controller = 0;
      }
      if (initObj.hasOwnProperty('set_points')) {
        this.set_points = initObj.set_points
      }
      else {
        this.set_points = [];
      }
      if (initObj.hasOwnProperty('step_size')) {
        this.step_size = initObj.step_size
      }
      else {
        this.step_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GymStepRequest
    // Serialize message field [controller]
    bufferOffset = _serializer.int8(obj.controller, buffer, bufferOffset);
    // Serialize message field [set_points]
    bufferOffset = _arraySerializer.float64(obj.set_points, buffer, bufferOffset, null);
    // Serialize message field [step_size]
    bufferOffset = _serializer.float64(obj.step_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GymStepRequest
    let len;
    let data = new GymStepRequest(null);
    // Deserialize message field [controller]
    data.controller = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [set_points]
    data.set_points = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [step_size]
    data.step_size = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.set_points.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/GymStepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fbc3d3b20aed420307823da2f5eab50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 controller #position, vel or displacement
    float64[] set_points
    float64 step_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GymStepRequest(null);
    if (msg.controller !== undefined) {
      resolved.controller = msg.controller;
    }
    else {
      resolved.controller = 0
    }

    if (msg.set_points !== undefined) {
      resolved.set_points = msg.set_points;
    }
    else {
      resolved.set_points = []
    }

    if (msg.step_size !== undefined) {
      resolved.step_size = msg.step_size;
    }
    else {
      resolved.step_size = 0.0
    }

    return resolved;
    }
};

class GymStepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q = null;
      this.qdot = null;
      this.feasible = null;
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
      if (initObj.hasOwnProperty('feasible')) {
        this.feasible = initObj.feasible
      }
      else {
        this.feasible = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GymStepResponse
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float64(obj.q, buffer, bufferOffset, null);
    // Serialize message field [qdot]
    bufferOffset = _arraySerializer.float64(obj.qdot, buffer, bufferOffset, null);
    // Serialize message field [feasible]
    bufferOffset = _serializer.bool(obj.feasible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GymStepResponse
    let len;
    let data = new GymStepResponse(null);
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [qdot]
    data.qdot = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feasible]
    data.feasible = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.q.length;
    length += 8 * object.qdot.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/GymStepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a84bae228444ba1017ac397cff61e033';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] q
    float64[] qdot
    bool feasible
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GymStepResponse(null);
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

    if (msg.feasible !== undefined) {
      resolved.feasible = msg.feasible;
    }
    else {
      resolved.feasible = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GymStepRequest,
  Response: GymStepResponse,
  md5sum() { return 'da078c4985541d376efaaa93946e1b7b'; },
  datatype() { return 'roboy_simulation_msgs/GymStep'; }
};
