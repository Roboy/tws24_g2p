// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoboyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.power_sense = null;
      this.power_5V_enabled = null;
      this.power_12V_enabled = null;
      this.current = null;
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
        this.name = '';
      }
      if (initObj.hasOwnProperty('power_sense')) {
        this.power_sense = initObj.power_sense
      }
      else {
        this.power_sense = [];
      }
      if (initObj.hasOwnProperty('power_5V_enabled')) {
        this.power_5V_enabled = initObj.power_5V_enabled
      }
      else {
        this.power_5V_enabled = false;
      }
      if (initObj.hasOwnProperty('power_12V_enabled')) {
        this.power_12V_enabled = initObj.power_12V_enabled
      }
      else {
        this.power_12V_enabled = false;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoboyState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [power_sense]
    bufferOffset = _arraySerializer.bool(obj.power_sense, buffer, bufferOffset, null);
    // Serialize message field [power_5V_enabled]
    bufferOffset = _serializer.bool(obj.power_5V_enabled, buffer, bufferOffset);
    // Serialize message field [power_12V_enabled]
    bufferOffset = _serializer.bool(obj.power_12V_enabled, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoboyState
    let len;
    let data = new RoboyState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [power_sense]
    data.power_sense = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [power_5V_enabled]
    data.power_5V_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [power_12V_enabled]
    data.power_12V_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.name);
    length += object.power_sense.length;
    length += 4 * object.current.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_middleware_msgs/RoboyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b194c9036326e7ae508f1bc6cc2fdf96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string name
    bool[] power_sense
    bool power_5V_enabled
    bool power_12V_enabled
    float32[] current
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoboyState(null);
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
      resolved.name = ''
    }

    if (msg.power_sense !== undefined) {
      resolved.power_sense = msg.power_sense;
    }
    else {
      resolved.power_sense = []
    }

    if (msg.power_5V_enabled !== undefined) {
      resolved.power_5V_enabled = msg.power_5V_enabled;
    }
    else {
      resolved.power_5V_enabled = false
    }

    if (msg.power_12V_enabled !== undefined) {
      resolved.power_12V_enabled = msg.power_12V_enabled;
    }
    else {
      resolved.power_12V_enabled = false
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    return resolved;
    }
};

module.exports = RoboyState;
