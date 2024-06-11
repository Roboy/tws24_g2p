// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FacialFeatures = require('./FacialFeatures.js');

//-----------------------------------------------------------

class Faces {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.names = null;
      this.confidence = null;
      this.face_encodings = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
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
      if (initObj.hasOwnProperty('face_encodings')) {
        this.face_encodings = initObj.face_encodings
      }
      else {
        this.face_encodings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Faces
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int64(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [confidence]
    bufferOffset = _arraySerializer.float64(obj.confidence, buffer, bufferOffset, null);
    // Serialize message field [face_encodings]
    // Serialize the length for message field [face_encodings]
    bufferOffset = _serializer.uint32(obj.face_encodings.length, buffer, bufferOffset);
    obj.face_encodings.forEach((val) => {
      bufferOffset = FacialFeatures.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Faces
    let len;
    let data = new Faces(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [confidence]
    data.confidence = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [face_encodings]
    // Deserialize array length for message field [face_encodings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.face_encodings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.face_encodings[i] = FacialFeatures.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ids.length;
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.confidence.length;
    length += 1025 * object.face_encodings.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_cognition_msgs/Faces';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3887f53ecaef4d7920e7c85fe09666b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[] ids
    string[] names
    float64[] confidence
    FacialFeatures[] face_encodings
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
    const resolved = new Faces(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

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

    if (msg.face_encodings !== undefined) {
      resolved.face_encodings = new Array(msg.face_encodings.length);
      for (let i = 0; i < resolved.face_encodings.length; ++i) {
        resolved.face_encodings[i] = FacialFeatures.Resolve(msg.face_encodings[i]);
      }
    }
    else {
      resolved.face_encodings = []
    }

    return resolved;
    }
};

module.exports = Faces;
