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

class PlaySoundRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filepath = null;
      this.timestamps = null;
      this.emotions = null;
    }
    else {
      if (initObj.hasOwnProperty('filepath')) {
        this.filepath = initObj.filepath
      }
      else {
        this.filepath = '';
      }
      if (initObj.hasOwnProperty('timestamps')) {
        this.timestamps = initObj.timestamps
      }
      else {
        this.timestamps = [];
      }
      if (initObj.hasOwnProperty('emotions')) {
        this.emotions = initObj.emotions
      }
      else {
        this.emotions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaySoundRequest
    // Serialize message field [filepath]
    bufferOffset = _serializer.string(obj.filepath, buffer, bufferOffset);
    // Serialize message field [timestamps]
    bufferOffset = _arraySerializer.float64(obj.timestamps, buffer, bufferOffset, null);
    // Serialize message field [emotions]
    bufferOffset = _arraySerializer.string(obj.emotions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySoundRequest
    let len;
    let data = new PlaySoundRequest(null);
    // Deserialize message field [filepath]
    data.filepath = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamps]
    data.timestamps = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [emotions]
    data.emotions = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filepath);
    length += 8 * object.timestamps.length;
    object.emotions.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/PlaySoundRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12b0025a19b95fa6876dd43a46ebc229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string filepath
    float64[] timestamps
    string[] emotions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySoundRequest(null);
    if (msg.filepath !== undefined) {
      resolved.filepath = msg.filepath;
    }
    else {
      resolved.filepath = ''
    }

    if (msg.timestamps !== undefined) {
      resolved.timestamps = msg.timestamps;
    }
    else {
      resolved.timestamps = []
    }

    if (msg.emotions !== undefined) {
      resolved.emotions = msg.emotions;
    }
    else {
      resolved.emotions = []
    }

    return resolved;
    }
};

class PlaySoundResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaySoundResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySoundResponse
    let len;
    let data = new PlaySoundResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/PlaySoundResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySoundResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: PlaySoundRequest,
  Response: PlaySoundResponse,
  md5sum() { return 'be411978a058f6d39164b06691bbbd80'; },
  datatype() { return 'roboy_cognition_msgs/PlaySound'; }
};
