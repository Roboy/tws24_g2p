// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class QualityOfToneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tone = null;
      this.time_in_milliseconds = null;
      this.major_only = null;
    }
    else {
      if (initObj.hasOwnProperty('tone')) {
        this.tone = initObj.tone
      }
      else {
        this.tone = '';
      }
      if (initObj.hasOwnProperty('time_in_milliseconds')) {
        this.time_in_milliseconds = initObj.time_in_milliseconds
      }
      else {
        this.time_in_milliseconds = 0.0;
      }
      if (initObj.hasOwnProperty('major_only')) {
        this.major_only = initObj.major_only
      }
      else {
        this.major_only = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QualityOfToneRequest
    // Serialize message field [tone]
    bufferOffset = _serializer.string(obj.tone, buffer, bufferOffset);
    // Serialize message field [time_in_milliseconds]
    bufferOffset = _serializer.float32(obj.time_in_milliseconds, buffer, bufferOffset);
    // Serialize message field [major_only]
    bufferOffset = _serializer.bool(obj.major_only, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfToneRequest
    let len;
    let data = new QualityOfToneRequest(null);
    // Deserialize message field [tone]
    data.tone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time_in_milliseconds]
    data.time_in_milliseconds = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [major_only]
    data.major_only = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tone);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/QualityOfToneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81bbf7d9a2a6be58466cbdf6da81f0a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tone
    float32 time_in_milliseconds
    bool major_only
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfToneRequest(null);
    if (msg.tone !== undefined) {
      resolved.tone = msg.tone;
    }
    else {
      resolved.tone = ''
    }

    if (msg.time_in_milliseconds !== undefined) {
      resolved.time_in_milliseconds = msg.time_in_milliseconds;
    }
    else {
      resolved.time_in_milliseconds = 0.0
    }

    if (msg.major_only !== undefined) {
      resolved.major_only = msg.major_only;
    }
    else {
      resolved.major_only = false
    }

    return resolved;
    }
};

class QualityOfToneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quality = null;
      this.purity = null;
      this.direction_z = null;
      this.direction_y = null;
      this.hit_pin = null;
    }
    else {
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0.0;
      }
      if (initObj.hasOwnProperty('purity')) {
        this.purity = initObj.purity
      }
      else {
        this.purity = 0.0;
      }
      if (initObj.hasOwnProperty('direction_z')) {
        this.direction_z = initObj.direction_z
      }
      else {
        this.direction_z = 0.0;
      }
      if (initObj.hasOwnProperty('direction_y')) {
        this.direction_y = initObj.direction_y
      }
      else {
        this.direction_y = 0.0;
      }
      if (initObj.hasOwnProperty('hit_pin')) {
        this.hit_pin = initObj.hit_pin
      }
      else {
        this.hit_pin = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QualityOfToneResponse
    // Serialize message field [quality]
    bufferOffset = _serializer.float32(obj.quality, buffer, bufferOffset);
    // Serialize message field [purity]
    bufferOffset = _serializer.float32(obj.purity, buffer, bufferOffset);
    // Serialize message field [direction_z]
    bufferOffset = _serializer.float32(obj.direction_z, buffer, bufferOffset);
    // Serialize message field [direction_y]
    bufferOffset = _serializer.float32(obj.direction_y, buffer, bufferOffset);
    // Serialize message field [hit_pin]
    bufferOffset = _serializer.bool(obj.hit_pin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfToneResponse
    let len;
    let data = new QualityOfToneResponse(null);
    // Deserialize message field [quality]
    data.quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [purity]
    data.purity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction_z]
    data.direction_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction_y]
    data.direction_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hit_pin]
    data.hit_pin = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/QualityOfToneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa7b415eedd90d5e1e617045b66b8d00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 quality
    float32 purity
    float32 direction_z
    float32 direction_y
    bool hit_pin
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfToneResponse(null);
    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0.0
    }

    if (msg.purity !== undefined) {
      resolved.purity = msg.purity;
    }
    else {
      resolved.purity = 0.0
    }

    if (msg.direction_z !== undefined) {
      resolved.direction_z = msg.direction_z;
    }
    else {
      resolved.direction_z = 0.0
    }

    if (msg.direction_y !== undefined) {
      resolved.direction_y = msg.direction_y;
    }
    else {
      resolved.direction_y = 0.0
    }

    if (msg.hit_pin !== undefined) {
      resolved.hit_pin = msg.hit_pin;
    }
    else {
      resolved.hit_pin = false
    }

    return resolved;
    }
};

module.exports = {
  Request: QualityOfToneRequest,
  Response: QualityOfToneResponse,
  md5sum() { return 'eeaf952b12443d5b5a1e7a092753228a'; },
  datatype() { return 'roboy_cognition_msgs/QualityOfTone'; }
};
