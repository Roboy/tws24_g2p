; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude ForceTorque.msg.html

(cl:defclass <ForceTorque> (roslisp-msg-protocol:ros-message)
  ((roboy_id
    :reader roboy_id
    :initarg :roboy_id
    :type cl:integer
    :initform 0)
   (leg
    :reader leg
    :initarg :leg
    :type cl:integer
    :initform 0)
   (joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (torque
    :reader torque
    :initarg :torque
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ForceTorque (<ForceTorque>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceTorque>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceTorque)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<ForceTorque> is deprecated: use roboy_simulation_msgs-msg:ForceTorque instead.")))

(cl:ensure-generic-function 'roboy_id-val :lambda-list '(m))
(cl:defmethod roboy_id-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:roboy_id-val is deprecated.  Use roboy_simulation_msgs-msg:roboy_id instead.")
  (roboy_id m))

(cl:ensure-generic-function 'leg-val :lambda-list '(m))
(cl:defmethod leg-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:leg-val is deprecated.  Use roboy_simulation_msgs-msg:leg instead.")
  (leg m))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:joint-val is deprecated.  Use roboy_simulation_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:force-val is deprecated.  Use roboy_simulation_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <ForceTorque>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:torque-val is deprecated.  Use roboy_simulation_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceTorque>) ostream)
  "Serializes a message object of type '<ForceTorque>"
  (cl:let* ((signed (cl:slot-value msg 'roboy_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leg)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceTorque>) istream)
  "Deserializes a message object of type '<ForceTorque>"
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
      (cl:setf (cl:slot-value msg 'leg) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceTorque>)))
  "Returns string type for a message object of type '<ForceTorque>"
  "roboy_simulation_msgs/ForceTorque")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceTorque)))
  "Returns string type for a message object of type 'ForceTorque"
  "roboy_simulation_msgs/ForceTorque")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceTorque>)))
  "Returns md5sum for a message object of type '<ForceTorque>"
  "b319cd6b955ae951e9c17fbe4b6dde5b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceTorque)))
  "Returns md5sum for a message object of type 'ForceTorque"
  "b319cd6b955ae951e9c17fbe4b6dde5b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceTorque>)))
  "Returns full string definition for message of type '<ForceTorque>"
  (cl:format cl:nil "int32 roboy_id~%int32 leg~%string joint~%geometry_msgs/Point force~%geometry_msgs/Point torque~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceTorque)))
  "Returns full string definition for message of type 'ForceTorque"
  (cl:format cl:nil "int32 roboy_id~%int32 leg~%string joint~%geometry_msgs/Point force~%geometry_msgs/Point torque~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceTorque>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'joint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceTorque>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceTorque
    (cl:cons ':roboy_id (roboy_id msg))
    (cl:cons ':leg (leg msg))
    (cl:cons ':joint (joint msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
