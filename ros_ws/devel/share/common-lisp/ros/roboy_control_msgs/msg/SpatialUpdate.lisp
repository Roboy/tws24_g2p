; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude SpatialUpdate.msg.html

(cl:defclass <SpatialUpdate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SpatialUpdate (<SpatialUpdate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpatialUpdate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpatialUpdate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<SpatialUpdate> is deprecated: use roboy_control_msgs-msg:SpatialUpdate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpatialUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:header-val is deprecated.  Use roboy_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SpatialUpdate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:data-val is deprecated.  Use roboy_control_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpatialUpdate>) ostream)
  "Serializes a message object of type '<SpatialUpdate>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'header))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'header))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpatialUpdate>) istream)
  "Deserializes a message object of type '<SpatialUpdate>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'header) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'header)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpatialUpdate>)))
  "Returns string type for a message object of type '<SpatialUpdate>"
  "roboy_control_msgs/SpatialUpdate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpatialUpdate)))
  "Returns string type for a message object of type 'SpatialUpdate"
  "roboy_control_msgs/SpatialUpdate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpatialUpdate>)))
  "Returns md5sum for a message object of type '<SpatialUpdate>"
  "1c847f0c793a4a3afd39df9fc36b8b5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpatialUpdate)))
  "Returns md5sum for a message object of type 'SpatialUpdate"
  "1c847f0c793a4a3afd39df9fc36b8b5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpatialUpdate>)))
  "Returns full string definition for message of type '<SpatialUpdate>"
  (cl:format cl:nil "int32[] header~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpatialUpdate)))
  "Returns full string definition for message of type 'SpatialUpdate"
  (cl:format cl:nil "int32[] header~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpatialUpdate>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'header) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpatialUpdate>))
  "Converts a ROS message object to a list"
  (cl:list 'SpatialUpdate
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
