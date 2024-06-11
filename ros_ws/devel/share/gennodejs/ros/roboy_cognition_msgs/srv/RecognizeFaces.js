// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FacialFeatures = require('../msg/FacialFeatures.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecognizeFacesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encodings = null;
    }
    else {
      if (initObj.hasOwnProperty('encodings')) {
        this.encodings = initObj.encodings
      }
      else {
        this.encodings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeFacesRequest
    // Serialize message field [encodings]
    // Serialize the length for message field [encodings]
    bufferOffset = _serializer.uint32(obj.encodings.length, buffer, bufferOffset);
    obj.encodings.forEach((val) => {
      bufferOffset = FacialFeatures.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeFacesRequest
    let len;
    let data = new RecognizeFacesRequest(null);
    // Deserialize message field [encodings]
    // Deserialize array length for message field [encodings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.encodings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.encodings[i] = FacialFeatures.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 1025 * object.encodings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/RecognizeFacesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '083413108b4614ba96f55f9dd5867d9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FacialFeatures[] encodings
    
    ================================================================================
    MSG: roboy_cognition_msgs/FacialFeatures
    #only for unrecognized faces
    #is person speaking?
    bool speaking
    #facial features (128x1 vector)
    float64[128] ff
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeFacesRequest(null);
    if (msg.encodings !== undefined) {
      resolved.encodings = new Array(msg.encodings.length);
      for (let i = 0; i < resolved.encodings.length; ++i) {
        resolved.encodings[i] = FacialFeatures.Resolve(msg.encodings[i]);
      }
    }
    else {
      resolved.encodings = []
    }

    return resolved;
    }
};

class RecognizeFacesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeFacesResponse
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [confidence]
    bufferOffset = _arraySerializer.float64(obj.confidence, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeFacesResponse
    let len;
    let data = new RecognizeFacesResponse(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [confidence]
    data.confidence = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.confidence.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/RecognizeFacesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1c93df92c259a3092c20b630d063988';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] names
    float64[] confidence
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeFacesResponse(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RecognizeFacesRequest,
  Response: RecognizeFacesResponse,
  md5sum() { return 'cc12f589e5227d96fb8b8056d9ae50c9'; },
  datatype() { return 'roboy_cognition_msgs/RecognizeFaces'; }
};
