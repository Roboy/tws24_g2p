// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DarkRoom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.timestamp = null;
      this.sensor_value = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = '';
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = [];
      }
      if (initObj.hasOwnProperty('sensor_value')) {
        this.sensor_value = initObj.sensor_value
      }
      else {
        this.sensor_value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoom
    // Serialize message field [object_id]
    bufferOffset = _serializer.string(obj.object_id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _arraySerializer.int32(obj.timestamp, buffer, bufferOffset, null);
    // Serialize message field [sensor_value]
    bufferOffset = _arraySerializer.uint32(obj.sensor_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoom
    let len;
    let data = new DarkRoom(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [sensor_value]
    data.sensor_value = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_id);
    length += 4 * object.timestamp.length;
    length += 4 * object.sensor_value.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/DarkRoom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '015cacec6e072999f1fb62b28192aa16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_id
    int32[] timestamp
    uint32[] sensor_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoom(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = ''
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = []
    }

    if (msg.sensor_value !== undefined) {
      resolved.sensor_value = msg.sensor_value;
    }
    else {
      resolved.sensor_value = []
    }

    return resolved;
    }
};

module.exports = DarkRoom;
