; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude Move-request.msg.html

(cl:defclass <Move-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (desired_angle
    :reader desired_angle
    :initarg :desired_angle
    :type cl:float
    :initform 0.0)
   (desired_angular_velocity
    :reader desired_angular_velocity
    :initarg :desired_angular_velocity
    :type cl:float
    :initform 0.0)
   (desired_angular_acceleration
    :reader desired_angular_acceleration
    :initarg :desired_angular_acceleration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Move-request (<Move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Move-request> is deprecated: use bench_pkg-srv:Move-request instead.")))

(cl:ensure-generic-function 'current_angle-val :lambda-list '(m))
(cl:defmethod current_angle-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angle-val is deprecated.  Use bench_pkg-srv:current_angle instead.")
  (current_angle m))

(cl:ensure-generic-function 'current_angular_velocity-val :lambda-list '(m))
(cl:defmethod current_angular_velocity-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_velocity-val is deprecated.  Use bench_pkg-srv:current_angular_velocity instead.")
  (current_angular_velocity m))

(cl:ensure-generic-function 'current_angular_acceleration-val :lambda-list '(m))
(cl:defmethod current_angular_acceleration-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_acceleration-val is deprecated.  Use bench_pkg-srv:current_angular_acceleration instead.")
  (current_angular_acceleration m))

(cl:ensure-generic-function 'desired_angle-val :lambda-list '(m))
(cl:defmethod desired_angle-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angle-val is deprecated.  Use bench_pkg-srv:desired_angle instead.")
  (desired_angle m))

(cl:ensure-generic-function 'desired_angular_velocity-val :lambda-list '(m))
(cl:defmethod desired_angular_velocity-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angular_velocity-val is deprecated.  Use bench_pkg-srv:desired_angular_velocity instead.")
  (desired_angular_velocity m))

(cl:ensure-generic-function 'desired_angular_acceleration-val :lambda-list '(m))
(cl:defmethod desired_angular_acceleration-val ((m <Move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angular_acceleration-val is deprecated.  Use bench_pkg-srv:desired_angular_acceleration instead.")
  (desired_angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-request>) ostream)
  "Serializes a message object of type '<Move-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_angular_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-request>) istream)
  "Deserializes a message object of type '<Move-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_angular_acceleration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-request>)))
  "Returns string type for a service object of type '<Move-request>"
  "bench_pkg/MoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-request)))
  "Returns string type for a service object of type 'Move-request"
  "bench_pkg/MoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-request>)))
  "Returns md5sum for a message object of type '<Move-request>"
  "998958e5a974f5bf0d304c6972634d0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-request)))
  "Returns md5sum for a message object of type 'Move-request"
  "998958e5a974f5bf0d304c6972634d0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-request>)))
  "Returns full string definition for message of type '<Move-request>"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%float32 desired_angle~%float32 desired_angular_velocity~%float32 desired_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-request)))
  "Returns full string definition for message of type 'Move-request"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%float32 desired_angle~%float32 desired_angular_velocity~%float32 desired_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-request
    (cl:cons ':current_angle (current_angle msg))
    (cl:cons ':current_angular_velocity (current_angular_velocity msg))
    (cl:cons ':current_angular_acceleration (current_angular_acceleration msg))
    (cl:cons ':desired_angle (desired_angle msg))
    (cl:cons ':desired_angular_velocity (desired_angular_velocity msg))
    (cl:cons ':desired_angular_acceleration (desired_angular_acceleration msg))
))
;//! \htmlinclude Move-response.msg.html

(cl:defclass <Move-response> (roslisp-msg-protocol:ros-message)
  ((flex_myobrick_pwm
    :reader flex_myobrick_pwm
    :initarg :flex_myobrick_pwm
    :type cl:float
    :initform 0.0)
   (extend_myobrick_pwm
    :reader extend_myobrick_pwm
    :initarg :extend_myobrick_pwm
    :type cl:float
    :initform 0.0))
)

(cl:defclass Move-response (<Move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Move-response> is deprecated: use bench_pkg-srv:Move-response instead.")))

(cl:ensure-generic-function 'flex_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod flex_myobrick_pwm-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:flex_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:flex_myobrick_pwm instead.")
  (flex_myobrick_pwm m))

(cl:ensure-generic-function 'extend_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod extend_myobrick_pwm-val ((m <Move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:extend_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:extend_myobrick_pwm instead.")
  (extend_myobrick_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move-response>) ostream)
  "Serializes a message object of type '<Move-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move-response>) istream)
  "Deserializes a message object of type '<Move-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move-response>)))
  "Returns string type for a service object of type '<Move-response>"
  "bench_pkg/MoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move-response)))
  "Returns string type for a service object of type 'Move-response"
  "bench_pkg/MoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move-response>)))
  "Returns md5sum for a message object of type '<Move-response>"
  "998958e5a974f5bf0d304c6972634d0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move-response)))
  "Returns md5sum for a message object of type 'Move-response"
  "998958e5a974f5bf0d304c6972634d0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move-response>)))
  "Returns full string definition for message of type '<Move-response>"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move-response)))
  "Returns full string definition for message of type 'Move-response"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Move-response
    (cl:cons ':flex_myobrick_pwm (flex_myobrick_pwm msg))
    (cl:cons ':extend_myobrick_pwm (extend_myobrick_pwm msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Move)))
  'Move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Move)))
  'Move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move)))
  "Returns string type for a service object of type '<Move>"
  "bench_pkg/Move")