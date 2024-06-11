; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-srv)


;//! \htmlinclude GymStep-request.msg.html

(cl:defclass <GymStep-request> (roslisp-msg-protocol:ros-message)
  ((controller
    :reader controller
    :initarg :controller
    :type cl:fixnum
    :initform 0)
   (set_points
    :reader set_points
    :initarg :set_points
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (step_size
    :reader step_size
    :initarg :step_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass GymStep-request (<GymStep-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymStep-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymStep-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymStep-request> is deprecated: use roboy_simulation_msgs-srv:GymStep-request instead.")))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <GymStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:controller-val is deprecated.  Use roboy_simulation_msgs-srv:controller instead.")
  (controller m))

(cl:ensure-generic-function 'set_points-val :lambda-list '(m))
(cl:defmethod set_points-val ((m <GymStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:set_points-val is deprecated.  Use roboy_simulation_msgs-srv:set_points instead.")
  (set_points m))

(cl:ensure-generic-function 'step_size-val :lambda-list '(m))
(cl:defmethod step_size-val ((m <GymStep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:step_size-val is deprecated.  Use roboy_simulation_msgs-srv:step_size instead.")
  (step_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymStep-request>) ostream)
  "Serializes a message object of type '<GymStep-request>"
  (cl:let* ((signed (cl:slot-value msg 'controller)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'set_points))))
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
   (cl:slot-value msg 'set_points))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymStep-request>) istream)
  "Deserializes a message object of type '<GymStep-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'set_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'set_points)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymStep-request>)))
  "Returns string type for a service object of type '<GymStep-request>"
  "roboy_simulation_msgs/GymStepRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymStep-request)))
  "Returns string type for a service object of type 'GymStep-request"
  "roboy_simulation_msgs/GymStepRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymStep-request>)))
  "Returns md5sum for a message object of type '<GymStep-request>"
  "da078c4985541d376efaaa93946e1b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymStep-request)))
  "Returns md5sum for a message object of type 'GymStep-request"
  "da078c4985541d376efaaa93946e1b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymStep-request>)))
  "Returns full string definition for message of type '<GymStep-request>"
  (cl:format cl:nil "int8 controller #position, vel or displacement~%float64[] set_points~%float64 step_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymStep-request)))
  "Returns full string definition for message of type 'GymStep-request"
  (cl:format cl:nil "int8 controller #position, vel or displacement~%float64[] set_points~%float64 step_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymStep-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'set_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymStep-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GymStep-request
    (cl:cons ':controller (controller msg))
    (cl:cons ':set_points (set_points msg))
    (cl:cons ':step_size (step_size msg))
))
;//! \htmlinclude GymStep-response.msg.html

(cl:defclass <GymStep-response> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (qdot
    :reader qdot
    :initarg :qdot
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (feasible
    :reader feasible
    :initarg :feasible
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GymStep-response (<GymStep-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymStep-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymStep-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymStep-response> is deprecated: use roboy_simulation_msgs-srv:GymStep-response instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GymStep-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:q-val is deprecated.  Use roboy_simulation_msgs-srv:q instead.")
  (q m))

(cl:ensure-generic-function 'qdot-val :lambda-list '(m))
(cl:defmethod qdot-val ((m <GymStep-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:qdot-val is deprecated.  Use roboy_simulation_msgs-srv:qdot instead.")
  (qdot m))

(cl:ensure-generic-function 'feasible-val :lambda-list '(m))
(cl:defmethod feasible-val ((m <GymStep-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:feasible-val is deprecated.  Use roboy_simulation_msgs-srv:feasible instead.")
  (feasible m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymStep-response>) ostream)
  "Serializes a message object of type '<GymStep-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'feasible) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymStep-response>) istream)
  "Deserializes a message object of type '<GymStep-response>"
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
    (cl:setf (cl:slot-value msg 'feasible) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymStep-response>)))
  "Returns string type for a service object of type '<GymStep-response>"
  "roboy_simulation_msgs/GymStepResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymStep-response)))
  "Returns string type for a service object of type 'GymStep-response"
  "roboy_simulation_msgs/GymStepResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymStep-response>)))
  "Returns md5sum for a message object of type '<GymStep-response>"
  "da078c4985541d376efaaa93946e1b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymStep-response)))
  "Returns md5sum for a message object of type 'GymStep-response"
  "da078c4985541d376efaaa93946e1b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymStep-response>)))
  "Returns full string definition for message of type '<GymStep-response>"
  (cl:format cl:nil "float64[] q~%float64[] qdot~%bool feasible~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymStep-response)))
  "Returns full string definition for message of type 'GymStep-response"
  (cl:format cl:nil "float64[] q~%float64[] qdot~%bool feasible~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymStep-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'qdot) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymStep-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GymStep-response
    (cl:cons ':q (q msg))
    (cl:cons ':qdot (qdot msg))
    (cl:cons ':feasible (feasible msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GymStep)))
  'GymStep-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GymStep)))
  'GymStep-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymStep)))
  "Returns string type for a service object of type '<GymStep>"
  "roboy_simulation_msgs/GymStep")