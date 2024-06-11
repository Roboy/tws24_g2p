; Auto-generated. Do not edit!


(cl:in-package bench_pkg-msg)


;//! \htmlinclude JointAngleData.msg.html

(cl:defclass <JointAngleData> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (joint_angle
    :reader joint_angle
    :initarg :joint_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointAngleData (<JointAngleData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAngleData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAngleData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-msg:<JointAngleData> is deprecated: use bench_pkg-msg:JointAngleData instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <JointAngleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-msg:joint_name-val is deprecated.  Use bench_pkg-msg:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'joint_angle-val :lambda-list '(m))
(cl:defmethod joint_angle-val ((m <JointAngleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-msg:joint_angle-val is deprecated.  Use bench_pkg-msg:joint_angle instead.")
  (joint_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAngleData>) ostream)
  "Serializes a message object of type '<JointAngleData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAngleData>) istream)
  "Deserializes a message object of type '<JointAngleData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAngleData>)))
  "Returns string type for a message object of type '<JointAngleData>"
  "bench_pkg/JointAngleData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAngleData)))
  "Returns string type for a message object of type 'JointAngleData"
  "bench_pkg/JointAngleData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAngleData>)))
  "Returns md5sum for a message object of type '<JointAngleData>"
  "7c148065b218648de52ffe266f4fc08a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAngleData)))
  "Returns md5sum for a message object of type 'JointAngleData"
  "7c148065b218648de52ffe266f4fc08a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAngleData>)))
  "Returns full string definition for message of type '<JointAngleData>"
  (cl:format cl:nil "string joint_name~%float32 joint_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAngleData)))
  "Returns full string definition for message of type 'JointAngleData"
  (cl:format cl:nil "string joint_name~%float32 joint_angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAngleData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAngleData>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAngleData
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':joint_angle (joint_angle msg))
))
