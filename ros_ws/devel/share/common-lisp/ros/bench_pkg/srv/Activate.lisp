; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude Activate-request.msg.html

(cl:defclass <Activate-request> (roslisp-msg-protocol:ros-message)
  ((flex_myobrick_pwm
    :reader flex_myobrick_pwm
    :initarg :flex_myobrick_pwm
    :type cl:float
    :initform 0.0)
   (extend_myobrick_pwm
    :reader extend_myobrick_pwm
    :initarg :extend_myobrick_pwm
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Activate-request (<Activate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Activate-request> is deprecated: use bench_pkg-srv:Activate-request instead.")))

(cl:ensure-generic-function 'flex_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod flex_myobrick_pwm-val ((m <Activate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:flex_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:flex_myobrick_pwm instead.")
  (flex_myobrick_pwm m))

(cl:ensure-generic-function 'extend_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod extend_myobrick_pwm-val ((m <Activate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:extend_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:extend_myobrick_pwm instead.")
  (extend_myobrick_pwm m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Activate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:duration-val is deprecated.  Use bench_pkg-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activate-request>) ostream)
  "Serializes a message object of type '<Activate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flex_myobrick_pwm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'extend_myobrick_pwm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activate-request>) istream)
  "Deserializes a message object of type '<Activate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flex_myobrick_pwm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'extend_myobrick_pwm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activate-request>)))
  "Returns string type for a service object of type '<Activate-request>"
  "bench_pkg/ActivateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activate-request)))
  "Returns string type for a service object of type 'Activate-request"
  "bench_pkg/ActivateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activate-request>)))
  "Returns md5sum for a message object of type '<Activate-request>"
  "251c4a167cb335bc980389871f0bb7af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activate-request)))
  "Returns md5sum for a message object of type 'Activate-request"
  "251c4a167cb335bc980389871f0bb7af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activate-request>)))
  "Returns full string definition for message of type '<Activate-request>"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%float32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activate-request)))
  "Returns full string definition for message of type 'Activate-request"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%float32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activate-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Activate-request
    (cl:cons ':flex_myobrick_pwm (flex_myobrick_pwm msg))
    (cl:cons ':extend_myobrick_pwm (extend_myobrick_pwm msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude Activate-response.msg.html

(cl:defclass <Activate-response> (roslisp-msg-protocol:ros-message)
  ((current_angle
    :reader current_angle
    :initarg :current_angle
    :type cl:float
    :initform 0.0)
   (current_angular_velocity
    :reader current_angular_velocity
    :initarg :current_angular_velocity
    :type cl:float
    :initform 0.0)
   (current_angular_acceleration
    :reader current_angular_acceleration
    :initarg :current_angular_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Activate-response (<Activate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Activate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Activate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Activate-response> is deprecated: use bench_pkg-srv:Activate-response instead.")))

(cl:ensure-generic-function 'current_angle-val :lambda-list '(m))
(cl:defmethod current_angle-val ((m <Activate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angle-val is deprecated.  Use bench_pkg-srv:current_angle instead.")
  (current_angle m))

(cl:ensure-generic-function 'current_angular_velocity-val :lambda-list '(m))
(cl:defmethod current_angular_velocity-val ((m <Activate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_velocity-val is deprecated.  Use bench_pkg-srv:current_angular_velocity instead.")
  (current_angular_velocity m))

(cl:ensure-generic-function 'current_angular_acceleration-val :lambda-list '(m))
(cl:defmethod current_angular_acceleration-val ((m <Activate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_acceleration-val is deprecated.  Use bench_pkg-srv:current_angular_acceleration instead.")
  (current_angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Activate-response>) ostream)
  "Serializes a message object of type '<Activate-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_angular_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Activate-response>) istream)
  "Deserializes a message object of type '<Activate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_angular_acceleration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Activate-response>)))
  "Returns string type for a service object of type '<Activate-response>"
  "bench_pkg/ActivateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activate-response)))
  "Returns string type for a service object of type 'Activate-response"
  "bench_pkg/ActivateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Activate-response>)))
  "Returns md5sum for a message object of type '<Activate-response>"
  "251c4a167cb335bc980389871f0bb7af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Activate-response)))
  "Returns md5sum for a message object of type 'Activate-response"
  "251c4a167cb335bc980389871f0bb7af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Activate-response>)))
  "Returns full string definition for message of type '<Activate-response>"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Activate-response)))
  "Returns full string definition for message of type 'Activate-response"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Activate-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Activate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Activate-response
    (cl:cons ':current_angle (current_angle msg))
    (cl:cons ':current_angular_velocity (current_angular_velocity msg))
    (cl:cons ':current_angular_acceleration (current_angular_acceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Activate)))
  'Activate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Activate)))
  'Activate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Activate)))
  "Returns string type for a service object of type '<Activate>"
  "bench_pkg/Activate")