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

class CameraPos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.m00 = null;
      this.m01 = null;
      this.m02 = null;
      this.m03 = null;
      this.m10 = null;
      this.m11 = null;
      this.m12 = null;
      this.m13 = null;
      this.m20 = null;
      this.m21 = null;
      this.m22 = null;
      this.m23 = null;
      this.m30 = null;
      this.m31 = null;
      this.m32 = null;
      this.m33 = null;
    }
    else {
      if (initObj.hasOwnProperty('m00')) {
        this.m00 = initObj.m00
      }
      else {
        this.m00 = 0.0;
      }
      if (initObj.hasOwnProperty('m01')) {
        this.m01 = initObj.m01
      }
      else {
        this.m01 = 0.0;
      }
      if (initObj.hasOwnProperty('m02')) {
        this.m02 = initObj.m02
      }
      else {
        this.m02 = 0.0;
      }
      if (initObj.hasOwnProperty('m03')) {
        this.m03 = initObj.m03
      }
      else {
        this.m03 = 0.0;
      }
      if (initObj.hasOwnProperty('m10')) {
        this.m10 = initObj.m10
      }
      else {
        this.m10 = 0.0;
      }
      if (initObj.hasOwnProperty('m11')) {
        this.m11 = initObj.m11
      }
      else {
        this.m11 = 0.0;
      }
      if (initObj.hasOwnProperty('m12')) {
        this.m12 = initObj.m12
      }
      else {
        this.m12 = 0.0;
      }
      if (initObj.hasOwnProperty('m13')) {
        this.m13 = initObj.m13
      }
      else {
        this.m13 = 0.0;
      }
      if (initObj.hasOwnProperty('m20')) {
        this.m20 = initObj.m20
      }
      else {
        this.m20 = 0.0;
      }
      if (initObj.hasOwnProperty('m21')) {
        this.m21 = initObj.m21
      }
      else {
        this.m21 = 0.0;
      }
      if (initObj.hasOwnProperty('m22')) {
        this.m22 = initObj.m22
      }
      else {
        this.m22 = 0.0;
      }
      if (initObj.hasOwnProperty('m23')) {
        this.m23 = initObj.m23
      }
      else {
        this.m23 = 0.0;
      }
      if (initObj.hasOwnProperty('m30')) {
        this.m30 = initObj.m30
      }
      else {
        this.m30 = 0.0;
      }
      if (initObj.hasOwnProperty('m31')) {
        this.m31 = initObj.m31
      }
      else {
        this.m31 = 0.0;
      }
      if (initObj.hasOwnProperty('m32')) {
        this.m32 = initObj.m32
      }
      else {
        this.m32 = 0.0;
      }
      if (initObj.hasOwnProperty('m33')) {
        this.m33 = initObj.m33
      }
      else {
        this.m33 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraPos
    // Serialize message field [m00]
    bufferOffset = _serializer.float32(obj.m00, buffer, bufferOffset);
    // Serialize message field [m01]
    bufferOffset = _serializer.float32(obj.m01, buffer, bufferOffset);
    // Serialize message field [m02]
    bufferOffset = _serializer.float32(obj.m02, buffer, bufferOffset);
    // Serialize message field [m03]
    bufferOffset = _serializer.float32(obj.m03, buffer, bufferOffset);
    // Serialize message field [m10]
    bufferOffset = _serializer.float32(obj.m10, buffer, bufferOffset);
    // Serialize message field [m11]
    bufferOffset = _serializer.float32(obj.m11, buffer, bufferOffset);
    // Serialize message field [m12]
    bufferOffset = _serializer.float32(obj.m12, buffer, bufferOffset);
    // Serialize message field [m13]
    bufferOffset = _serializer.float32(obj.m13, buffer, bufferOffset);
    // Serialize message field [m20]
    bufferOffset = _serializer.float32(obj.m20, buffer, bufferOffset);
    // Serialize message field [m21]
    bufferOffset = _serializer.float32(obj.m21, buffer, bufferOffset);
    // Serialize message field [m22]
    bufferOffset = _serializer.float32(obj.m22, buffer, bufferOffset);
    // Serialize message field [m23]
    bufferOffset = _serializer.float32(obj.m23, buffer, bufferOffset);
    // Serialize message field [m30]
    bufferOffset = _serializer.float32(obj.m30, buffer, bufferOffset);
    // Serialize message field [m31]
    bufferOffset = _serializer.float32(obj.m31, buffer, bufferOffset);
    // Serialize message field [m32]
    bufferOffset = _serializer.float32(obj.m32, buffer, bufferOffset);
    // Serialize message field [m33]
    bufferOffset = _serializer.float32(obj.m33, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraPos
    let len;
    let data = new CameraPos(null);
    // Deserialize message field [m00]
    data.m00 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m01]
    data.m01 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m02]
    data.m02 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m03]
    data.m03 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m10]
    data.m10 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m11]
    data.m11 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m12]
    data.m12 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m13]
    data.m13 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m20]
    data.m20 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m21]
    data.m21 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m22]
    data.m22 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m23]
    data.m23 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m30]
    data.m30 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m31]
    data.m31 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m32]
    data.m32 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [m33]
    data.m33 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_control_msgs/CameraPos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8903cef6b8f5901e6c1b1feeb6a5a6d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 m00
    float32 m01
    float32 m02
    float32 m03
    
    float32 m10
    float32 m11
    float32 m12
    float32 m13
    
    float32 m20
    float32 m21
    float32 m22
    float32 m23
    
    float32 m30
    float32 m31
    float32 m32
    float32 m33
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraPos(null);
    if (msg.m00 !== undefined) {
      resolved.m00 = msg.m00;
    }
    else {
      resolved.m00 = 0.0
    }

    if (msg.m01 !== undefined) {
      resolved.m01 = msg.m01;
    }
    else {
      resolved.m01 = 0.0
    }

    if (msg.m02 !== undefined) {
      resolved.m02 = msg.m02;
    }
    else {
      resolved.m02 = 0.0
    }

    if (msg.m03 !== undefined) {
      resolved.m03 = msg.m03;
    }
    else {
      resolved.m03 = 0.0
    }

    if (msg.m10 !== undefined) {
      resolved.m10 = msg.m10;
    }
    else {
      resolved.m10 = 0.0
    }

    if (msg.m11 !== undefined) {
      resolved.m11 = msg.m11;
    }
    else {
      resolved.m11 = 0.0
    }

    if (msg.m12 !== undefined) {
      resolved.m12 = msg.m12;
    }
    else {
      resolved.m12 = 0.0
    }

    if (msg.m13 !== undefined) {
      resolved.m13 = msg.m13;
    }
    else {
      resolved.m13 = 0.0
    }

    if (msg.m20 !== undefined) {
      resolved.m20 = msg.m20;
    }
    else {
      resolved.m20 = 0.0
    }

    if (msg.m21 !== undefined) {
      resolved.m21 = msg.m21;
    }
    else {
      resolved.m21 = 0.0
    }

    if (msg.m22 !== undefined) {
      resolved.m22 = msg.m22;
    }
    else {
      resolved.m22 = 0.0
    }

    if (msg.m23 !== undefined) {
      resolved.m23 = msg.m23;
    }
    else {
      resolved.m23 = 0.0
    }

    if (msg.m30 !== undefined) {
      resolved.m30 = msg.m30;
    }
    else {
      resolved.m30 = 0.0
    }

    if (msg.m31 !== undefined) {
      resolved.m31 = msg.m31;
    }
    else {
      resolved.m31 = 0.0
    }

    if (msg.m32 !== undefined) {
      resolved.m32 = msg.m32;
    }
    else {
      resolved.m32 = 0.0
    }

    if (msg.m33 !== undefined) {
      resolved.m33 = msg.m33;
    }
    else {
      resolved.m33 = 0.0
    }

    return resolved;
    }
};

module.exports = CameraPos;
