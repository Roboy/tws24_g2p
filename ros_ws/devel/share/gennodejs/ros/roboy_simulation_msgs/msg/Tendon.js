// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Tendon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.force = null;
      this.l = null;
      this.ld = null;
      this.number_of_viapoints = null;
      this.viapoints = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = [];
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = [];
      }
      if (initObj.hasOwnProperty('ld')) {
        this.ld = initObj.ld
      }
      else {
        this.ld = [];
      }
      if (initObj.hasOwnProperty('number_of_viapoints')) {
        this.number_of_viapoints = initObj.number_of_viapoints
      }
      else {
        this.number_of_viapoints = [];
      }
      if (initObj.hasOwnProperty('viapoints')) {
        this.viapoints = initObj.viapoints
      }
      else {
        this.viapoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tendon
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float32(obj.force, buffer, bufferOffset, null);
    // Serialize message field [l]
    bufferOffset = _arraySerializer.float32(obj.l, buffer, bufferOffset, null);
    // Serialize message field [ld]
    bufferOffset = _arraySerializer.float32(obj.ld, buffer, bufferOffset, null);
    // Serialize message field [number_of_viapoints]
    bufferOffset = _arraySerializer.int32(obj.number_of_viapoints, buffer, bufferOffset, null);
    // Serialize message field [viapoints]
    // Serialize the length for message field [viapoints]
    bufferOffset = _serializer.uint32(obj.viapoints.length, buffer, bufferOffset);
    obj.viapoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tendon
    let len;
    let data = new Tendon(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [l]
    data.l = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ld]
    data.ld = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [number_of_viapoints]
    data.number_of_viapoints = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [viapoints]
    // Deserialize array length for message field [viapoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.viapoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.viapoints[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.force.length;
    length += 4 * object.l.length;
    length += 4 * object.ld.length;
    length += 4 * object.number_of_viapoints.length;
    length += 24 * object.viapoints.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/Tendon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40cb16776c2b7ebadec4e4fb33291d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # muscle names
    string[] name
    # force in Newton
    float32[] force
    # length in meter
    float32[] l
    # velocity in meter/s
    float32[] ld
    # number of viapoints
    int32[] number_of_viapoints
    # viapoints of the tendon in global coordinates
    geometry_msgs/Vector3[] viapoints
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
    const resolved = new Tendon(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = []
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = []
    }

    if (msg.ld !== undefined) {
      resolved.ld = msg.ld;
    }
    else {
      resolved.ld = []
    }

    if (msg.number_of_viapoints !== undefined) {
      resolved.number_of_viapoints = msg.number_of_viapoints;
    }
    else {
      resolved.number_of_viapoints = []
    }

    if (msg.viapoints !== undefined) {
      resolved.viapoints = new Array(msg.viapoints.length);
      for (let i = 0; i < resolved.viapoints.length; ++i) {
        resolved.viapoints[i] = geometry_msgs.msg.Vector3.Resolve(msg.viapoints[i]);
      }
    }
    else {
      resolved.viapoints = []
    }

    return resolved;
    }
};

module.exports = Tendon;
