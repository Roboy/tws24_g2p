// Auto-generated. Do not edit!

// (in-package roboy_simulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboy_id = null;
      this.f_contact = null;
      this.d_lift = null;
      this.d_prep = null;
      this.f_max = null;
      this.psi_heading = null;
      this.omega_heading = null;
      this.v_forward = null;
      this.v_com = null;
      this.k_h = null;
      this.k_p_theta_left = null;
      this.k_p_theta_right = null;
      this.k_d_theta_left = null;
      this.k_d_theta_right = null;
      this.k_p_phi = null;
      this.k_d_phi = null;
      this.k_v = null;
      this.k_p = null;
      this.k_q = null;
      this.k_omega = null;
      this.k_m_fplus = null;
      this.c_hip_lift = null;
      this.c_knee_lift = null;
      this.c_stance_lift = null;
      this.c_swing_prep = null;
      this.theta_groin_0 = null;
      this.phi_groin_0 = null;
      this.theta_trunk_0 = null;
      this.phi_trunk_0 = null;
      this.theta_knee = null;
      this.theta_ankle = null;
      this.d_s = null;
      this.d_c = null;
      this.v_s = null;
      this.v_c = null;
      this.sim_time = null;
    }
    else {
      if (initObj.hasOwnProperty('roboy_id')) {
        this.roboy_id = initObj.roboy_id
      }
      else {
        this.roboy_id = 0;
      }
      if (initObj.hasOwnProperty('f_contact')) {
        this.f_contact = initObj.f_contact
      }
      else {
        this.f_contact = 0.0;
      }
      if (initObj.hasOwnProperty('d_lift')) {
        this.d_lift = initObj.d_lift
      }
      else {
        this.d_lift = 0.0;
      }
      if (initObj.hasOwnProperty('d_prep')) {
        this.d_prep = initObj.d_prep
      }
      else {
        this.d_prep = 0.0;
      }
      if (initObj.hasOwnProperty('f_max')) {
        this.f_max = initObj.f_max
      }
      else {
        this.f_max = 0.0;
      }
      if (initObj.hasOwnProperty('psi_heading')) {
        this.psi_heading = initObj.psi_heading
      }
      else {
        this.psi_heading = 0.0;
      }
      if (initObj.hasOwnProperty('omega_heading')) {
        this.omega_heading = initObj.omega_heading
      }
      else {
        this.omega_heading = 0.0;
      }
      if (initObj.hasOwnProperty('v_forward')) {
        this.v_forward = initObj.v_forward
      }
      else {
        this.v_forward = 0.0;
      }
      if (initObj.hasOwnProperty('v_com')) {
        this.v_com = initObj.v_com
      }
      else {
        this.v_com = 0.0;
      }
      if (initObj.hasOwnProperty('k_h')) {
        this.k_h = initObj.k_h
      }
      else {
        this.k_h = 0.0;
      }
      if (initObj.hasOwnProperty('k_p_theta_left')) {
        this.k_p_theta_left = initObj.k_p_theta_left
      }
      else {
        this.k_p_theta_left = [];
      }
      if (initObj.hasOwnProperty('k_p_theta_right')) {
        this.k_p_theta_right = initObj.k_p_theta_right
      }
      else {
        this.k_p_theta_right = [];
      }
      if (initObj.hasOwnProperty('k_d_theta_left')) {
        this.k_d_theta_left = initObj.k_d_theta_left
      }
      else {
        this.k_d_theta_left = [];
      }
      if (initObj.hasOwnProperty('k_d_theta_right')) {
        this.k_d_theta_right = initObj.k_d_theta_right
      }
      else {
        this.k_d_theta_right = [];
      }
      if (initObj.hasOwnProperty('k_p_phi')) {
        this.k_p_phi = initObj.k_p_phi
      }
      else {
        this.k_p_phi = [];
      }
      if (initObj.hasOwnProperty('k_d_phi')) {
        this.k_d_phi = initObj.k_d_phi
      }
      else {
        this.k_d_phi = [];
      }
      if (initObj.hasOwnProperty('k_v')) {
        this.k_v = initObj.k_v
      }
      else {
        this.k_v = 0.0;
      }
      if (initObj.hasOwnProperty('k_p')) {
        this.k_p = initObj.k_p
      }
      else {
        this.k_p = 0.0;
      }
      if (initObj.hasOwnProperty('k_q')) {
        this.k_q = initObj.k_q
      }
      else {
        this.k_q = 0.0;
      }
      if (initObj.hasOwnProperty('k_omega')) {
        this.k_omega = initObj.k_omega
      }
      else {
        this.k_omega = 0.0;
      }
      if (initObj.hasOwnProperty('k_m_fplus')) {
        this.k_m_fplus = initObj.k_m_fplus
      }
      else {
        this.k_m_fplus = 0.0;
      }
      if (initObj.hasOwnProperty('c_hip_lift')) {
        this.c_hip_lift = initObj.c_hip_lift
      }
      else {
        this.c_hip_lift = 0.0;
      }
      if (initObj.hasOwnProperty('c_knee_lift')) {
        this.c_knee_lift = initObj.c_knee_lift
      }
      else {
        this.c_knee_lift = 0.0;
      }
      if (initObj.hasOwnProperty('c_stance_lift')) {
        this.c_stance_lift = initObj.c_stance_lift
      }
      else {
        this.c_stance_lift = 0.0;
      }
      if (initObj.hasOwnProperty('c_swing_prep')) {
        this.c_swing_prep = initObj.c_swing_prep
      }
      else {
        this.c_swing_prep = 0.0;
      }
      if (initObj.hasOwnProperty('theta_groin_0')) {
        this.theta_groin_0 = initObj.theta_groin_0
      }
      else {
        this.theta_groin_0 = [];
      }
      if (initObj.hasOwnProperty('phi_groin_0')) {
        this.phi_groin_0 = initObj.phi_groin_0
      }
      else {
        this.phi_groin_0 = [];
      }
      if (initObj.hasOwnProperty('theta_trunk_0')) {
        this.theta_trunk_0 = initObj.theta_trunk_0
      }
      else {
        this.theta_trunk_0 = 0.0;
      }
      if (initObj.hasOwnProperty('phi_trunk_0')) {
        this.phi_trunk_0 = initObj.phi_trunk_0
      }
      else {
        this.phi_trunk_0 = 0.0;
      }
      if (initObj.hasOwnProperty('theta_knee')) {
        this.theta_knee = initObj.theta_knee
      }
      else {
        this.theta_knee = [];
      }
      if (initObj.hasOwnProperty('theta_ankle')) {
        this.theta_ankle = initObj.theta_ankle
      }
      else {
        this.theta_ankle = [];
      }
      if (initObj.hasOwnProperty('d_s')) {
        this.d_s = initObj.d_s
      }
      else {
        this.d_s = [];
      }
      if (initObj.hasOwnProperty('d_c')) {
        this.d_c = initObj.d_c
      }
      else {
        this.d_c = [];
      }
      if (initObj.hasOwnProperty('v_s')) {
        this.v_s = initObj.v_s
      }
      else {
        this.v_s = [];
      }
      if (initObj.hasOwnProperty('v_c')) {
        this.v_c = initObj.v_c
      }
      else {
        this.v_c = [];
      }
      if (initObj.hasOwnProperty('sim_time')) {
        this.sim_time = initObj.sim_time
      }
      else {
        this.sim_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerParameters
    // Serialize message field [roboy_id]
    bufferOffset = _serializer.int32(obj.roboy_id, buffer, bufferOffset);
    // Serialize message field [f_contact]
    bufferOffset = _serializer.float64(obj.f_contact, buffer, bufferOffset);
    // Serialize message field [d_lift]
    bufferOffset = _serializer.float64(obj.d_lift, buffer, bufferOffset);
    // Serialize message field [d_prep]
    bufferOffset = _serializer.float64(obj.d_prep, buffer, bufferOffset);
    // Serialize message field [f_max]
    bufferOffset = _serializer.float64(obj.f_max, buffer, bufferOffset);
    // Serialize message field [psi_heading]
    bufferOffset = _serializer.float64(obj.psi_heading, buffer, bufferOffset);
    // Serialize message field [omega_heading]
    bufferOffset = _serializer.float64(obj.omega_heading, buffer, bufferOffset);
    // Serialize message field [v_forward]
    bufferOffset = _serializer.float64(obj.v_forward, buffer, bufferOffset);
    // Serialize message field [v_com]
    bufferOffset = _serializer.float64(obj.v_com, buffer, bufferOffset);
    // Serialize message field [k_h]
    bufferOffset = _serializer.float64(obj.k_h, buffer, bufferOffset);
    // Serialize message field [k_p_theta_left]
    bufferOffset = _arraySerializer.float64(obj.k_p_theta_left, buffer, bufferOffset, null);
    // Serialize message field [k_p_theta_right]
    bufferOffset = _arraySerializer.float64(obj.k_p_theta_right, buffer, bufferOffset, null);
    // Serialize message field [k_d_theta_left]
    bufferOffset = _arraySerializer.float64(obj.k_d_theta_left, buffer, bufferOffset, null);
    // Serialize message field [k_d_theta_right]
    bufferOffset = _arraySerializer.float64(obj.k_d_theta_right, buffer, bufferOffset, null);
    // Serialize message field [k_p_phi]
    bufferOffset = _arraySerializer.float64(obj.k_p_phi, buffer, bufferOffset, null);
    // Serialize message field [k_d_phi]
    bufferOffset = _arraySerializer.float64(obj.k_d_phi, buffer, bufferOffset, null);
    // Serialize message field [k_v]
    bufferOffset = _serializer.float64(obj.k_v, buffer, bufferOffset);
    // Serialize message field [k_p]
    bufferOffset = _serializer.float64(obj.k_p, buffer, bufferOffset);
    // Serialize message field [k_q]
    bufferOffset = _serializer.float64(obj.k_q, buffer, bufferOffset);
    // Serialize message field [k_omega]
    bufferOffset = _serializer.float64(obj.k_omega, buffer, bufferOffset);
    // Serialize message field [k_m_fplus]
    bufferOffset = _serializer.float64(obj.k_m_fplus, buffer, bufferOffset);
    // Serialize message field [c_hip_lift]
    bufferOffset = _serializer.float64(obj.c_hip_lift, buffer, bufferOffset);
    // Serialize message field [c_knee_lift]
    bufferOffset = _serializer.float64(obj.c_knee_lift, buffer, bufferOffset);
    // Serialize message field [c_stance_lift]
    bufferOffset = _serializer.float64(obj.c_stance_lift, buffer, bufferOffset);
    // Serialize message field [c_swing_prep]
    bufferOffset = _serializer.float64(obj.c_swing_prep, buffer, bufferOffset);
    // Serialize message field [theta_groin_0]
    bufferOffset = _arraySerializer.float64(obj.theta_groin_0, buffer, bufferOffset, null);
    // Serialize message field [phi_groin_0]
    bufferOffset = _arraySerializer.float64(obj.phi_groin_0, buffer, bufferOffset, null);
    // Serialize message field [theta_trunk_0]
    bufferOffset = _serializer.float64(obj.theta_trunk_0, buffer, bufferOffset);
    // Serialize message field [phi_trunk_0]
    bufferOffset = _serializer.float64(obj.phi_trunk_0, buffer, bufferOffset);
    // Serialize message field [theta_knee]
    bufferOffset = _arraySerializer.float64(obj.theta_knee, buffer, bufferOffset, null);
    // Serialize message field [theta_ankle]
    bufferOffset = _arraySerializer.float64(obj.theta_ankle, buffer, bufferOffset, null);
    // Serialize message field [d_s]
    bufferOffset = _arraySerializer.float64(obj.d_s, buffer, bufferOffset, null);
    // Serialize message field [d_c]
    bufferOffset = _arraySerializer.float64(obj.d_c, buffer, bufferOffset, null);
    // Serialize message field [v_s]
    bufferOffset = _arraySerializer.float64(obj.v_s, buffer, bufferOffset, null);
    // Serialize message field [v_c]
    bufferOffset = _arraySerializer.float64(obj.v_c, buffer, bufferOffset, null);
    // Serialize message field [sim_time]
    bufferOffset = _serializer.float32(obj.sim_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerParameters
    let len;
    let data = new ControllerParameters(null);
    // Deserialize message field [roboy_id]
    data.roboy_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [f_contact]
    data.f_contact = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_lift]
    data.d_lift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_prep]
    data.d_prep = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_max]
    data.f_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi_heading]
    data.psi_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega_heading]
    data.omega_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_forward]
    data.v_forward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_com]
    data.v_com = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_h]
    data.k_h = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_p_theta_left]
    data.k_p_theta_left = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_p_theta_right]
    data.k_p_theta_right = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_d_theta_left]
    data.k_d_theta_left = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_d_theta_right]
    data.k_d_theta_right = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_p_phi]
    data.k_p_phi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_d_phi]
    data.k_d_phi = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [k_v]
    data.k_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_p]
    data.k_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_q]
    data.k_q = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_omega]
    data.k_omega = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_m_fplus]
    data.k_m_fplus = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_hip_lift]
    data.c_hip_lift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_knee_lift]
    data.c_knee_lift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_stance_lift]
    data.c_stance_lift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_swing_prep]
    data.c_swing_prep = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_groin_0]
    data.theta_groin_0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [phi_groin_0]
    data.phi_groin_0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [theta_trunk_0]
    data.theta_trunk_0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phi_trunk_0]
    data.phi_trunk_0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_knee]
    data.theta_knee = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [theta_ankle]
    data.theta_ankle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_s]
    data.d_s = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_c]
    data.d_c = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [v_s]
    data.v_s = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [v_c]
    data.v_c = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sim_time]
    data.sim_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.k_p_theta_left.length;
    length += 8 * object.k_p_theta_right.length;
    length += 8 * object.k_d_theta_left.length;
    length += 8 * object.k_d_theta_right.length;
    length += 8 * object.k_p_phi.length;
    length += 8 * object.k_d_phi.length;
    length += 8 * object.theta_groin_0.length;
    length += 8 * object.phi_groin_0.length;
    length += 8 * object.theta_knee.length;
    length += 8 * object.theta_ankle.length;
    length += 8 * object.d_s.length;
    length += 8 * object.d_c.length;
    length += 8 * object.v_s.length;
    length += 8 * object.v_c.length;
    return length + 224;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_simulation_msgs/ControllerParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4339872af975f1c90e6139dc089f82f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboy_id
    float64 f_contact
    float64 d_lift
    float64 d_prep
    float64 f_max
    float64 psi_heading
    float64 omega_heading
    float64 v_forward
    float64 v_com
    float64 k_h
    float64[] k_p_theta_left
    float64[] k_p_theta_right
    float64[] k_d_theta_left
    float64[] k_d_theta_right
    float64[] k_p_phi
    float64[] k_d_phi
    float64 k_v
    float64 k_p
    float64 k_q
    float64 k_omega
    float64 k_m_fplus
    float64 c_hip_lift
    float64 c_knee_lift
    float64 c_stance_lift
    float64 c_swing_prep
    float64[] theta_groin_0
    float64[] phi_groin_0
    float64 theta_trunk_0
    float64 phi_trunk_0
    float64[] theta_knee
    float64[] theta_ankle
    float64[] d_s
    float64[] d_c
    float64[] v_s
    float64[] v_c
    float32 sim_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerParameters(null);
    if (msg.roboy_id !== undefined) {
      resolved.roboy_id = msg.roboy_id;
    }
    else {
      resolved.roboy_id = 0
    }

    if (msg.f_contact !== undefined) {
      resolved.f_contact = msg.f_contact;
    }
    else {
      resolved.f_contact = 0.0
    }

    if (msg.d_lift !== undefined) {
      resolved.d_lift = msg.d_lift;
    }
    else {
      resolved.d_lift = 0.0
    }

    if (msg.d_prep !== undefined) {
      resolved.d_prep = msg.d_prep;
    }
    else {
      resolved.d_prep = 0.0
    }

    if (msg.f_max !== undefined) {
      resolved.f_max = msg.f_max;
    }
    else {
      resolved.f_max = 0.0
    }

    if (msg.psi_heading !== undefined) {
      resolved.psi_heading = msg.psi_heading;
    }
    else {
      resolved.psi_heading = 0.0
    }

    if (msg.omega_heading !== undefined) {
      resolved.omega_heading = msg.omega_heading;
    }
    else {
      resolved.omega_heading = 0.0
    }

    if (msg.v_forward !== undefined) {
      resolved.v_forward = msg.v_forward;
    }
    else {
      resolved.v_forward = 0.0
    }

    if (msg.v_com !== undefined) {
      resolved.v_com = msg.v_com;
    }
    else {
      resolved.v_com = 0.0
    }

    if (msg.k_h !== undefined) {
      resolved.k_h = msg.k_h;
    }
    else {
      resolved.k_h = 0.0
    }

    if (msg.k_p_theta_left !== undefined) {
      resolved.k_p_theta_left = msg.k_p_theta_left;
    }
    else {
      resolved.k_p_theta_left = []
    }

    if (msg.k_p_theta_right !== undefined) {
      resolved.k_p_theta_right = msg.k_p_theta_right;
    }
    else {
      resolved.k_p_theta_right = []
    }

    if (msg.k_d_theta_left !== undefined) {
      resolved.k_d_theta_left = msg.k_d_theta_left;
    }
    else {
      resolved.k_d_theta_left = []
    }

    if (msg.k_d_theta_right !== undefined) {
      resolved.k_d_theta_right = msg.k_d_theta_right;
    }
    else {
      resolved.k_d_theta_right = []
    }

    if (msg.k_p_phi !== undefined) {
      resolved.k_p_phi = msg.k_p_phi;
    }
    else {
      resolved.k_p_phi = []
    }

    if (msg.k_d_phi !== undefined) {
      resolved.k_d_phi = msg.k_d_phi;
    }
    else {
      resolved.k_d_phi = []
    }

    if (msg.k_v !== undefined) {
      resolved.k_v = msg.k_v;
    }
    else {
      resolved.k_v = 0.0
    }

    if (msg.k_p !== undefined) {
      resolved.k_p = msg.k_p;
    }
    else {
      resolved.k_p = 0.0
    }

    if (msg.k_q !== undefined) {
      resolved.k_q = msg.k_q;
    }
    else {
      resolved.k_q = 0.0
    }

    if (msg.k_omega !== undefined) {
      resolved.k_omega = msg.k_omega;
    }
    else {
      resolved.k_omega = 0.0
    }

    if (msg.k_m_fplus !== undefined) {
      resolved.k_m_fplus = msg.k_m_fplus;
    }
    else {
      resolved.k_m_fplus = 0.0
    }

    if (msg.c_hip_lift !== undefined) {
      resolved.c_hip_lift = msg.c_hip_lift;
    }
    else {
      resolved.c_hip_lift = 0.0
    }

    if (msg.c_knee_lift !== undefined) {
      resolved.c_knee_lift = msg.c_knee_lift;
    }
    else {
      resolved.c_knee_lift = 0.0
    }

    if (msg.c_stance_lift !== undefined) {
      resolved.c_stance_lift = msg.c_stance_lift;
    }
    else {
      resolved.c_stance_lift = 0.0
    }

    if (msg.c_swing_prep !== undefined) {
      resolved.c_swing_prep = msg.c_swing_prep;
    }
    else {
      resolved.c_swing_prep = 0.0
    }

    if (msg.theta_groin_0 !== undefined) {
      resolved.theta_groin_0 = msg.theta_groin_0;
    }
    else {
      resolved.theta_groin_0 = []
    }

    if (msg.phi_groin_0 !== undefined) {
      resolved.phi_groin_0 = msg.phi_groin_0;
    }
    else {
      resolved.phi_groin_0 = []
    }

    if (msg.theta_trunk_0 !== undefined) {
      resolved.theta_trunk_0 = msg.theta_trunk_0;
    }
    else {
      resolved.theta_trunk_0 = 0.0
    }

    if (msg.phi_trunk_0 !== undefined) {
      resolved.phi_trunk_0 = msg.phi_trunk_0;
    }
    else {
      resolved.phi_trunk_0 = 0.0
    }

    if (msg.theta_knee !== undefined) {
      resolved.theta_knee = msg.theta_knee;
    }
    else {
      resolved.theta_knee = []
    }

    if (msg.theta_ankle !== undefined) {
      resolved.theta_ankle = msg.theta_ankle;
    }
    else {
      resolved.theta_ankle = []
    }

    if (msg.d_s !== undefined) {
      resolved.d_s = msg.d_s;
    }
    else {
      resolved.d_s = []
    }

    if (msg.d_c !== undefined) {
      resolved.d_c = msg.d_c;
    }
    else {
      resolved.d_c = []
    }

    if (msg.v_s !== undefined) {
      resolved.v_s = msg.v_s;
    }
    else {
      resolved.v_s = []
    }

    if (msg.v_c !== undefined) {
      resolved.v_c = msg.v_c;
    }
    else {
      resolved.v_c = []
    }

    if (msg.sim_time !== undefined) {
      resolved.sim_time = msg.sim_time;
    }
    else {
      resolved.sim_time = 0.0
    }

    return resolved;
    }
};

module.exports = ControllerParameters;
