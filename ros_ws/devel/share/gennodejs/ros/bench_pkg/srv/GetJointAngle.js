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

class GetJointAngleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointAngleRequest
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointAngleRequest
    let len;
    let data = new GetJointAngleRequest(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/GetJointAngleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0be1351618e1dc030eb7959d9a4902de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetJointAngleRequest(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    return resolved;
    }
};

class GetJointAngleResponse {
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
    // Serializes a message object of type GetJointAngleResponse
    // Serialize message field [joint_angle]
    bufferOffset = _serializer.float32(obj.joint_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointAngleResponse
    let len;
    let data = new GetJointAngleResponse(null);
    // Deserialize message field [joint_angle]
    data.joint_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bench_pkg/GetJointAngleResponse';
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
    const resolved = new GetJointAngleResponse(null);
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
  Request: GetJointAngleRequest,
  Response: GetJointAngleResponse,
  md5sum() { return '856421520b8199e4bd5f30cae2b9f0bb'; },
  datatype() { return 'bench_pkg/GetJointAngle'; }
};
