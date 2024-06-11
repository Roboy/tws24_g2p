; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude ContactPoint.msg.html

(cl:defclass <ContactPoint> (roslisp-msg-protocol:ros-message)
  ((linkid
    :reader linkid
    :initarg :linkid
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (contactnormal
    :reader contactnormal
    :initarg :contactnormal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (contactdistance
    :reader contactdistance
    :initarg :contactdistance
    :type cl:float
    :initform 0.0)
   (normalforce
    :reader normalforce
    :initarg :normalforce
    :type cl:float
    :initform 0.0))
)

(cl:defclass ContactPoint (<ContactPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<ContactPoint> is deprecated: use roboy_simulation_msgs-msg:ContactPoint instead.")))

(cl:ensure-generic-function 'linkid-val :lambda-list '(m))
(cl:defmethod linkid-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:linkid-val is deprecated.  Use roboy_simulation_msgs-msg:linkid instead.")
  (linkid m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:position-val is deprecated.  Use roboy_simulation_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'contactnormal-val :lambda-list '(m))
(cl:defmethod contactnormal-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:contactnormal-val is deprecated.  Use roboy_simulation_msgs-msg:contactnormal instead.")
  (contactnormal m))

(cl:ensure-generic-function 'contactdistance-val :lambda-list '(m))
(cl:defmethod contactdistance-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:contactdistance-val is deprecated.  Use roboy_simulation_msgs-msg:contactdistance instead.")
  (contactdistance m))

(cl:ensure-generic-function 'normalforce-val :lambda-list '(m))
(cl:defmethod normalforce-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:normalforce-val is deprecated.  Use roboy_simulation_msgs-msg:normalforce instead.")
  (normalforce m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactPoint>) ostream)
  "Serializes a message object of type '<ContactPoint>"
  (cl:let* ((signed (cl:slot-value msg 'linkid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'contactnormal) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contactdistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'normalforce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactPoint>) istream)
  "Deserializes a message object of type '<ContactPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linkid) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'contactnormal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contactdistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'normalforce) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactPoint>)))
  "Returns string type for a message object of type '<ContactPoint>"
  "roboy_simulation_msgs/ContactPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactPoint)))
  "Returns string type for a message object of type 'ContactPoint"
  "roboy_simulation_msgs/ContactPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactPoint>)))
  "Returns md5sum for a message object of type '<ContactPoint>"
  "32832356e1139e4e5fd083337d208b0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactPoint)))
  "Returns md5sum for a message object of type 'ContactPoint"
  "32832356e1139e4e5fd083337d208b0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactPoint>)))
  "Returns full string definition for message of type '<ContactPoint>"
  (cl:format cl:nil "#id of roboy link in which a collision happened~%int64 linkid~%#position of contact point on roboy in link frame~%geometry_msgs/Vector3 position~%#contact normal on external body, pointing towards roboy~%geometry_msgs/Vector3 contactnormal~%#contact distance, positive for separation, negative for penetration~%float64 contactdistance~%#normal force applied during the last 'stepSimulation'~%float64 normalforce~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactPoint)))
  "Returns full string definition for message of type 'ContactPoint"
  (cl:format cl:nil "#id of roboy link in which a collision happened~%int64 linkid~%#position of contact point on roboy in link frame~%geometry_msgs/Vector3 position~%#contact normal on external body, pointing towards roboy~%geometry_msgs/Vector3 contactnormal~%#contact distance, positive for separation, negative for penetration~%float64 contactdistance~%#normal force applied during the last 'stepSimulation'~%float64 normalforce~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactPoint>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'contactnormal))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactPoint
    (cl:cons ':linkid (linkid msg))
    (cl:cons ':position (position msg))
    (cl:cons ':contactnormal (contactnormal msg))
    (cl:cons ':contactdistance (contactdistance msg))
    (cl:cons ':normalforce (normalforce msg))
))
