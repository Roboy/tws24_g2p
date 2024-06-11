; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude SetPWM-request.msg.html

(cl:defclass <SetPWM-request> (roslisp-msg-protocol:ros-message)
  ((flex_myobrick_pwm
    :reader flex_myobrick_pwm
    :initarg :flex_myobrick_pwm
    :type cl:float
    :initform 0.0)
   (extend_myobrick_pwm
    :reader extend_myobrick_pwm
    :initarg :extend_myobrick_pwm
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetPWM-request (<SetPWM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPWM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPWM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<SetPWM-request> is deprecated: use bench_pkg-srv:SetPWM-request instead.")))

(cl:ensure-generic-function 'flex_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod flex_myobrick_pwm-val ((m <SetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:flex_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:flex_myobrick_pwm instead.")
  (flex_myobrick_pwm m))

(cl:ensure-generic-function 'extend_myobrick_pwm-val :lambda-list '(m))
(cl:defmethod extend_myobrick_pwm-val ((m <SetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:extend_myobrick_pwm-val is deprecated.  Use bench_pkg-srv:extend_myobrick_pwm instead.")
  (extend_myobrick_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPWM-request>) ostream)
  "Serializes a message object of type '<SetPWM-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flex_myobrick_pwm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'extend_myobrick_pwm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPWM-request>) istream)
  "Deserializes a message object of type '<SetPWM-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flex_myobrick_pwm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'extend_myobrick_pwm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPWM-request>)))
  "Returns string type for a service object of type '<SetPWM-request>"
  "bench_pkg/SetPWMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPWM-request)))
  "Returns string type for a service object of type 'SetPWM-request"
  "bench_pkg/SetPWMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPWM-request>)))
  "Returns md5sum for a message object of type '<SetPWM-request>"
  "20d18a942afc8e121fb01cf2222fde88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPWM-request)))
  "Returns md5sum for a message object of type 'SetPWM-request"
  "20d18a942afc8e121fb01cf2222fde88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPWM-request>)))
  "Returns full string definition for message of type '<SetPWM-request>"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPWM-request)))
  "Returns full string definition for message of type 'SetPWM-request"
  (cl:format cl:nil "float32 flex_myobrick_pwm~%float32 extend_myobrick_pwm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPWM-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPWM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPWM-request
    (cl:cons ':flex_myobrick_pwm (flex_myobrick_pwm msg))
    (cl:cons ':extend_myobrick_pwm (extend_myobrick_pwm msg))
))
;//! \htmlinclude SetPWM-response.msg.html

(cl:defclass <SetPWM-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPWM-response (<SetPWM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPWM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPWM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<SetPWM-response> is deprecated: use bench_pkg-srv:SetPWM-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:success-val is deprecated.  Use bench_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPWM-response>) ostream)
  "Serializes a message object of type '<SetPWM-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPWM-response>) istream)
  "Deserializes a message object of type '<SetPWM-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPWM-response>)))
  "Returns string type for a service object of type '<SetPWM-response>"
  "bench_pkg/SetPWMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPWM-response)))
  "Returns string type for a service object of type 'SetPWM-response"
  "bench_pkg/SetPWMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPWM-response>)))
  "Returns md5sum for a message object of type '<SetPWM-response>"
  "20d18a942afc8e121fb01cf2222fde88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPWM-response)))
  "Returns md5sum for a message object of type 'SetPWM-response"
  "20d18a942afc8e121fb01cf2222fde88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPWM-response>)))
  "Returns full string definition for message of type '<SetPWM-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPWM-response)))
  "Returns full string definition for message of type 'SetPWM-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPWM-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPWM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPWM-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPWM)))
  'SetPWM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPWM)))
  'SetPWM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPWM)))
  "Returns string type for a service object of type '<SetPWM>"
  "bench_pkg/SetPWM")