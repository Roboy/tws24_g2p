// Auto-generated. Do not edit!

// (in-package bench_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMotorCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.myobrick_global_ids = null;
      this.pwm_values = null;
    }
    else {
      if (initObj.hasOwnProperty('myobrick_global_ids')) {
        this.myobrick_global_ids = initObj.myobrick_global_ids
      }
      else {
        this.myobrick_global_ids = [];
      }
      if (initObj.hasOwnProperty('pwm_values')) {
        this.pwm_values = initObj.pwm_values
      }
      else {
        this.pwm_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorCommandRequest
    // Serialize message field [myobrick_global_ids]
    bufferOffset = _arraySerializer.int32(obj.myobrick_global_ids, buffer, bufferOffset, null);
    // Serialize message field [pwm_values]
    bufferOffset = _arraySerializer.float32(obj.pwm_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorCommandRequest
    let len;
    let data = new SetMotorCommandRequest(null);
    // Deserialize message field [myobrick_global_ids]
    data.myobrick_global_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pwm_values]
    data.pwm_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.myobrick_global_ids.length;
    length += 4 * object.pwm_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/SetMotorCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd2b90725c2fd26cea0f9b67f529b3e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] myobrick_global_ids
    float32[] pwm_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorCommandRequest(null);
    if (msg.myobrick_global_ids !== undefined) {
      resolved.myobrick_global_ids = msg.myobrick_global_ids;
    }
    else {
      resolved.myobrick_global_ids = []
    }

    if (msg.pwm_values !== undefined) {
      resolved.pwm_values = msg.pwm_values;
    }
    else {
      resolved.pwm_values = []
    }

    return resolved;
    }
};

class SetMotorCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angle')) {
        this.joint_angle = initObj.joint_angle
      }
      else {
        this.joint_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMotorCommandResponse
    // Serialize message field [joint_angle]
    bufferOffset = _serializer.float32(obj.joint_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMotorCommandResponse
    let len;
    let data = new SetMotorCommandResponse(null);
    // Deserialize message field [joint_angle]
    data.joint_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/SetMotorCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f64e29b37471e6fbeac81718e0db6639';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 joint_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMotorCommandResponse(null);
    if (msg.joint_angle !== undefined) {
      resolved.joint_angle = msg.joint_angle;
    }
    else {
      resolved.joint_angle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMotorCommandRequest,
  Response: SetMotorCommandResponse,
  md5sum() { return '2bc439979375aa92eca8a81319923084'; },
  datatype() { return 'bench_pkg/SetMotorCommand'; }
};
