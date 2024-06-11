; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-srv)


;//! \htmlinclude GymReset-request.msg.html

(cl:defclass <GymReset-request> (roslisp-msg-protocol:ros-message)
  ((step_size
    :reader step_size
    :initarg :step_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass GymReset-request (<GymReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymReset-request> is deprecated: use roboy_simulation_msgs-srv:GymReset-request instead.")))

(cl:ensure-generic-function 'step_size-val :lambda-list '(m))
(cl:defmethod step_size-val ((m <GymReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:step_size-val is deprecated.  Use roboy_simulation_msgs-srv:step_size instead.")
  (step_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymReset-request>) ostream)
  "Serializes a message object of type '<GymReset-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymReset-request>) istream)
  "Deserializes a message object of type '<GymReset-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_size) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymReset-request>)))
  "Returns string type for a service object of type '<GymReset-request>"
  "roboy_simulation_msgs/GymResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymReset-request)))
  "Returns string type for a service object of type 'GymReset-request"
  "roboy_simulation_msgs/GymResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymReset-request>)))
  "Returns md5sum for a message object of type '<GymReset-request>"
  "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymReset-request)))
  "Returns md5sum for a message object of type 'GymReset-request"
  "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymReset-request>)))
  "Returns full string definition for message of type '<GymReset-request>"
  (cl:format cl:nil "float64 step_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymReset-request)))
  "Returns full string definition for message of type 'GymReset-request"
  (cl:format cl:nil "float64 step_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymReset-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GymReset-request
    (cl:cons ':step_size (step_size msg))
))
;//! \htmlinclude GymReset-response.msg.html

(cl:defclass <GymReset-response> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (qdot
    :reader qdot
    :initarg :qdot
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GymReset-response (<GymReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymReset-response> is deprecated: use roboy_simulation_msgs-srv:GymReset-response instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GymReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:q-val is deprecated.  Use roboy_simulation_msgs-srv:q instead.")
  (q m))

(cl:ensure-generic-function 'qdot-val :lambda-list '(m))
(cl:defmethod qdot-val ((m <GymReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:qdot-val is deprecated.  Use roboy_simulation_msgs-srv:qdot instead.")
  (qdot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymReset-response>) ostream)
  "Serializes a message object of type '<GymReset-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'q))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'q))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'qdot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'qdot))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymReset-response>) istream)
  "Deserializes a message object of type '<GymReset-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'q) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'q)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'qdot) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'qdot)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymReset-response>)))
  "Returns string type for a service object of type '<GymReset-response>"
  "roboy_simulation_msgs/GymResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymReset-response)))
  "Returns string type for a service object of type 'GymReset-response"
  "roboy_simulation_msgs/GymResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymReset-response>)))
  "Returns md5sum for a message object of type '<GymReset-response>"
  "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymReset-response)))
  "Returns md5sum for a message object of type 'GymReset-response"
  "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymReset-response>)))
  "Returns full string definition for message of type '<GymReset-response>"
  (cl:format cl:nil "float64[] q~%float64[] qdot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymReset-response)))
  "Returns full string definition for message of type 'GymReset-response"
  (cl:format cl:nil "float64[] q~%float64[] qdot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymReset-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'qdot) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GymReset-response
    (cl:cons ':q (q msg))
    (cl:cons ':qdot (qdot msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GymReset)))
  'GymReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GymReset)))
  'GymReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymReset)))
  "Returns string type for a service object of type '<GymReset>"
  "roboy_simulation_msgs/GymReset")