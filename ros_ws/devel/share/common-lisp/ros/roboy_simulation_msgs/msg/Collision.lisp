; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude Collision.msg.html

(cl:defclass <Collision> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (contact_points
    :reader contact_points
    :initarg :contact_points
    :type (cl:vector roboy_simulation_msgs-msg:ContactPoint)
   :initform (cl:make-array 0 :element-type 'roboy_simulation_msgs-msg:ContactPoint :initial-element (cl:make-instance 'roboy_simulation_msgs-msg:ContactPoint))))
)

(cl:defclass Collision (<Collision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Collision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Collision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<Collision> is deprecated: use roboy_simulation_msgs-msg:Collision instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:header-val is deprecated.  Use roboy_simulation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'contact_points-val :lambda-list '(m))
(cl:defmethod contact_points-val ((m <Collision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:contact_points-val is deprecated.  Use roboy_simulation_msgs-msg:contact_points instead.")
  (contact_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Collision>) ostream)
  "Serializes a message object of type '<Collision>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contact_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contact_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Collision>) istream)
  "Deserializes a message object of type '<Collision>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contact_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contact_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_simulation_msgs-msg:ContactPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Collision>)))
  "Returns string type for a message object of type '<Collision>"
  "roboy_simulation_msgs/Collision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Collision)))
  "Returns string type for a message object of type 'Collision"
  "roboy_simulation_msgs/Collision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Collision>)))
  "Returns md5sum for a message object of type '<Collision>"
  "2a6f8784cdbd2284b14765b033c69396")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Collision)))
  "Returns md5sum for a message object of type 'Collision"
  "2a6f8784cdbd2284b14765b033c69396")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Collision>)))
  "Returns full string definition for message of type '<Collision>"
  (cl:format cl:nil "Header header~%# contact points of the body with any other object~%ContactPoint[] contact_points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: roboy_simulation_msgs/ContactPoint~%#id of roboy link in which a collision happened~%int64 linkid~%#position of contact point on roboy in link frame~%geometry_msgs/Vector3 position~%#contact normal on external body, pointing towards roboy~%geometry_msgs/Vector3 contactnormal~%#contact distance, positive for separation, negative for penetration~%float64 contactdistance~%#normal force applied during the last 'stepSimulation'~%float64 normalforce~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Collision)))
  "Returns full string definition for message of type 'Collision"
  (cl:format cl:nil "Header header~%# contact points of the body with any other object~%ContactPoint[] contact_points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: roboy_simulation_msgs/ContactPoint~%#id of roboy link in which a collision happened~%int64 linkid~%#position of contact point on roboy in link frame~%geometry_msgs/Vector3 position~%#contact normal on external body, pointing towards roboy~%geometry_msgs/Vector3 contactnormal~%#contact distance, positive for separation, negative for penetration~%float64 contactdistance~%#normal force applied during the last 'stepSimulation'~%float64 normalforce~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Collision>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contact_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Collision>))
  "Converts a ROS message object to a list"
  (cl:list 'Collision
    (cl:cons ':header (header msg))
    (cl:cons ':contact_points (contact_points msg))
))
