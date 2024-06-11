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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DetectIceCreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flavor = null;
    }
    else {
      if (initObj.hasOwnProperty('flavor')) {
        this.flavor = initObj.flavor
      }
      else {
        this.flavor = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectIceCreamRequest
    // Serialize message field [flavor]
    bufferOffset = _serializer.string(obj.flavor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectIceCreamRequest
    let len;
    let data = new DetectIceCreamRequest(null);
    // Deserialize message field [flavor]
    data.flavor = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.flavor);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/DetectIceCreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84207694a269085fcb70e35db8eaaa5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string flavor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectIceCreamRequest(null);
    if (msg.flavor !== undefined) {
      resolved.flavor = msg.flavor;
    }
    else {
      resolved.flavor = ''
    }

    return resolved;
    }
};

class DetectIceCreamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_scooping = null;
      this.end_scooping = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('start_scooping')) {
        this.start_scooping = initObj.start_scooping
      }
      else {
        this.start_scooping = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('end_scooping')) {
        this.end_scooping = initObj.end_scooping
      }
      else {
        this.end_scooping = new geometry_msgs.msg.Point();
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
    // Serializes a message object of type DetectIceCreamResponse
    // Serialize message field [start_scooping]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.start_scooping, buffer, bufferOffset);
    // Serialize message field [end_scooping]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.end_scooping, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectIceCreamResponse
    let len;
    let data = new DetectIceCreamResponse(null);
    // Deserialize message field [start_scooping]
    data.start_scooping = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_scooping]
    data.end_scooping = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.error_message);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/DetectIceCreamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16fd345363711f9e984e0964e8b97477';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point start_scooping
    geometry_msgs/Point end_scooping
    string error_message
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectIceCreamResponse(null);
    if (msg.start_scooping !== undefined) {
      resolved.start_scooping = geometry_msgs.msg.Point.Resolve(msg.start_scooping)
    }
    else {
      resolved.start_scooping = new geometry_msgs.msg.Point()
    }

    if (msg.end_scooping !== undefined) {
      resolved.end_scooping = geometry_msgs.msg.Point.Resolve(msg.end_scooping)
    }
    else {
      resolved.end_scooping = new geometry_msgs.msg.Point()
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
  Request: DetectIceCreamRequest,
  Response: DetectIceCreamResponse,
  md5sum() { return '37d1e42fc203c1ff8077a402e7927892'; },
  datatype() { return 'roboy_cognition_msgs/DetectIceCream'; }
};
