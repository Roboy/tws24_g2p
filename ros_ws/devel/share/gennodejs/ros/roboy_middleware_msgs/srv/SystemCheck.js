// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SystemCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorIDs = null;
    }
    else {
      if (initObj.hasOwnProperty('motorIDs')) {
        this.motorIDs = initObj.motorIDs
      }
      else {
        this.motorIDs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemCheckRequest
    // Serialize message field [motorIDs]
    bufferOffset = _arraySerializer.uint8(obj.motorIDs, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemCheckRequest
    let len;
    let data = new SystemCheckRequest(null);
    // Deserialize message field [motorIDs]
    data.motorIDs = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.motorIDs.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/SystemCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '281adc23b4965daf53d0457be3437b1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # if empty check all motors, otherwise only the requested
    uint8[] motorIDs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemCheckRequest(null);
    if (msg.motorIDs !== undefined) {
      resolved.motorIDs = msg.motorIDs;
    }
    else {
      resolved.motorIDs = []
    }

    return resolved;
    }
};

class SystemCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorIDs = null;
      this.encoder0_pos = null;
      this.encoder1_pos = null;
      this.communication_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('motorIDs')) {
        this.motorIDs = initObj.motorIDs
      }
      else {
        this.motorIDs = [];
      }
      if (initObj.hasOwnProperty('encoder0_pos')) {
        this.encoder0_pos = initObj.encoder0_pos
      }
      else {
        this.encoder0_pos = [];
      }
      if (initObj.hasOwnProperty('encoder1_pos')) {
        this.encoder1_pos = initObj.encoder1_pos
      }
      else {
        this.encoder1_pos = [];
      }
      if (initObj.hasOwnProperty('communication_quality')) {
        this.communication_quality = initObj.communication_quality
      }
      else {
        this.communication_quality = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemCheckResponse
    // Serialize message field [motorIDs]
    bufferOffset = _arraySerializer.uint8(obj.motorIDs, buffer, bufferOffset, null);
    // Serialize message field [encoder0_pos]
    bufferOffset = _arraySerializer.bool(obj.encoder0_pos, buffer, bufferOffset, null);
    // Serialize message field [encoder1_pos]
    bufferOffset = _arraySerializer.bool(obj.encoder1_pos, buffer, bufferOffset, null);
    // Serialize message field [communication_quality]
    bufferOffset = _arraySerializer.bool(obj.communication_quality, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemCheckResponse
    let len;
    let data = new SystemCheckResponse(null);
    // Deserialize message field [motorIDs]
    data.motorIDs = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [encoder0_pos]
    data.encoder0_pos = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [encoder1_pos]
    data.encoder1_pos = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [communication_quality]
    data.communication_quality = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.motorIDs.length;
    length += object.encoder0_pos.length;
    length += object.encoder1_pos.length;
    length += object.communication_quality.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/SystemCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b46525f687a0d9002d0c14cf5e5c645';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # returns which mototrs are functional
    uint8[] motorIDs
    bool[] encoder0_pos
    bool[] encoder1_pos
    bool[] communication_quality
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemCheckResponse(null);
    if (msg.motorIDs !== undefined) {
      resolved.motorIDs = msg.motorIDs;
    }
    else {
      resolved.motorIDs = []
    }

    if (msg.encoder0_pos !== undefined) {
      resolved.encoder0_pos = msg.encoder0_pos;
    }
    else {
      resolved.encoder0_pos = []
    }

    if (msg.encoder1_pos !== undefined) {
      resolved.encoder1_pos = msg.encoder1_pos;
    }
    else {
      resolved.encoder1_pos = []
    }

    if (msg.communication_quality !== undefined) {
      resolved.communication_quality = msg.communication_quality;
    }
    else {
      resolved.communication_quality = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SystemCheckRequest,
  Response: SystemCheckResponse,
  md5sum() { return 'bb69ef4baabf6b217933952435e6cb64'; },
  datatype() { return 'roboy_middleware_msgs/SystemCheck'; }
};
