; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude RecordingControl.msg.html

(cl:defclass <RecordingControl> (roslisp-msg-protocol:ros-message)
  ((roboy_id
    :reader roboy_id
    :initarg :roboy_id
    :type cl:integer
    :initform 0)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:integer
    :initform 0)
   (stop_time
    :reader stop_time
    :initarg :stop_time
    :type cl:integer
    :initform 0))
)

(cl:defclass RecordingControl (<RecordingControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordingControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordingControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<RecordingControl> is deprecated: use roboy_simulation_msgs-msg:RecordingControl instead.")))

(cl:ensure-generic-function 'roboy_id-val :lambda-list '(m))
(cl:defmethod roboy_id-val ((m <RecordingControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:roboy_id-val is deprecated.  Use roboy_simulation_msgs-msg:roboy_id instead.")
  (roboy_id m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <RecordingControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:start_time-val is deprecated.  Use roboy_simulation_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'stop_time-val :lambda-list '(m))
(cl:defmethod stop_time-val ((m <RecordingControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:stop_time-val is deprecated.  Use roboy_simulation_msgs-msg:stop_time instead.")
  (stop_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordingControl>) ostream)
  "Serializes a message object of type '<RecordingControl>"
  (cl:let* ((signed (cl:slot-value msg 'roboy_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stop_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stop_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stop_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordingControl>) istream)
  "Deserializes a message object of type '<RecordingControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboy_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stop_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stop_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stop_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordingControl>)))
  "Returns string type for a message object of type '<RecordingControl>"
  "roboy_simulation_msgs/RecordingControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordingControl)))
  "Returns string type for a message object of type 'RecordingControl"
  "roboy_simulation_msgs/RecordingControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordingControl>)))
  "Returns md5sum for a message object of type '<RecordingControl>"
  "38d3d1699f1a558cbba880a0ee7ca55e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordingControl)))
  "Returns md5sum for a message object of type 'RecordingControl"
  "38d3d1699f1a558cbba880a0ee7ca55e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordingControl>)))
  "Returns full string definition for message of type '<RecordingControl>"
  (cl:format cl:nil "int32 roboy_id~%uint32 start_time~%uint32 stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordingControl)))
  "Returns full string definition for message of type 'RecordingControl"
  (cl:format cl:nil "int32 roboy_id~%uint32 start_time~%uint32 stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordingControl>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordingControl>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordingControl
    (cl:cons ':roboy_id (roboy_id msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':stop_time (stop_time msg))
))
