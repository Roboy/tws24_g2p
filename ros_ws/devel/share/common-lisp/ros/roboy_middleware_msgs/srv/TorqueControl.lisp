; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude TorqueControl-request.msg.html

(cl:defclass <TorqueControl-request> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TorqueControl-request (<TorqueControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<TorqueControl-request> is deprecated: use roboy_middleware_msgs-srv:TorqueControl-request instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <TorqueControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:joint_names-val is deprecated.  Use roboy_middleware_msgs-srv:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <TorqueControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:torque-val is deprecated.  Use roboy_middleware_msgs-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueControl-request>) ostream)
  "Serializes a message object of type '<TorqueControl-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueControl-request>) istream)
  "Deserializes a message object of type '<TorqueControl-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueControl-request>)))
  "Returns string type for a service object of type '<TorqueControl-request>"
  "roboy_middleware_msgs/TorqueControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueControl-request)))
  "Returns string type for a service object of type 'TorqueControl-request"
  "roboy_middleware_msgs/TorqueControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueControl-request>)))
  "Returns md5sum for a message object of type '<TorqueControl-request>"
  "41b1f656e77197c6e815a8a1ff7ad441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueControl-request)))
  "Returns md5sum for a message object of type 'TorqueControl-request"
  "41b1f656e77197c6e815a8a1ff7ad441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueControl-request>)))
  "Returns full string definition for message of type '<TorqueControl-request>"
  (cl:format cl:nil "string[] joint_names~%float32[] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueControl-request)))
  "Returns full string definition for message of type 'TorqueControl-request"
  (cl:format cl:nil "string[] joint_names~%float32[] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueControl-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueControl-request
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':torque (torque msg))
))
;//! \htmlinclude TorqueControl-response.msg.html

(cl:defclass <TorqueControl-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TorqueControl-response (<TorqueControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<TorqueControl-response> is deprecated: use roboy_middleware_msgs-srv:TorqueControl-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueControl-response>) ostream)
  "Serializes a message object of type '<TorqueControl-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueControl-response>) istream)
  "Deserializes a message object of type '<TorqueControl-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueControl-response>)))
  "Returns string type for a service object of type '<TorqueControl-response>"
  "roboy_middleware_msgs/TorqueControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueControl-response)))
  "Returns string type for a service object of type 'TorqueControl-response"
  "roboy_middleware_msgs/TorqueControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueControl-response>)))
  "Returns md5sum for a message object of type '<TorqueControl-response>"
  "41b1f656e77197c6e815a8a1ff7ad441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueControl-response)))
  "Returns md5sum for a message object of type 'TorqueControl-response"
  "41b1f656e77197c6e815a8a1ff7ad441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueControl-response>)))
  "Returns full string definition for message of type '<TorqueControl-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueControl-response)))
  "Returns full string definition for message of type 'TorqueControl-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueControl-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueControl-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TorqueControl)))
  'TorqueControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TorqueControl)))
  'TorqueControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueControl)))
  "Returns string type for a service object of type '<TorqueControl>"
  "roboy_middleware_msgs/TorqueControl")