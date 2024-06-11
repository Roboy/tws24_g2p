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

class ContactPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linkid = null;
      this.position = null;
      this.contactnormal = null;
      this.contactdistance = null;
      this.normalforce = null;
    }
    else {
      if (initObj.hasOwnProperty('linkid')) {
        this.linkid = initObj.linkid
      }
      else {
        this.linkid = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('contactnormal')) {
        this.contactnormal = initObj.contactnormal
      }
      else {
        this.contactnormal = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('contactdistance')) {
        this.contactdistance = initObj.contactdistance
      }
      else {
        this.contactdistance = 0.0;
      }
      if (initObj.hasOwnProperty('normalforce')) {
        this.normalforce = initObj.normalforce
      }
      else {
        this.normalforce = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContactPoint
    // Serialize message field [linkid]
    bufferOffset = _serializer.int64(obj.linkid, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [contactnormal]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.contactnormal, buffer, bufferOffset);
    // Serialize message field [contactdistance]
    bufferOffset = _serializer.float64(obj.contactdistance, buffer, bufferOffset);
    // Serialize message field [normalforce]
    bufferOffset = _serializer.float64(obj.normalforce, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContactPoint
    let len;
    let data = new ContactPoint(null);
    // Deserialize message field [linkid]
    data.linkid = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [contactnormal]
    data.contactnormal = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [contactdistance]
    data.contactdistance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [normalforce]
    data.normalforce = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/ContactPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32832356e1139e4e5fd083337d208b0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ContactPoint(null);
    if (msg.linkid !== undefined) {
      resolved.linkid = msg.linkid;
    }
    else {
      resolved.linkid = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.contactnormal !== undefined) {
      resolved.contactnormal = geometry_msgs.msg.Vector3.Resolve(msg.contactnormal)
    }
    else {
      resolved.contactnormal = new geometry_msgs.msg.Vector3()
    }

    if (msg.contactdistance !== undefined) {
      resolved.contactdistance = msg.contactdistance;
    }
    else {
      resolved.contactdistance = 0.0
    }

    if (msg.normalforce !== undefined) {
      resolved.normalforce = msg.normalforce;
    }
    else {
      resolved.normalforce = 0.0
    }

    return resolved;
    }
};

module.exports = ContactPoint;
