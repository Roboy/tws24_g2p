; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-msg)


;//! \htmlinclude BodyPart.msg.html

(cl:defclass <BodyPart> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BodyPart (<BodyPart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyPart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyPart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-msg:<BodyPart> is deprecated: use roboy_middleware_msgs-msg:BodyPart instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:name-val is deprecated.  Use roboy_middleware_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BodyPart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:status-val is deprecated.  Use roboy_middleware_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BodyPart>)))
    "Constants for message type '<BodyPart>"
  '((:ENABLED . 0)
    (:DISABLED . 1)
    (:ERROR_CONDITION_A . 2)
    (:ERROR_CONDITION_B . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BodyPart)))
    "Constants for message type 'BodyPart"
  '((:ENABLED . 0)
    (:DISABLED . 1)
    (:ERROR_CONDITION_A . 2)
    (:ERROR_CONDITION_B . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyPart>) ostream)
  "Serializes a message object of type '<BodyPart>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyPart>) istream)
  "Deserializes a message object of type '<BodyPart>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyPart>)))
  "Returns string type for a message object of type '<BodyPart>"
  "roboy_middleware_msgs/BodyPart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyPart)))
  "Returns string type for a message object of type 'BodyPart"
  "roboy_middleware_msgs/BodyPart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyPart>)))
  "Returns md5sum for a message object of type '<BodyPart>"
  "7244bd0a66f4dc551fcf27198addf4f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyPart)))
  "Returns md5sum for a message object of type 'BodyPart"
  "7244bd0a66f4dc551fcf27198addf4f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyPart>)))
  "Returns full string definition for message of type '<BodyPart>"
  (cl:format cl:nil "# Sample values~%uint8 ENABLED=0~%uint8 DISABLED=1~%uint8 ERROR_CONDITION_A=2~%uint8 ERROR_CONDITION_B=3~%~%# Body part designator~%string name~%~%# Status byte implemented like Unix return codes:~%# 0: All OK / Ready~%# 1: Function disabled~%# 2-100: Custom error codes indicating different stop conditions or~%# malfunctions.~%# 100-255: Custom readiness states. Some functionality still online / waiting~%# for something.~%#~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyPart)))
  "Returns full string definition for message of type 'BodyPart"
  (cl:format cl:nil "# Sample values~%uint8 ENABLED=0~%uint8 DISABLED=1~%uint8 ERROR_CONDITION_A=2~%uint8 ERROR_CONDITION_B=3~%~%# Body part designator~%string name~%~%# Status byte implemented like Unix return codes:~%# 0: All OK / Ready~%# 1: Function disabled~%# 2-100: Custom error codes indicating different stop conditions or~%# malfunctions.~%# 100-255: Custom readiness states. Some functionality still online / waiting~%# for something.~%#~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyPart>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyPart>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyPart
    (cl:cons ':name (name msg))
    (cl:cons ':status (status msg))
))
