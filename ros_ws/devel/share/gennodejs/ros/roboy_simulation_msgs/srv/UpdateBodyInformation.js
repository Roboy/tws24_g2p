// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BodyInformation = require('../msg/BodyInformation.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateBodyInformationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.body_information = null;
    }
    else {
      if (initObj.hasOwnProperty('body_information')) {
        this.body_information = initObj.body_information
      }
      else {
        this.body_information = new BodyInformation();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateBodyInformationRequest
    // Serialize message field [body_information]
    bufferOffset = BodyInformation.serialize(obj.body_information, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateBodyInformationRequest
    let len;
    let data = new UpdateBodyInformationRequest(null);
    // Deserialize message field [body_information]
    data.body_information = BodyInformation.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BodyInformation.getMessageSize(object.body_information);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/UpdateBodyInformationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de12943356d169037be74d3dfce2e283';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    roboy_simulation_msgs/BodyInformation body_information
    
    ================================================================================
    MSG: roboy_simulation_msgs/BodyInformation
    # list containing all links and some information like name, dimensions etc.
    roboy_simulation_msgs/LinkInformation[] link_information
    ================================================================================
    MSG: roboy_simulation_msgs/LinkInformation
    # id of the link in the simulation
    int32 id
    # name of the link in the simulation
    string name
    # dimentions of the link
    geometry_msgs/Vector3 dimensions
    # initial pose of the link
    geometry_msgs/Pose init_pose
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
    const resolved = new UpdateBodyInformationRequest(null);
    if (msg.body_information !== undefined) {
      resolved.body_information = BodyInformation.Resolve(msg.body_information)
    }
    else {
      resolved.body_information = new BodyInformation()
    }

    return resolved;
    }
};

class UpdateBodyInformationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret_code = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('ret_code')) {
        this.ret_code = initObj.ret_code
      }
      else {
        this.ret_code = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateBodyInformationResponse
    // Serialize message field [ret_code]
    bufferOffset = _serializer.int8(obj.ret_code, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateBodyInformationResponse
    let len;
    let data = new UpdateBodyInformationResponse(null);
    // Deserialize message field [ret_code]
    data.ret_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_simulation_msgs/UpdateBodyInformationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1560a47c93faf133f52fff45f7590ff7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ret_code
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateBodyInformationResponse(null);
    if (msg.ret_code !== undefined) {
      resolved.ret_code = msg.ret_code;
    }
    else {
      resolved.ret_code = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateBodyInformationRequest,
  Response: UpdateBodyInformationResponse,
  md5sum() { return 'e428186c93531a8d1164969320286db9'; },
  datatype() { return 'roboy_simulation_msgs/UpdateBodyInformation'; }
};
