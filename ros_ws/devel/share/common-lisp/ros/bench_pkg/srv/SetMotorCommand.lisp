; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude SetMotorCommand-request.msg.html

(cl:defclass <SetMotorCommand-request> (roslisp-msg-protocol:ros-message)
  ((myobrick_global_ids
    :reader myobrick_global_ids
    :initarg :myobrick_global_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (pwm_values
    :reader pwm_values
    :initarg :pwm_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetMotorCommand-request (<SetMotorCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<SetMotorCommand-request> is deprecated: use bench_pkg-srv:SetMotorCommand-request instead.")))

(cl:ensure-generic-function 'myobrick_global_ids-val :lambda-list '(m))
(cl:defmethod myobrick_global_ids-val ((m <SetMotorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:myobrick_global_ids-val is deprecated.  Use bench_pkg-srv:myobrick_global_ids instead.")
  (myobrick_global_ids m))

(cl:ensure-generic-function 'pwm_values-val :lambda-list '(m))
(cl:defmethod pwm_values-val ((m <SetMotorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:pwm_values-val is deprecated.  Use bench_pkg-srv:pwm_values instead.")
  (pwm_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorCommand-request>) ostream)
  "Serializes a message object of type '<SetMotorCommand-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'myobrick_global_ids))))
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
   (cl:slot-value msg 'myobrick_global_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pwm_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pwm_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorCommand-request>) istream)
  "Deserializes a message object of type '<SetMotorCommand-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'myobrick_global_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'myobrick_global_ids)))
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
  (cl:setf (cl:slot-value msg 'pwm_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pwm_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorCommand-request>)))
  "Returns string type for a service object of type '<SetMotorCommand-request>"
  "bench_pkg/SetMotorCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorCommand-request)))
  "Returns string type for a service object of type 'SetMotorCommand-request"
  "bench_pkg/SetMotorCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorCommand-request>)))
  "Returns md5sum for a message object of type '<SetMotorCommand-request>"
  "2bc439979375aa92eca8a81319923084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorCommand-request)))
  "Returns md5sum for a message object of type 'SetMotorCommand-request"
  "2bc439979375aa92eca8a81319923084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorCommand-request>)))
  "Returns full string definition for message of type '<SetMotorCommand-request>"
  (cl:format cl:nil "int32[] myobrick_global_ids~%float32[] pwm_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorCommand-request)))
  "Returns full string definition for message of type 'SetMotorCommand-request"
  (cl:format cl:nil "int32[] myobrick_global_ids~%float32[] pwm_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorCommand-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'myobrick_global_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pwm_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorCommand-request
    (cl:cons ':myobrick_global_ids (myobrick_global_ids msg))
    (cl:cons ':pwm_values (pwm_values msg))
))
;//! \htmlinclude SetMotorCommand-response.msg.html

(cl:defclass <SetMotorCommand-response> (roslisp-msg-protocol:ros-message)
  ((joint_angle
    :reader joint_angle
    :initarg :joint_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetMotorCommand-response (<SetMotorCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<SetMotorCommand-response> is deprecated: use bench_pkg-srv:SetMotorCommand-response instead.")))

(cl:ensure-generic-function 'joint_angle-val :lambda-list '(m))
(cl:defmethod joint_angle-val ((m <SetMotorCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:joint_angle-val is deprecated.  Use bench_pkg-srv:joint_angle instead.")
  (joint_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorCommand-response>) ostream)
  "Serializes a message object of type '<SetMotorCommand-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorCommand-response>) istream)
  "Deserializes a message object of type '<SetMotorCommand-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorCommand-response>)))
  "Returns string type for a service object of type '<SetMotorCommand-response>"
  "bench_pkg/SetMotorCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorCommand-response)))
  "Returns string type for a service object of type 'SetMotorCommand-response"
  "bench_pkg/SetMotorCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorCommand-response>)))
  "Returns md5sum for a message object of type '<SetMotorCommand-response>"
  "2bc439979375aa92eca8a81319923084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorCommand-response)))
  "Returns md5sum for a message object of type 'SetMotorCommand-response"
  "2bc439979375aa92eca8a81319923084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorCommand-response>)))
  "Returns full string definition for message of type '<SetMotorCommand-response>"
  (cl:format cl:nil "float32 joint_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorCommand-response)))
  "Returns full string definition for message of type 'SetMotorCommand-response"
  (cl:format cl:nil "float32 joint_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorCommand-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorCommand-response
    (cl:cons ':joint_angle (joint_angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorCommand)))
  'SetMotorCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorCommand)))
  'SetMotorCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorCommand)))
  "Returns string type for a service object of type '<SetMotorCommand>"
  "bench_pkg/SetMotorCommand")