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

class JointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.names = null;
      this.origin = null;
      this.axis = null;
      this.torque = null;
      this.q = null;
      this.qd = null;
    }
    else {
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('origin')) {
        this.origin = initObj.origin
      }
      else {
        this.origin = [];
      }
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = [];
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = [];
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = [];
      }
      if (initObj.hasOwnProperty('qd')) {
        this.qd = initObj.qd
      }
      else {
        this.qd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointState
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [origin]
    // Serialize the length for message field [origin]
    bufferOffset = _serializer.uint32(obj.origin.length, buffer, bufferOffset);
    obj.origin.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [axis]
    // Serialize the length for message field [axis]
    bufferOffset = _serializer.uint32(obj.axis.length, buffer, bufferOffset);
    obj.axis.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float64(obj.torque, buffer, bufferOffset, null);
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float32(obj.q, buffer, bufferOffset, null);
    // Serialize message field [qd]
    bufferOffset = _arraySerializer.float32(obj.qd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointState
    let len;
    let data = new JointState(null);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [origin]
    // Deserialize array length for message field [origin]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.origin = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.origin[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [axis]
    // Deserialize array length for message field [axis]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.axis = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.axis[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [qd]
    data.qd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 24 * object.origin.length;
    length += 24 * object.axis.length;
    length += 8 * object.torque.length;
    length += 4 * object.q.length;
    length += 4 * object.qd.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/JointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f172c3b09cb0d7db3f536e0f2680157d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # joint name
    string[] names
    # joint origin in global coordinates
    geometry_msgs/Vector3[] origin
    # joint axis in global coordinates
    geometry_msgs/Vector3[] axis
    float64[] torque
    # angle in radian
    float32[] q
    # velocity in meter/s
    float32[] qd
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new JointState(null);
    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.origin !== undefined) {
      resolved.origin = new Array(msg.origin.length);
      for (let i = 0; i < resolved.origin.length; ++i) {
        resolved.origin[i] = geometry_msgs.msg.Vector3.Resolve(msg.origin[i]);
      }
    }
    else {
      resolved.origin = []
    }

    if (msg.axis !== undefined) {
      resolved.axis = new Array(msg.axis.length);
      for (let i = 0; i < resolved.axis.length; ++i) {
        resolved.axis[i] = geometry_msgs.msg.Vector3.Resolve(msg.axis[i]);
      }
    }
    else {
      resolved.axis = []
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = []
    }

    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = []
    }

    if (msg.qd !== undefined) {
      resolved.qd = msg.qd;
    }
    else {
      resolved.qd = []
    }

    return resolved;
    }
};

module.exports = JointState;
