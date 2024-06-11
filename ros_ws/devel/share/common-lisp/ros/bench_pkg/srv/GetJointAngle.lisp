; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude GetJointAngle-request.msg.html

(cl:defclass <GetJointAngle-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetJointAngle-request (<GetJointAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<GetJointAngle-request> is deprecated: use bench_pkg-srv:GetJointAngle-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <GetJointAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:joint_name-val is deprecated.  Use bench_pkg-srv:joint_name instead.")
  (joint_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointAngle-request>) ostream)
  "Serializes a message object of type '<GetJointAngle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointAngle-request>) istream)
  "Deserializes a message object of type '<GetJointAngle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointAngle-request>)))
  "Returns string type for a service object of type '<GetJointAngle-request>"
  "bench_pkg/GetJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle-request)))
  "Returns string type for a service object of type 'GetJointAngle-request"
  "bench_pkg/GetJointAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointAngle-request>)))
  "Returns md5sum for a message object of type '<GetJointAngle-request>"
  "856421520b8199e4bd5f30cae2b9f0bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointAngle-request)))
  "Returns md5sum for a message object of type 'GetJointAngle-request"
  "856421520b8199e4bd5f30cae2b9f0bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointAngle-request>)))
  "Returns full string definition for message of type '<GetJointAngle-request>"
  (cl:format cl:nil "string joint_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointAngle-request)))
  "Returns full string definition for message of type 'GetJointAngle-request"
  (cl:format cl:nil "string joint_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointAngle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointAngle-request
    (cl:cons ':joint_name (joint_name msg))
))
;//! \htmlinclude GetJointAngle-response.msg.html

(cl:defclass <GetJointAngle-response> (roslisp-msg-protocol:ros-message)
  ((joint_angle
    :reader joint_angle
    :initarg :joint_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetJointAngle-response (<GetJointAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<GetJointAngle-response> is deprecated: use bench_pkg-srv:GetJointAngle-response instead.")))

(cl:ensure-generic-function 'joint_angle-val :lambda-list '(m))
(cl:defmethod joint_angle-val ((m <GetJointAngle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:joint_angle-val is deprecated.  Use bench_pkg-srv:joint_angle instead.")
  (joint_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointAngle-response>) ostream)
  "Serializes a message object of type '<GetJointAngle-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointAngle-response>) istream)
  "Deserializes a message object of type '<GetJointAngle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointAngle-response>)))
  "Returns string type for a service object of type '<GetJointAngle-response>"
  "bench_pkg/GetJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle-response)))
  "Returns string type for a service object of type 'GetJointAngle-response"
  "bench_pkg/GetJointAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointAngle-response>)))
  "Returns md5sum for a message object of type '<GetJointAngle-response>"
  "856421520b8199e4bd5f30cae2b9f0bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointAngle-response)))
  "Returns md5sum for a message object of type 'GetJointAngle-response"
  "856421520b8199e4bd5f30cae2b9f0bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointAngle-response>)))
  "Returns full string definition for message of type '<GetJointAngle-response>"
  (cl:format cl:nil "float32 joint_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointAngle-response)))
  "Returns full string definition for message of type 'GetJointAngle-response"
  (cl:format cl:nil "float32 joint_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointAngle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointAngle-response
    (cl:cons ':joint_angle (joint_angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointAngle)))
  'GetJointAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointAngle)))
  'GetJointAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointAngle)))
  "Returns string type for a service object of type '<GetJointAngle>"
  "bench_pkg/GetJointAngle")