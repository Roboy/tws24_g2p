; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-msg)


;//! \htmlinclude JointStatus.msg.html

(cl:defclass <JointStatus> (roslisp-msg-protocol:ros-message)
  ((absAngles
    :reader absAngles
    :initarg :absAngles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (relAngles
    :reader relAngles
    :initarg :relAngles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass JointStatus (<JointStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-msg:<JointStatus> is deprecated: use roboy_middleware_msgs-msg:JointStatus instead.")))

(cl:ensure-generic-function 'absAngles-val :lambda-list '(m))
(cl:defmethod absAngles-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:absAngles-val is deprecated.  Use roboy_middleware_msgs-msg:absAngles instead.")
  (absAngles m))

(cl:ensure-generic-function 'relAngles-val :lambda-list '(m))
(cl:defmethod relAngles-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:relAngles-val is deprecated.  Use roboy_middleware_msgs-msg:relAngles instead.")
  (relAngles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointStatus>) ostream)
  "Serializes a message object of type '<JointStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'absAngles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'absAngles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'relAngles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'relAngles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointStatus>) istream)
  "Deserializes a message object of type '<JointStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'absAngles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'absAngles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'relAngles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'relAngles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointStatus>)))
  "Returns string type for a message object of type '<JointStatus>"
  "roboy_middleware_msgs/JointStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointStatus)))
  "Returns string type for a message object of type 'JointStatus"
  "roboy_middleware_msgs/JointStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointStatus>)))
  "Returns md5sum for a message object of type '<JointStatus>"
  "4933cd49b716032e0de2cf902e8150fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointStatus)))
  "Returns md5sum for a message object of type 'JointStatus"
  "4933cd49b716032e0de2cf902e8150fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointStatus>)))
  "Returns full string definition for message of type '<JointStatus>"
  (cl:format cl:nil "uint32[] absAngles~%uint32[] relAngles~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointStatus)))
  "Returns full string definition for message of type 'JointStatus"
  (cl:format cl:nil "uint32[] absAngles~%uint32[] relAngles~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'absAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'relAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'JointStatus
    (cl:cons ':absAngles (absAngles msg))
    (cl:cons ':relAngles (relAngles msg))
))
