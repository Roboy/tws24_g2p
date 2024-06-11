; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude SetInt16-request.msg.html

(cl:defclass <SetInt16-request> (roslisp-msg-protocol:ros-message)
  ((setpoint
    :reader setpoint
    :initarg :setpoint
    :type cl:fixnum
    :initform 0)
   (motors
    :reader motors
    :initarg :motors
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SetInt16-request (<SetInt16-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SetInt16-request> is deprecated: use roboy_middleware_msgs-srv:SetInt16-request instead.")))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <SetInt16-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:setpoint-val is deprecated.  Use roboy_middleware_msgs-srv:setpoint instead.")
  (setpoint m))

(cl:ensure-generic-function 'motors-val :lambda-list '(m))
(cl:defmethod motors-val ((m <SetInt16-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motors-val is deprecated.  Use roboy_middleware_msgs-srv:motors instead.")
  (motors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-request>) ostream)
  "Serializes a message object of type '<SetInt16-request>"
  (cl:let* ((signed (cl:slot-value msg 'setpoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'motors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-request>) istream)
  "Deserializes a message object of type '<SetInt16-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setpoint) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-request>)))
  "Returns string type for a service object of type '<SetInt16-request>"
  "roboy_middleware_msgs/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-request)))
  "Returns string type for a service object of type 'SetInt16-request"
  "roboy_middleware_msgs/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-request>)))
  "Returns md5sum for a message object of type '<SetInt16-request>"
  "a4f5a371b10fcd86f80b17a170c1ba59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-request)))
  "Returns md5sum for a message object of type 'SetInt16-request"
  "a4f5a371b10fcd86f80b17a170c1ba59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-request>)))
  "Returns full string definition for message of type '<SetInt16-request>"
  (cl:format cl:nil "int16 setpoint~%int16[] motors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-request)))
  "Returns full string definition for message of type 'SetInt16-request"
  (cl:format cl:nil "int16 setpoint~%int16[] motors~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-request>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-request
    (cl:cons ':setpoint (setpoint msg))
    (cl:cons ':motors (motors msg))
))
;//! \htmlinclude SetInt16-response.msg.html

(cl:defclass <SetInt16-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetInt16-response (<SetInt16-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SetInt16-response> is deprecated: use roboy_middleware_msgs-srv:SetInt16-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-response>) ostream)
  "Serializes a message object of type '<SetInt16-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-response>) istream)
  "Deserializes a message object of type '<SetInt16-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-response>)))
  "Returns string type for a service object of type '<SetInt16-response>"
  "roboy_middleware_msgs/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-response)))
  "Returns string type for a service object of type 'SetInt16-response"
  "roboy_middleware_msgs/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-response>)))
  "Returns md5sum for a message object of type '<SetInt16-response>"
  "a4f5a371b10fcd86f80b17a170c1ba59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-response)))
  "Returns md5sum for a message object of type 'SetInt16-response"
  "a4f5a371b10fcd86f80b17a170c1ba59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-response>)))
  "Returns full string definition for message of type '<SetInt16-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-response)))
  "Returns full string definition for message of type 'SetInt16-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16)))
  "Returns string type for a service object of type '<SetInt16>"
  "roboy_middleware_msgs/SetInt16")