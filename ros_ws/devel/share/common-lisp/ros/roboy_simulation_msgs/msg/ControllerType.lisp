; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude ControllerType.msg.html

(cl:defclass <ControllerType> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControllerType (<ControllerType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<ControllerType> is deprecated: use roboy_simulation_msgs-msg:ControllerType instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <ControllerType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:joint_name-val is deprecated.  Use roboy_simulation_msgs-msg:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ControllerType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:type-val is deprecated.  Use roboy_simulation_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerType>) ostream)
  "Serializes a message object of type '<ControllerType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerType>) istream)
  "Deserializes a message object of type '<ControllerType>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerType>)))
  "Returns string type for a message object of type '<ControllerType>"
  "roboy_simulation_msgs/ControllerType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerType)))
  "Returns string type for a message object of type 'ControllerType"
  "roboy_simulation_msgs/ControllerType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerType>)))
  "Returns md5sum for a message object of type '<ControllerType>"
  "75ea1207d0622977ffe04469bf40935f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerType)))
  "Returns md5sum for a message object of type 'ControllerType"
  "75ea1207d0622977ffe04469bf40935f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerType>)))
  "Returns full string definition for message of type '<ControllerType>"
  (cl:format cl:nil "string joint_name~%int8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerType)))
  "Returns full string definition for message of type 'ControllerType"
  (cl:format cl:nil "string joint_name~%int8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerType>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerType
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':type (type msg))
))
