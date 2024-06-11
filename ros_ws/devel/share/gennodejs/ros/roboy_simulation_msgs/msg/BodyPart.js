// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BodyPart {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboy_id = null;
      this.link = null;
      this.position = null;
      this.mass = null;
    }
    else {
      if (initObj.hasOwnProperty('roboy_id')) {
        this.roboy_id = initObj.roboy_id
      }
      else {
        this.roboy_id = 0;
      }
      if (initObj.hasOwnProperty('link')) {
        this.link = initObj.link
      }
      else {
        this.link = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyPart
    // Serialize message field [roboy_id]
    bufferOffset = _serializer.int32(obj.roboy_id, buffer, bufferOffset);
    // Serialize message field [link]
    bufferOffset = _serializer.string(obj.link, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyPart
    let len;
    let data = new BodyPart(null);
    // Deserialize message field [roboy_id]
    data.roboy_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [link]
    data.link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.link);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/BodyPart';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ea6a0636760eaf5fe7e84691fe02368';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboy_id
    string link
    geometry_msgs/Point position
    float64 mass
    
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
    const resolved = new BodyPart(null);
    if (msg.roboy_id !== undefined) {
      resolved.roboy_id = msg.roboy_id;
    }
    else {
      resolved.roboy_id = 0
    }

    if (msg.link !== undefined) {
      resolved.link = msg.link;
    }
    else {
      resolved.link = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    return resolved;
    }
};

module.exports = BodyPart;
