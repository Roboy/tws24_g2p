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

class MyoBrickCalibrationServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fpga = null;
      this.motor = null;
      this.degree = null;
      this.timeout = null;
      this.number_of_data_points = null;
      this.min_degree = null;
      this.max_degree = null;
    }
    else {
      if (initObj.hasOwnProperty('fpga')) {
        this.fpga = initObj.fpga
      }
      else {
        this.fpga = 0;
      }
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = 0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
      if (initObj.hasOwnProperty('number_of_data_points')) {
        this.number_of_data_points = initObj.number_of_data_points
      }
      else {
        this.number_of_data_points = 0;
      }
      if (initObj.hasOwnProperty('min_degree')) {
        this.min_degree = initObj.min_degree
      }
      else {
        this.min_degree = 0.0;
      }
      if (initObj.hasOwnProperty('max_degree')) {
        this.max_degree = initObj.max_degree
      }
      else {
        this.max_degree = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MyoBrickCalibrationServiceRequest
    // Serialize message field [fpga]
    bufferOffset = _serializer.int8(obj.fpga, buffer, bufferOffset);
    // Serialize message field [motor]
    bufferOffset = _serializer.int8(obj.motor, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.int8(obj.degree, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [number_of_data_points]
    bufferOffset = _serializer.uint32(obj.number_of_data_points, buffer, bufferOffset);
    // Serialize message field [min_degree]
    bufferOffset = _serializer.float32(obj.min_degree, buffer, bufferOffset);
    // Serialize message field [max_degree]
    bufferOffset = _serializer.float32(obj.max_degree, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MyoBrickCalibrationServiceRequest
    let len;
    let data = new MyoBrickCalibrationServiceRequest(null);
    // Deserialize message field [fpga]
    data.fpga = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [motor]
    data.motor = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [number_of_data_points]
    data.number_of_data_points = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [min_degree]
    data.min_degree = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_degree]
    data.max_degree = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/MyoBrickCalibrationServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '01b109725ce2a4cc2c1a8e505f50fa07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 fpga
    int8 motor
    int8 degree
    int32 timeout
    uint32 number_of_data_points
    float32 min_degree
    float32 max_degree
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MyoBrickCalibrationServiceRequest(null);
    if (msg.fpga !== undefined) {
      resolved.fpga = msg.fpga;
    }
    else {
      resolved.fpga = 0
    }

    if (msg.motor !== undefined) {
      resolved.motor = msg.motor;
    }
    else {
      resolved.motor = 0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    if (msg.number_of_data_points !== undefined) {
      resolved.number_of_data_points = msg.number_of_data_points;
    }
    else {
      resolved.number_of_data_points = 0
    }

    if (msg.min_degree !== undefined) {
      resolved.min_degree = msg.min_degree;
    }
    else {
      resolved.min_degree = 0.0
    }

    if (msg.max_degree !== undefined) {
      resolved.max_degree = msg.max_degree;
    }
    else {
      resolved.max_degree = 0.0
    }

    return resolved;
    }
};

class MyoBrickCalibrationServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.estimated_spring_parameters = null;
      this.motor_angle = null;
      this.motor_encoder = null;
    }
    else {
      if (initObj.hasOwnProperty('estimated_spring_parameters')) {
        this.estimated_spring_parameters = initObj.estimated_spring_parameters
      }
      else {
        this.estimated_spring_parameters = [];
      }
      if (initObj.hasOwnProperty('motor_angle')) {
        this.motor_angle = initObj.motor_angle
      }
      else {
        this.motor_angle = [];
      }
      if (initObj.hasOwnProperty('motor_encoder')) {
        this.motor_encoder = initObj.motor_encoder
      }
      else {
        this.motor_encoder = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MyoBrickCalibrationServiceResponse
    // Serialize message field [estimated_spring_parameters]
    bufferOffset = _arraySerializer.float32(obj.estimated_spring_parameters, buffer, bufferOffset, null);
    // Serialize message field [motor_angle]
    bufferOffset = _arraySerializer.float64(obj.motor_angle, buffer, bufferOffset, null);
    // Serialize message field [motor_encoder]
    bufferOffset = _arraySerializer.float64(obj.motor_encoder, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MyoBrickCalibrationServiceResponse
    let len;
    let data = new MyoBrickCalibrationServiceResponse(null);
    // Deserialize message field [estimated_spring_parameters]
    data.estimated_spring_parameters = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [motor_angle]
    data.motor_angle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_encoder]
    data.motor_encoder = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.estimated_spring_parameters.length;
    length += 8 * object.motor_angle.length;
    length += 8 * object.motor_encoder.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_middleware_msgs/MyoBrickCalibrationServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0ec05faaadb5e990760f8da40d23f61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] estimated_spring_parameters
    float64[] motor_angle
    float64[] motor_encoder
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MyoBrickCalibrationServiceResponse(null);
    if (msg.estimated_spring_parameters !== undefined) {
      resolved.estimated_spring_parameters = msg.estimated_spring_parameters;
    }
    else {
      resolved.estimated_spring_parameters = []
    }

    if (msg.motor_angle !== undefined) {
      resolved.motor_angle = msg.motor_angle;
    }
    else {
      resolved.motor_angle = []
    }

    if (msg.motor_encoder !== undefined) {
      resolved.motor_encoder = msg.motor_encoder;
    }
    else {
      resolved.motor_encoder = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MyoBrickCalibrationServiceRequest,
  Response: MyoBrickCalibrationServiceResponse,
  md5sum() { return 'e5ee8b92f36ed4d7af8af588c906a8b4'; },
  datatype() { return 'roboy_middleware_msgs/MyoBrickCalibrationService'; }
};
