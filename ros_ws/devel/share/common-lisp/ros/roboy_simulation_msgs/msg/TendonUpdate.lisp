; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude TendonUpdate.msg.html

(cl:defclass <TendonUpdate> (roslisp-msg-protocol:ros-message)
  ((tendon_id
    :reader tendon_id
    :initarg :tendon_id
    :type cl:integer
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass TendonUpdate (<TendonUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TendonUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TendonUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<TendonUpdate> is deprecated: use roboy_simulation_msgs-msg:TendonUpdate instead.")))

(cl:ensure-generic-function 'tendon_id-val :lambda-list '(m))
(cl:defmethod tendon_id-val ((m <TendonUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:tendon_id-val is deprecated.  Use roboy_simulation_msgs-msg:tendon_id instead.")
  (tendon_id m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <TendonUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:force-val is deprecated.  Use roboy_simulation_msgs-msg:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TendonUpdate>) ostream)
  "Serializes a message object of type '<TendonUpdate>"
  (cl:let* ((signed (cl:slot-value msg 'tendon_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TendonUpdate>) istream)
  "Deserializes a message object of type '<TendonUpdate>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tendon_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TendonUpdate>)))
  "Returns string type for a message object of type '<TendonUpdate>"
  "roboy_simulation_msgs/TendonUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TendonUpdate)))
  "Returns string type for a message object of type 'TendonUpdate"
  "roboy_simulation_msgs/TendonUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TendonUpdate>)))
  "Returns md5sum for a message object of type '<TendonUpdate>"
  "f7cf9744aa53d76130b584ca613dcbc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TendonUpdate)))
  "Returns md5sum for a message object of type 'TendonUpdate"
  "f7cf9744aa53d76130b584ca613dcbc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TendonUpdate>)))
  "Returns full string definition for message of type '<TendonUpdate>"
  (cl:format cl:nil "int32 tendon_id~%#currently applied forcce~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TendonUpdate)))
  "Returns full string definition for message of type 'TendonUpdate"
  (cl:format cl:nil "int32 tendon_id~%#currently applied forcce~%float32 force~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TendonUpdate>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TendonUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'TendonUpdate
    (cl:cons ':tendon_id (tendon_id msg))
    (cl:cons ':force (force msg))
))
