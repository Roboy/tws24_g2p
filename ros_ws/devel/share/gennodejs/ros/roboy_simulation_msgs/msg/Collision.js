// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ContactPoint = require('./ContactPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Collision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.contact_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('contact_points')) {
        this.contact_points = initObj.contact_points
      }
      else {
        this.contact_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Collision
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [contact_points]
    // Serialize the length for message field [contact_points]
    bufferOffset = _serializer.uint32(obj.contact_points.length, buffer, bufferOffset);
    obj.contact_points.forEach((val) => {
      bufferOffset = ContactPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Collision
    let len;
    let data = new Collision(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [contact_points]
    // Deserialize array length for message field [contact_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contact_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contact_points[i] = ContactPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 72 * object.contact_points.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/Collision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a6f8784cdbd2284b14765b033c69396';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # contact points of the body with any other object
    ContactPoint[] contact_points
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: roboy_simulation_msgs/ContactPoint
    #id of roboy link in which a collision happened
    int64 linkid
    #position of contact point on roboy in link frame
    geometry_msgs/Vector3 position
    #contact normal on external body, pointing towards roboy
    geometry_msgs/Vector3 contactnormal
    #contact distance, positive for separation, negative for penetration
    float64 contactdistance
    #normal force applied during the last 'stepSimulation'
    float64 normalforce
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
    const resolved = new Collision(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.contact_points !== undefined) {
      resolved.contact_points = new Array(msg.contact_points.length);
      for (let i = 0; i < resolved.contact_points.length; ++i) {
        resolved.contact_points[i] = ContactPoint.Resolve(msg.contact_points[i]);
      }
    }
    else {
      resolved.contact_points = []
    }

    return resolved;
    }
};

module.exports = Collision;
