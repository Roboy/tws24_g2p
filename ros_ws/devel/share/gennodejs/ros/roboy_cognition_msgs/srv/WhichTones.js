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

class WhichTonesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_in_milliseconds = null;
    }
    else {
      if (initObj.hasOwnProperty('time_in_milliseconds')) {
        this.time_in_milliseconds = initObj.time_in_milliseconds
      }
      else {
        this.time_in_milliseconds = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhichTonesRequest
    // Serialize message field [time_in_milliseconds]
    bufferOffset = _serializer.float32(obj.time_in_milliseconds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhichTonesRequest
    let len;
    let data = new WhichTonesRequest(null);
    // Deserialize message field [time_in_milliseconds]
    data.time_in_milliseconds = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/WhichTonesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2dee370f5987cc46712d4ed8bca7758';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 time_in_milliseconds
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhichTonesRequest(null);
    if (msg.time_in_milliseconds !== undefined) {
      resolved.time_in_milliseconds = msg.time_in_milliseconds;
    }
    else {
      resolved.time_in_milliseconds = 0.0
    }

    return resolved;
    }
};

class WhichTonesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tones = null;
      this.timestamps = null;
    }
    else {
      if (initObj.hasOwnProperty('tones')) {
        this.tones = initObj.tones
      }
      else {
        this.tones = [];
      }
      if (initObj.hasOwnProperty('timestamps')) {
        this.timestamps = initObj.timestamps
      }
      else {
        this.timestamps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhichTonesResponse
    // Serialize message field [tones]
    bufferOffset = _arraySerializer.uint16(obj.tones, buffer, bufferOffset, null);
    // Serialize message field [timestamps]
    bufferOffset = _arraySerializer.float32(obj.timestamps, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhichTonesResponse
    let len;
    let data = new WhichTonesResponse(null);
    // Deserialize message field [tones]
    data.tones = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [timestamps]
    data.timestamps = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.tones.length;
    length += 4 * object.timestamps.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/WhichTonesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a670781173fee749e2fee4de6a0bbd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16[] tones
    float32[] timestamps
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhichTonesResponse(null);
    if (msg.tones !== undefined) {
      resolved.tones = msg.tones;
    }
    else {
      resolved.tones = []
    }

    if (msg.timestamps !== undefined) {
      resolved.timestamps = msg.timestamps;
    }
    else {
      resolved.timestamps = []
    }

    return resolved;
    }
};

module.exports = {
  Request: WhichTonesRequest,
  Response: WhichTonesResponse,
  md5sum() { return '7f84d4f68a15e7b68416ee4eb41d9000'; },
  datatype() { return 'roboy_cognition_msgs/WhichTones'; }
};
