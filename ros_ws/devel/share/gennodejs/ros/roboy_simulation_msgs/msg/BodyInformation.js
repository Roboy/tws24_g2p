// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinkInformation = require('./LinkInformation.js');

//-----------------------------------------------------------

class BodyInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_information = null;
    }
    else {
      if (initObj.hasOwnProperty('link_information')) {
        this.link_information = initObj.link_information
      }
      else {
        this.link_information = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BodyInformation
    // Serialize message field [link_information]
    // Serialize the length for message field [link_information]
    bufferOffset = _serializer.uint32(obj.link_information.length, buffer, bufferOffset);
    obj.link_information.forEach((val) => {
      bufferOffset = LinkInformation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyInformation
    let len;
    let data = new BodyInformation(null);
    // Deserialize message field [link_information]
    // Deserialize array length for message field [link_information]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.link_information = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.link_information[i] = LinkInformation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.link_information.forEach((val) => {
      length += LinkInformation.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/BodyInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9273ff30caabd7d7a45c37f2cda988ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BodyInformation(null);
    if (msg.link_information !== undefined) {
      resolved.link_information = new Array(msg.link_information.length);
      for (let i = 0; i < resolved.link_information.length; ++i) {
        resolved.link_information[i] = LinkInformation.Resolve(msg.link_information[i]);
      }
    }
    else {
      resolved.link_information = []
    }

    return resolved;
    }
};

module.exports = BodyInformation;
