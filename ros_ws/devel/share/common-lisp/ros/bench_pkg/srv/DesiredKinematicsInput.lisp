; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude DesiredKinematicsInput-request.msg.html

(cl:defclass <DesiredKinematicsInput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DesiredKinematicsInput-request (<DesiredKinematicsInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesiredKinematicsInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesiredKinematicsInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<DesiredKinematicsInput-request> is deprecated: use bench_pkg-srv:DesiredKinematicsInput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesiredKinematicsInput-request>) ostream)
  "Serializes a message object of type '<DesiredKinematicsInput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesiredKinematicsInput-request>) istream)
  "Deserializes a message object of type '<DesiredKinematicsInput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesiredKinematicsInput-request>)))
  "Returns string type for a service object of type '<DesiredKinematicsInput-request>"
  "bench_pkg/DesiredKinematicsInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredKinematicsInput-request)))
  "Returns string type for a service object of type 'DesiredKinematicsInput-request"
  "bench_pkg/DesiredKinematicsInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesiredKinematicsInput-request>)))
  "Returns md5sum for a message object of type '<DesiredKinematicsInput-request>"
  "df533ed2fd99d430c4c78a9486207074")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesiredKinematicsInput-request)))
  "Returns md5sum for a message object of type 'DesiredKinematicsInput-request"
  "df533ed2fd99d430c4c78a9486207074")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesiredKinematicsInput-request>)))
  "Returns full string definition for message of type '<DesiredKinematicsInput-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesiredKinematicsInput-request)))
  "Returns full string definition for message of type 'DesiredKinematicsInput-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesiredKinematicsInput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesiredKinematicsInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DesiredKinematicsInput-request
))
;//! \htmlinclude DesiredKinematicsInput-response.msg.html

(cl:defclass <DesiredKinematicsInput-response> (roslisp-msg-protocol:ros-message)
  ((desired_angle
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

(cl:defclass DesiredKinematicsInput-response (<DesiredKinematicsInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesiredKinematicsInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesiredKinematicsInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<DesiredKinematicsInput-response> is deprecated: use bench_pkg-srv:DesiredKinematicsInput-response instead.")))

(cl:ensure-generic-function 'desired_angle-val :lambda-list '(m))
(cl:defmethod desired_angle-val ((m <DesiredKinematicsInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angle-val is deprecated.  Use bench_pkg-srv:desired_angle instead.")
  (desired_angle m))

(cl:ensure-generic-function 'desired_angular_velocity-val :lambda-list '(m))
(cl:defmethod desired_angular_velocity-val ((m <DesiredKinematicsInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angular_velocity-val is deprecated.  Use bench_pkg-srv:desired_angular_velocity instead.")
  (desired_angular_velocity m))

(cl:ensure-generic-function 'desired_angular_acceleration-val :lambda-list '(m))
(cl:defmethod desired_angular_acceleration-val ((m <DesiredKinematicsInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:desired_angular_acceleration-val is deprecated.  Use bench_pkg-srv:desired_angular_acceleration instead.")
  (desired_angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesiredKinematicsInput-response>) ostream)
  "Serializes a message object of type '<DesiredKinematicsInput-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesiredKinematicsInput-response>) istream)
  "Deserializes a message object of type '<DesiredKinematicsInput-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesiredKinematicsInput-response>)))
  "Returns string type for a service object of type '<DesiredKinematicsInput-response>"
  "bench_pkg/DesiredKinematicsInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredKinematicsInput-response)))
  "Returns string type for a service object of type 'DesiredKinematicsInput-response"
  "bench_pkg/DesiredKinematicsInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesiredKinematicsInput-response>)))
  "Returns md5sum for a message object of type '<DesiredKinematicsInput-response>"
  "df533ed2fd99d430c4c78a9486207074")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesiredKinematicsInput-response)))
  "Returns md5sum for a message object of type 'DesiredKinematicsInput-response"
  "df533ed2fd99d430c4c78a9486207074")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesiredKinematicsInput-response>)))
  "Returns full string definition for message of type '<DesiredKinematicsInput-response>"
  (cl:format cl:nil "float32 desired_angle~%float32 desired_angular_velocity~%float32 desired_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesiredKinematicsInput-response)))
  "Returns full string definition for message of type 'DesiredKinematicsInput-response"
  (cl:format cl:nil "float32 desired_angle~%float32 desired_angular_velocity~%float32 desired_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesiredKinematicsInput-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesiredKinematicsInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DesiredKinematicsInput-response
    (cl:cons ':desired_angle (desired_angle msg))
    (cl:cons ':desired_angular_velocity (desired_angular_velocity msg))
    (cl:cons ':desired_angular_acceleration (desired_angular_acceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DesiredKinematicsInput)))
  'DesiredKinematicsInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DesiredKinematicsInput)))
  'DesiredKinematicsInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredKinematicsInput)))
  "Returns string type for a service object of type '<DesiredKinematicsInput>"
  "bench_pkg/DesiredKinematicsInput")