; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-msg)


;//! \htmlinclude DanceCommand.msg.html

(cl:defclass <DanceCommand> (roslisp-msg-protocol:ros-message)
  ((sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:integer
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass DanceCommand (<DanceCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DanceCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DanceCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-msg:<DanceCommand> is deprecated: use roboy_middleware_msgs-msg:DanceCommand instead.")))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <DanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:sensor_id-val is deprecated.  Use roboy_middleware_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <DanceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:pos-val is deprecated.  Use roboy_middleware_msgs-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DanceCommand>) ostream)
  "Serializes a message object of type '<DanceCommand>"
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DanceCommand>) istream)
  "Deserializes a message object of type '<DanceCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DanceCommand>)))
  "Returns string type for a message object of type '<DanceCommand>"
  "roboy_middleware_msgs/DanceCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DanceCommand)))
  "Returns string type for a message object of type 'DanceCommand"
  "roboy_middleware_msgs/DanceCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DanceCommand>)))
  "Returns md5sum for a message object of type '<DanceCommand>"
  "72a157af84f4f4cbc154d8d824d39082")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DanceCommand)))
  "Returns md5sum for a message object of type 'DanceCommand"
  "72a157af84f4f4cbc154d8d824d39082")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DanceCommand>)))
  "Returns full string definition for message of type '<DanceCommand>"
  (cl:format cl:nil "int32 sensor_id~%geometry_msgs/Vector3 pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DanceCommand)))
  "Returns full string definition for message of type 'DanceCommand"
  (cl:format cl:nil "int32 sensor_id~%geometry_msgs/Vector3 pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DanceCommand>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DanceCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DanceCommand
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':pos (pos msg))
))
