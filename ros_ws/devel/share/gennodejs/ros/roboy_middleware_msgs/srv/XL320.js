// Auto-generated. Do not edit!

// (in-package roboy_middleware_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class XL320Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.motor = null;
      this.address = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = false;
      }
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = 0;
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XL320Request
    // Serialize message field [type]
    bufferOffset = _serializer.bool(obj.type, buffer, bufferOffset);
    // Serialize message field [motor]
    bufferOffset = _serializer.uint8(obj.motor, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.uint8(obj.address, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XL320Request
    let len;
    let data = new XL320Request(null);
    // Deserialize message field [type]
    data.type = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor]
    data.motor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/XL320Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0b3c3391dc54fe3a913cbf9ecf628c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 0: read 1:write
    bool type
    uint8 motor
    # EEPROM Area
    # MODEL_NUMBER             = 0, /**< Model number [R] (default=350) */
    # VERSION                  = 2, /**< Information on the version of firmware [R] */
    # id                       = 3, /**< id of Dynamixel [RW] (default=1 ; min=0 ; max=252) */
    # BAUD_RATE                = 4, /**< Baud Rate of Dynamixel [RW] (default=3 ; min=0 ; max=3) 0: 9600, 1:57600, 2:115200, 3:1Mbps*/
    # RETURN_DELAY_TIME        = 5, /**< Return Delay Time [RW] (default=250 ; min=0 ; max=254) */
    # CW_ANGLE_LIMIT           = 6, /**< clockwise Angle Limit [RW] (default=0 ; min=0 ; max=1023) */
    # CCW_ANGLE_LIMIT          = 8, /**< counterclockwise Angle Limit [RW] (default=1023 ; min=0 ; max=1023) */
    # CONTROL_MODE             = 11, /**< Control Mode [RW] (default=2 ; min=1 ; max=2) */
    # LIMIT_TEMPERATURE        = 12, /**< Internal Limit Temperature [RW] (default=65 ; min=0 ; max=150) */
    # LOWER_LIMIT_VOLTAGE      = 13, /**< Lowest Limit Voltage [RW] (default=60 ; min=50 ; max=250) */
    # UPPPER_LIMIT_VOLTAGE     = 14, /**< Upper Limit Voltage [RW] (default=90 ; min=50 ; max=250) */
    # MAX_TORQUE               = 15, /**< Lowest byte of Max. Torque [RW] (default=1023 ; min=0 ; max=1023) */
    # RETURN_LEVEL             = 17, /**< Return Level [RW] (default=2 ; min=0 ; max=2) */
    # ALARM_SHUTDOWN           = 18, /**< Shutdown for Alarm [RW] (default=3 ; min=0 ; max=7) */
    # RAM Area
    # TORQUE_ENABLE            = 24, /**< Torque On/Off [RW] (default=0 ; min=0 ; max=1) */
    # LED                      = 25, /**< LED On/Off [RW] (default=0 ; min=0 ; max=7) */
    # D_GAIN    				 = 27, /**< D Gain [RW] (default=0 ; min=0 ; max=254) */
    # I_GAIN      			 = 28, /**< I Gain [RW] (default=0 ; min=0 ; max=254) */
    # P_GAIN    				 = 29, /**< P Gain [RW] (default=32 ; min=0 ; max=254) */
    # GOAL_POSITION            = 30, /**< Goal Position [RW] (min=0 ; max=1023) */
    # GOAL_SPEED               = 32, /**< Goal Speed [RW] (min=0 ; max=2047) */
    # GOAL_TORQUE 		     = 35, /**< Goal Torque [RW] (min=0 ; max=1023) */
    # PRESENT_POSITION         = 37, /**< Current Position [R] */
    # PRESENT_SPEED            = 39, /**< Current Speed [R] */
    # PRESENT_LOAD             = 41, /**< Current Load [R] */
    # PRESENT_VOLTAGE          = 45, /**< Current Voltage [R] */
    # PRESENT_TEMPERATURE      = 46, /**< Present temperature [R] */
    # REGISTERED_INSTRUCTION   = 47, /**< Registered Instruction [R] (default=0) */
    # MOVING                   = 49, /**< Moving [R] (default=0) */
    # HARDWARE_ERROR           = 50, /**< Hardware error status [R] (default=0) */
    # PUNCH                    = 51  /**< Punch [RW] (default=32 ; min=0 ; max=1023) */
    uint8 address
    int16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XL320Request(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = false
    }

    if (msg.motor !== undefined) {
      resolved.motor = msg.motor;
    }
    else {
      resolved.motor = 0
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

class XL320Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type XL320Response
    // Serialize message field [value]
    bufferOffset = _serializer.int16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type XL320Response
    let len;
    let data = new XL320Response(null);
    // Deserialize message field [value]
    data.value = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/XL320Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55daaea9ec64e37c8a6144d42a7265e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new XL320Response(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: XL320Request,
  Response: XL320Response,
  md5sum() { return '2df206e3bbdc218ed0e86d48777a9fbf'; },
  datatype() { return 'roboy_middleware_msgs/XL320'; }
};
