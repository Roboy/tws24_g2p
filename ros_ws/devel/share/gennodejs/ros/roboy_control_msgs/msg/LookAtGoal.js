// Auto-generated. Do not edit!

// (in-package roboy_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LookAtGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endEffector = null;
      this.yaw_joint_index = null;
      this.pitch_joint_index = null;
      this.type = null;
      this.point = null;
      this.root_frame = null;
      this.target_frame = null;
      this.sendToRealHardware = null;
      this.timeout = null;
      this.tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('endEffector')) {
        this.endEffector = initObj.endEffector
      }
      else {
        this.endEffector = '';
      }
      if (initObj.hasOwnProperty('yaw_joint_index')) {
        this.yaw_joint_index = initObj.yaw_joint_index
      }
      else {
        this.yaw_joint_index = 0;
      }
      if (initObj.hasOwnProperty('pitch_joint_index')) {
        this.pitch_joint_index = initObj.pitch_joint_index
      }
      else {
        this.pitch_joint_index = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('root_frame')) {
        this.root_frame = initObj.root_frame
      }
      else {
        this.root_frame = '';
      }
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = '';
      }
      if (initObj.hasOwnProperty('sendToRealHardware')) {
        this.sendToRealHardware = initObj.sendToRealHardware
      }
      else {
        this.sendToRealHardware = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookAtGoal
    // Serialize message field [endEffector]
    bufferOffset = _serializer.string(obj.endEffector, buffer, bufferOffset);
    // Serialize message field [yaw_joint_index]
    bufferOffset = _serializer.int32(obj.yaw_joint_index, buffer, bufferOffset);
    // Serialize message field [pitch_joint_index]
    bufferOffset = _serializer.int32(obj.pitch_joint_index, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [root_frame]
    bufferOffset = _serializer.string(obj.root_frame, buffer, bufferOffset);
    // Serialize message field [target_frame]
    bufferOffset = _serializer.string(obj.target_frame, buffer, bufferOffset);
    // Serialize message field [sendToRealHardware]
    bufferOffset = _serializer.bool(obj.sendToRealHardware, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookAtGoal
    let len;
    let data = new LookAtGoal(null);
    // Deserialize message field [endEffector]
    data.endEffector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [yaw_joint_index]
    data.yaw_joint_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pitch_joint_index]
    data.pitch_joint_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [root_frame]
    data.root_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_frame]
    data.target_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sendToRealHardware]
    data.sendToRealHardware = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.endEffector);
    length += _getByteLength(object.root_frame);
    length += _getByteLength(object.target_frame);
    return length + 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_control_msgs/LookAtGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f48da693a0e6a39c4c3e11abc6ed7e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    string endEffector
    int32 yaw_joint_index
    int32 pitch_joint_index
    # 0: point in world frame
    # 1: target frame relative to root_frame
    # 2: target frame relative to root_frame single shot
    int32 type
    geometry_msgs/Vector3 point
    string root_frame
    string target_frame
    bool sendToRealHardware
    int32 timeout
    float32 tolerance
    
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
    const resolved = new LookAtGoal(null);
    if (msg.endEffector !== undefined) {
      resolved.endEffector = msg.endEffector;
    }
    else {
      resolved.endEffector = ''
    }

    if (msg.yaw_joint_index !== undefined) {
      resolved.yaw_joint_index = msg.yaw_joint_index;
    }
    else {
      resolved.yaw_joint_index = 0
    }

    if (msg.pitch_joint_index !== undefined) {
      resolved.pitch_joint_index = msg.pitch_joint_index;
    }
    else {
      resolved.pitch_joint_index = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Vector3.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Vector3()
    }

    if (msg.root_frame !== undefined) {
      resolved.root_frame = msg.root_frame;
    }
    else {
      resolved.root_frame = ''
    }

    if (msg.target_frame !== undefined) {
      resolved.target_frame = msg.target_frame;
    }
    else {
      resolved.target_frame = ''
    }

    if (msg.sendToRealHardware !== undefined) {
      resolved.sendToRealHardware = msg.sendToRealHardware;
    }
    else {
      resolved.sendToRealHardware = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    return resolved;
    }
};

module.exports = LookAtGoal;
