// Auto-generated. Do not edit!

// (in-package roboy_cognition_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PaymentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.price = null;
      this.payment_option = null;
      this.flavors = null;
      this.scoops = null;
    }
    else {
      if (initObj.hasOwnProperty('price')) {
        this.price = initObj.price
      }
      else {
        this.price = 0;
      }
      if (initObj.hasOwnProperty('payment_option')) {
        this.payment_option = initObj.payment_option
      }
      else {
        this.payment_option = 0;
      }
      if (initObj.hasOwnProperty('flavors')) {
        this.flavors = initObj.flavors
      }
      else {
        this.flavors = [];
      }
      if (initObj.hasOwnProperty('scoops')) {
        this.scoops = initObj.scoops
      }
      else {
        this.scoops = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PaymentRequest
    // Serialize message field [price]
    bufferOffset = _serializer.uint16(obj.price, buffer, bufferOffset);
    // Serialize message field [payment_option]
    bufferOffset = _serializer.uint8(obj.payment_option, buffer, bufferOffset);
    // Serialize message field [flavors]
    bufferOffset = _arraySerializer.string(obj.flavors, buffer, bufferOffset, null);
    // Serialize message field [scoops]
    bufferOffset = _arraySerializer.int32(obj.scoops, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PaymentRequest
    let len;
    let data = new PaymentRequest(null);
    // Deserialize message field [price]
    data.price = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [payment_option]
    data.payment_option = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flavors]
    data.flavors = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [scoops]
    data.scoops = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.flavors.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.scoops.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/PaymentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86e4432f3a5464738b3263cc1dbf8ed4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 price
    uint8 payment_option
    string[] flavors
    int32[] scoops
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PaymentRequest(null);
    if (msg.price !== undefined) {
      resolved.price = msg.price;
    }
    else {
      resolved.price = 0
    }

    if (msg.payment_option !== undefined) {
      resolved.payment_option = msg.payment_option;
    }
    else {
      resolved.payment_option = 0
    }

    if (msg.flavors !== undefined) {
      resolved.flavors = msg.flavors;
    }
    else {
      resolved.flavors = []
    }

    if (msg.scoops !== undefined) {
      resolved.scoops = msg.scoops;
    }
    else {
      resolved.scoops = []
    }

    return resolved;
    }
};

class PaymentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.amount_paid = null;
      this.customer_name = null;
      this.error_message = null;
    }
    else {
      if (initObj.hasOwnProperty('amount_paid')) {
        this.amount_paid = initObj.amount_paid
      }
      else {
        this.amount_paid = 0;
      }
      if (initObj.hasOwnProperty('customer_name')) {
        this.customer_name = initObj.customer_name
      }
      else {
        this.customer_name = '';
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PaymentResponse
    // Serialize message field [amount_paid]
    bufferOffset = _serializer.uint16(obj.amount_paid, buffer, bufferOffset);
    // Serialize message field [customer_name]
    bufferOffset = _serializer.string(obj.customer_name, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PaymentResponse
    let len;
    let data = new PaymentResponse(null);
    // Deserialize message field [amount_paid]
    data.amount_paid = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [customer_name]
    data.customer_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.customer_name);
    length += _getByteLength(object.error_message);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_cognition_msgs/PaymentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40835f67f66b050ceede2ba7ff1f0e1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 amount_paid
    string customer_name
    string error_message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PaymentResponse(null);
    if (msg.amount_paid !== undefined) {
      resolved.amount_paid = msg.amount_paid;
    }
    else {
      resolved.amount_paid = 0
    }

    if (msg.customer_name !== undefined) {
      resolved.customer_name = msg.customer_name;
    }
    else {
      resolved.customer_name = ''
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PaymentRequest,
  Response: PaymentResponse,
  md5sum() { return '18ef32c43804b67a38f74684445bd22f'; },
  datatype() { return 'roboy_cognition_msgs/Payment'; }
};
