; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude VisualizationControl.msg.html

(cl:defclass <VisualizationControl> (roslisp-msg-protocol:ros-message)
  ((roboy_id
    :reader roboy_id
    :initarg :roboy_id
    :type cl:integer
    :initform 0)
   (control
    :reader control
    :initarg :control
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VisualizationControl (<VisualizationControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualizationControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualizationControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<VisualizationControl> is deprecated: use roboy_simulation_msgs-msg:VisualizationControl instead.")))

(cl:ensure-generic-function 'roboy_id-val :lambda-list '(m))
(cl:defmethod roboy_id-val ((m <VisualizationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:roboy_id-val is deprecated.  Use roboy_simulation_msgs-msg:roboy_id instead.")
  (roboy_id m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <VisualizationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:control-val is deprecated.  Use roboy_simulation_msgs-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VisualizationControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:value-val is deprecated.  Use roboy_simulation_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualizationControl>) ostream)
  "Serializes a message object of type '<VisualizationControl>"
  (cl:let* ((signed (cl:slot-value msg 'roboy_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'control)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualizationControl>) istream)
  "Deserializes a message object of type '<VisualizationControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboy_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualizationControl>)))
  "Returns string type for a message object of type '<VisualizationControl>"
  "roboy_simulation_msgs/VisualizationControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualizationControl)))
  "Returns string type for a message object of type 'VisualizationControl"
  "roboy_simulation_msgs/VisualizationControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualizationControl>)))
  "Returns md5sum for a message object of type '<VisualizationControl>"
  "8f08b9af8c2344f7cdcbec5fccf19c8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualizationControl)))
  "Returns md5sum for a message object of type 'VisualizationControl"
  "8f08b9af8c2344f7cdcbec5fccf19c8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualizationControl>)))
  "Returns full string definition for message of type '<VisualizationControl>"
  (cl:format cl:nil "int32 roboy_id~%int32 control~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualizationControl)))
  "Returns full string definition for message of type 'VisualizationControl"
  (cl:format cl:nil "int32 roboy_id~%int32 control~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualizationControl>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualizationControl>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualizationControl
    (cl:cons ':roboy_id (roboy_id msg))
    (cl:cons ':control (control msg))
    (cl:cons ':value (value msg))
))
