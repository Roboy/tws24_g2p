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

class DarkRoomStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_id = null;
      this.sensor_state = null;
    }
    else {
      if (initObj.hasOwnProperty('object_id')) {
        this.object_id = initObj.object_id
      }
      else {
        this.object_id = '';
      }
      if (initObj.hasOwnProperty('sensor_state')) {
        this.sensor_state = initObj.sensor_state
      }
      else {
        this.sensor_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoomStatus
    // Serialize message field [object_id]
    bufferOffset = _serializer.string(obj.object_id, buffer, bufferOffset);
    // Serialize message field [sensor_state]
    bufferOffset = _arraySerializer.uint8(obj.sensor_state, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoomStatus
    let len;
    let data = new DarkRoomStatus(null);
    // Deserialize message field [object_id]
    data.object_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_state]
    data.sensor_state = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_id);
    length += object.sensor_state.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/DarkRoomStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '701850641a680172b1574e149f61356d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_id
    uint8[] sensor_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoomStatus(null);
    if (msg.object_id !== undefined) {
      resolved.object_id = msg.object_id;
    }
    else {
      resolved.object_id = ''
    }

    if (msg.sensor_state !== undefined) {
      resolved.sensor_state = msg.sensor_state;
    }
    else {
      resolved.sensor_state = []
    }

    return resolved;
    }
};

module.exports = DarkRoomStatus;
