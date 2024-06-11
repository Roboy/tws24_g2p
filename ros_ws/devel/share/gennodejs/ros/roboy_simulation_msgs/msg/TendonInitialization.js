// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TendonInitialization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tendon_id = null;
      this.max_force = null;
      this.wirepoints = null;
      this.roboy_parts = null;
    }
    else {
      if (initObj.hasOwnProperty('tendon_id')) {
        this.tendon_id = initObj.tendon_id
      }
      else {
        this.tendon_id = 0;
      }
      if (initObj.hasOwnProperty('max_force')) {
        this.max_force = initObj.max_force
      }
      else {
        this.max_force = 0.0;
      }
      if (initObj.hasOwnProperty('wirepoints')) {
        this.wirepoints = initObj.wirepoints
      }
      else {
        this.wirepoints = [];
      }
      if (initObj.hasOwnProperty('roboy_parts')) {
        this.roboy_parts = initObj.roboy_parts
      }
      else {
        this.roboy_parts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TendonInitialization
    // Serialize message field [tendon_id]
    bufferOffset = _serializer.int32(obj.tendon_id, buffer, bufferOffset);
    // Serialize message field [max_force]
    bufferOffset = _serializer.float32(obj.max_force, buffer, bufferOffset);
    // Serialize message field [wirepoints]
    bufferOffset = _arraySerializer.float32(obj.wirepoints, buffer, bufferOffset, null);
    // Serialize message field [roboy_parts]
    bufferOffset = _arraySerializer.string(obj.roboy_parts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TendonInitialization
    let len;
    let data = new TendonInitialization(null);
    // Deserialize message field [tendon_id]
    data.tendon_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_force]
    data.max_force = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wirepoints]
    data.wirepoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roboy_parts]
    data.roboy_parts = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.wirepoints.length;
    object.roboy_parts.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/TendonInitialization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7ee2d602d56209b5a118cdb0a171bf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tendon_id
    #maximal applicable force	
    float32 max_force
    #world space coord, 3 floats == one coordinate
    float32[] wirepoints
    #names of roboypart each wirepoint is linked to
    string[] roboy_parts
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TendonInitialization(null);
    if (msg.tendon_id !== undefined) {
      resolved.tendon_id = msg.tendon_id;
    }
    else {
      resolved.tendon_id = 0
    }

    if (msg.max_force !== undefined) {
      resolved.max_force = msg.max_force;
    }
    else {
      resolved.max_force = 0.0
    }

    if (msg.wirepoints !== undefined) {
      resolved.wirepoints = msg.wirepoints;
    }
    else {
      resolved.wirepoints = []
    }

    if (msg.roboy_parts !== undefined) {
      resolved.roboy_parts = msg.roboy_parts;
    }
    else {
      resolved.roboy_parts = []
    }

    return resolved;
    }
};

module.exports = TendonInitialization;
