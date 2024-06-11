// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RecognizedSpeech {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.text = null;
      this.start_timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('start_timestamp')) {
        this.start_timestamp = initObj.start_timestamp
      }
      else {
        this.start_timestamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizedSpeech
    // Serialize message field [source]
    bufferOffset = _serializer.int16(obj.source, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [start_timestamp]
    bufferOffset = _serializer.float64(obj.start_timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizedSpeech
    let len;
    let data = new RecognizedSpeech(null);
    // Deserialize message field [source]
    data.source = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_timestamp]
    data.start_timestamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_cognition_msgs/RecognizedSpeech';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e88722b8a9f33a92a1fdcd99f5483faa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 source
    string text
    float64 start_timestamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizedSpeech(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.start_timestamp !== undefined) {
      resolved.start_timestamp = msg.start_timestamp;
    }
    else {
      resolved.start_timestamp = 0.0
    }

    return resolved;
    }
};

module.exports = RecognizedSpeech;
