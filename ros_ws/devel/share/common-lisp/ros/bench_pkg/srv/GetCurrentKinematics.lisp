; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude GetCurrentKinematics-request.msg.html

(cl:defclass <GetCurrentKinematics-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentKinematics-request (<GetCurrentKinematics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentKinematics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentKinematics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<GetCurrentKinematics-request> is deprecated: use bench_pkg-srv:GetCurrentKinematics-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentKinematics-request>) ostream)
  "Serializes a message object of type '<GetCurrentKinematics-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentKinematics-request>) istream)
  "Deserializes a message object of type '<GetCurrentKinematics-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentKinematics-request>)))
  "Returns string type for a service object of type '<GetCurrentKinematics-request>"
  "bench_pkg/GetCurrentKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentKinematics-request)))
  "Returns string type for a service object of type 'GetCurrentKinematics-request"
  "bench_pkg/GetCurrentKinematicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentKinematics-request>)))
  "Returns md5sum for a message object of type '<GetCurrentKinematics-request>"
  "94213a82b2b3ecbefd3ad0c853a1bfcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentKinematics-request)))
  "Returns md5sum for a message object of type 'GetCurrentKinematics-request"
  "94213a82b2b3ecbefd3ad0c853a1bfcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentKinematics-request>)))
  "Returns full string definition for message of type '<GetCurrentKinematics-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentKinematics-request)))
  "Returns full string definition for message of type 'GetCurrentKinematics-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentKinematics-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentKinematics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentKinematics-request
))
;//! \htmlinclude GetCurrentKinematics-response.msg.html

(cl:defclass <GetCurrentKinematics-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetCurrentKinematics-response (<GetCurrentKinematics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentKinematics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentKinematics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<GetCurrentKinematics-response> is deprecated: use bench_pkg-srv:GetCurrentKinematics-response instead.")))

(cl:ensure-generic-function 'current_angle-val :lambda-list '(m))
(cl:defmethod current_angle-val ((m <GetCurrentKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angle-val is deprecated.  Use bench_pkg-srv:current_angle instead.")
  (current_angle m))

(cl:ensure-generic-function 'current_angular_velocity-val :lambda-list '(m))
(cl:defmethod current_angular_velocity-val ((m <GetCurrentKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_velocity-val is deprecated.  Use bench_pkg-srv:current_angular_velocity instead.")
  (current_angular_velocity m))

(cl:ensure-generic-function 'current_angular_acceleration-val :lambda-list '(m))
(cl:defmethod current_angular_acceleration-val ((m <GetCurrentKinematics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:current_angular_acceleration-val is deprecated.  Use bench_pkg-srv:current_angular_acceleration instead.")
  (current_angular_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentKinematics-response>) ostream)
  "Serializes a message object of type '<GetCurrentKinematics-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentKinematics-response>) istream)
  "Deserializes a message object of type '<GetCurrentKinematics-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentKinematics-response>)))
  "Returns string type for a service object of type '<GetCurrentKinematics-response>"
  "bench_pkg/GetCurrentKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentKinematics-response)))
  "Returns string type for a service object of type 'GetCurrentKinematics-response"
  "bench_pkg/GetCurrentKinematicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentKinematics-response>)))
  "Returns md5sum for a message object of type '<GetCurrentKinematics-response>"
  "94213a82b2b3ecbefd3ad0c853a1bfcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentKinematics-response)))
  "Returns md5sum for a message object of type 'GetCurrentKinematics-response"
  "94213a82b2b3ecbefd3ad0c853a1bfcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentKinematics-response>)))
  "Returns full string definition for message of type '<GetCurrentKinematics-response>"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentKinematics-response)))
  "Returns full string definition for message of type 'GetCurrentKinematics-response"
  (cl:format cl:nil "float32 current_angle~%float32 current_angular_velocity~%float32 current_angular_acceleration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentKinematics-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentKinematics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentKinematics-response
    (cl:cons ':current_angle (current_angle msg))
    (cl:cons ':current_angular_velocity (current_angular_velocity msg))
    (cl:cons ':current_angular_acceleration (current_angular_acceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentKinematics)))
  'GetCurrentKinematics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentKinematics)))
  'GetCurrentKinematics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentKinematics)))
  "Returns string type for a service object of type '<GetCurrentKinematics>"
  "bench_pkg/GetCurrentKinematics")