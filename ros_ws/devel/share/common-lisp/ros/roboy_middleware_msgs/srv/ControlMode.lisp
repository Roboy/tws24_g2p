; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude ControlMode-request.msg.html

(cl:defclass <ControlMode-request> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (set_points
    :reader set_points
    :initarg :set_points
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (global_id
    :reader global_id
    :initarg :global_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ControlMode-request (<ControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<ControlMode-request> is deprecated: use roboy_middleware_msgs-srv:ControlMode-request instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <ControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:control_mode-val is deprecated.  Use roboy_middleware_msgs-srv:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'set_points-val :lambda-list '(m))
(cl:defmethod set_points-val ((m <ControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:set_points-val is deprecated.  Use roboy_middleware_msgs-srv:set_points instead.")
  (set_points m))

(cl:ensure-generic-function 'global_id-val :lambda-list '(m))
(cl:defmethod global_id-val ((m <ControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:global_id-val is deprecated.  Use roboy_middleware_msgs-srv:global_id instead.")
  (global_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode-request>) ostream)
  "Serializes a message object of type '<ControlMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'set_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'set_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'global_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'global_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode-request>) istream)
  "Deserializes a message object of type '<ControlMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
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
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'global_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'global_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode-request>)))
  "Returns string type for a service object of type '<ControlMode-request>"
  "roboy_middleware_msgs/ControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode-request)))
  "Returns string type for a service object of type 'ControlMode-request"
  "roboy_middleware_msgs/ControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode-request>)))
  "Returns md5sum for a message object of type '<ControlMode-request>"
  "d6e1c54934446851505150d7d89f00c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode-request)))
  "Returns md5sum for a message object of type 'ControlMode-request"
  "d6e1c54934446851505150d7d89f00c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode-request>)))
  "Returns full string definition for message of type '<ControlMode-request>"
  (cl:format cl:nil "uint8 control_mode # 0: position, 1: velocity, 2: displacement~%float32[] set_points~%# if left empty, all motors will be changed to the requested control mode~%uint8[] global_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode-request)))
  "Returns full string definition for message of type 'ControlMode-request"
  (cl:format cl:nil "uint8 control_mode # 0: position, 1: velocity, 2: displacement~%float32[] set_points~%# if left empty, all motors will be changed to the requested control mode~%uint8[] global_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'set_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'global_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode-request
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':set_points (set_points msg))
    (cl:cons ':global_id (global_id msg))
))
;//! \htmlinclude ControlMode-response.msg.html

(cl:defclass <ControlMode-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ControlMode-response (<ControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<ControlMode-response> is deprecated: use roboy_middleware_msgs-srv:ControlMode-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode-response>) ostream)
  "Serializes a message object of type '<ControlMode-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode-response>) istream)
  "Deserializes a message object of type '<ControlMode-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode-response>)))
  "Returns string type for a service object of type '<ControlMode-response>"
  "roboy_middleware_msgs/ControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode-response)))
  "Returns string type for a service object of type 'ControlMode-response"
  "roboy_middleware_msgs/ControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode-response>)))
  "Returns md5sum for a message object of type '<ControlMode-response>"
  "d6e1c54934446851505150d7d89f00c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode-response)))
  "Returns md5sum for a message object of type 'ControlMode-response"
  "d6e1c54934446851505150d7d89f00c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode-response>)))
  "Returns full string definition for message of type '<ControlMode-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode-response)))
  "Returns full string definition for message of type 'ControlMode-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ControlMode)))
  'ControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ControlMode)))
  'ControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode)))
  "Returns string type for a service object of type '<ControlMode>"
  "roboy_middleware_msgs/ControlMode")