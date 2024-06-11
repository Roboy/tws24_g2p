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

class TendonUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tendon_id = null;
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('tendon_id')) {
        this.tendon_id = initObj.tendon_id
      }
      else {
        this.tendon_id = 0;
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TendonUpdate
    // Serialize message field [tendon_id]
    bufferOffset = _serializer.int32(obj.tendon_id, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = _serializer.float32(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TendonUpdate
    let len;
    let data = new TendonUpdate(null);
    // Deserialize message field [tendon_id]
    data.tendon_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/TendonUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7cf9744aa53d76130b584ca613dcbc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tendon_id
    #currently applied forcce
    float32 force
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TendonUpdate(null);
    if (msg.tendon_id !== undefined) {
      resolved.tendon_id = msg.tendon_id;
    }
    else {
      resolved.tendon_id = 0
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0.0
    }

    return resolved;
    }
};

module.exports = TendonUpdate;
