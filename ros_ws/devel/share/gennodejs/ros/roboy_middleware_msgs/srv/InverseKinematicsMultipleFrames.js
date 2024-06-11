// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class InverseKinematicsMultipleFramesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endeffector = null;
      this.type = null;
      this.target_frames = null;
      this.poses = null;
      this.weights = null;
    }
    else {
      if (initObj.hasOwnProperty('endeffector')) {
        this.endeffector = initObj.endeffector
      }
      else {
        this.endeffector = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('target_frames')) {
        this.target_frames = initObj.target_frames
      }
      else {
        this.target_frames = [];
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = [];
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsMultipleFramesRequest
    // Serialize message field [endeffector]
    bufferOffset = _serializer.string(obj.endeffector, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [target_frames]
    bufferOffset = _arraySerializer.string(obj.target_frames, buffer, bufferOffset, null);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    bufferOffset = _serializer.uint32(obj.poses.length, buffer, bufferOffset);
    obj.poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.int8(obj.weights, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsMultipleFramesRequest
    let len;
    let data = new InverseKinematicsMultipleFramesRequest(null);
    // Deserialize message field [endeffector]
    data.endeffector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [target_frames]
    data.target_frames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [poses]
    // Deserialize array length for message field [poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.endeffector);
    object.target_frames.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 56 * object.poses.length;
    length += object.weights.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/InverseKinematicsMultipleFramesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2123899f58859068accf772246dbce8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # names of the endeffectors
    string endeffector
    # 0: position and orientation 1: position only 2: orientation only
    int8 type
    # the frames of the ik targets
    string[] target_frames
    # target position/orientation for frame in world coordinates (if applicable)
    geometry_msgs/Pose[] poses
    # position weights of the ik targets
    int8[] weights
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsMultipleFramesRequest(null);
    if (msg.endeffector !== undefined) {
      resolved.endeffector = msg.endeffector;
    }
    else {
      resolved.endeffector = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.target_frames !== undefined) {
      resolved.target_frames = msg.target_frames;
    }
    else {
      resolved.target_frames = []
    }

    if (msg.poses !== undefined) {
      resolved.poses = new Array(msg.poses.length);
      for (let i = 0; i < resolved.poses.length; ++i) {
        resolved.poses[i] = geometry_msgs.msg.Pose.Resolve(msg.poses[i]);
      }
    }
    else {
      resolved.poses = []
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    return resolved;
    }
};

class InverseKinematicsMultipleFramesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsMultipleFramesResponse
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsMultipleFramesResponse
    let len;
    let data = new InverseKinematicsMultipleFramesResponse(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.angles.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/InverseKinematicsMultipleFramesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61cfdb390f37de2c6aab6dc9fef7fa33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # joint names
    string[] joint_names
    # these are the resulting joint angles from inverse kinematics in radians
    float64[] angles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsMultipleFramesResponse(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    return resolved;
    }
};

module.exports = {
  Request: InverseKinematicsMultipleFramesRequest,
  Response: InverseKinematicsMultipleFramesResponse,
  md5sum() { return '107f632de622d50f348636c2127cece2'; },
  datatype() { return 'roboy_middleware_msgs/InverseKinematicsMultipleFrames'; }
};
