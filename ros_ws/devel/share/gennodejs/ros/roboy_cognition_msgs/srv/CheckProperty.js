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

class CheckPropertyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object = null;
      this.property = null;
      this.instance = null;
    }
    else {
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = '';
      }
      if (initObj.hasOwnProperty('property')) {
        this.property = initObj.property
      }
      else {
        this.property = '';
      }
      if (initObj.hasOwnProperty('instance')) {
        this.instance = initObj.instance
      }
      else {
        this.instance = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckPropertyRequest
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    // Serialize message field [property]
    bufferOffset = _serializer.string(obj.property, buffer, bufferOffset);
    // Serialize message field [instance]
    bufferOffset = _serializer.string(obj.instance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckPropertyRequest
    let len;
    let data = new CheckPropertyRequest(null);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [property]
    data.property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [instance]
    data.instance = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object);
    length += _getByteLength(object.property);
    length += _getByteLength(object.instance);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/CheckPropertyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b9f7854589f70a806316754de9a72fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object
    string property
    string instance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckPropertyRequest(null);
    if (msg.object !== undefined) {
      resolved.object = msg.object;
    }
    else {
      resolved.object = ''
    }

    if (msg.property !== undefined) {
      resolved.property = msg.property;
    }
    else {
      resolved.property = ''
    }

    if (msg.instance !== undefined) {
      resolved.instance = msg.instance;
    }
    else {
      resolved.instance = ''
    }

    return resolved;
    }
};

class CheckPropertyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckPropertyResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckPropertyResponse
    let len;
    let data = new CheckPropertyResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/CheckPropertyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckPropertyResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckPropertyRequest,
  Response: CheckPropertyResponse,
  md5sum() { return '096b73ba3a5f0d25198ae92ca0a7239c'; },
  datatype() { return 'roboy_cognition_msgs/CheckProperty'; }
};
