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

class DriveToLocationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination = null;
    }
    else {
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveToLocationRequest
    // Serialize message field [destination]
    bufferOffset = _serializer.string(obj.destination, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveToLocationRequest
    let len;
    let data = new DriveToLocationRequest(null);
    // Deserialize message field [destination]
    data.destination = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.destination);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/DriveToLocationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e47796db9d7d90bff30cd181ffc714b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string destination 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveToLocationRequest(null);
    if (msg.destination !== undefined) {
      resolved.destination = msg.destination;
    }
    else {
      resolved.destination = ''
    }

    return resolved;
    }
};

class DriveToLocationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eta = null;
      this.path_found = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('eta')) {
        this.eta = initObj.eta
      }
      else {
        this.eta = 0;
      }
      if (initObj.hasOwnProperty('path_found')) {
        this.path_found = initObj.path_found
      }
      else {
        this.path_found = false;
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveToLocationResponse
    // Serialize message field [eta]
    bufferOffset = _serializer.int16(obj.eta, buffer, bufferOffset);
    // Serialize message field [path_found]
    bufferOffset = _serializer.bool(obj.path_found, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveToLocationResponse
    let len;
    let data = new DriveToLocationResponse(null);
    // Deserialize message field [eta]
    data.eta = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [path_found]
    data.path_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_message);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/DriveToLocationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0e53d73450e014ee19804b57dfcd6be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 eta
    bool path_found
    string error_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveToLocationResponse(null);
    if (msg.eta !== undefined) {
      resolved.eta = msg.eta;
    }
    else {
      resolved.eta = 0
    }

    if (msg.path_found !== undefined) {
      resolved.path_found = msg.path_found;
    }
    else {
      resolved.path_found = false
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DriveToLocationRequest,
  Response: DriveToLocationResponse,
  md5sum() { return '7577d7b5d3f8964faf8902041a36d0b1'; },
  datatype() { return 'roboy_cognition_msgs/DriveToLocation'; }
};
