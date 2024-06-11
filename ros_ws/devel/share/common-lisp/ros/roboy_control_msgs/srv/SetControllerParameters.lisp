; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-srv)


;//! \htmlinclude SetControllerParameters-request.msg.html

(cl:defclass <SetControllerParameters-request> (roslisp-msg-protocol:ros-message)
  ((kp
    :reader kp
    :initarg :kp
    :type cl:float
    :initform 0.0)
   (kd
    :reader kd
    :initarg :kd
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetControllerParameters-request (<SetControllerParameters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControllerParameters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControllerParameters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<SetControllerParameters-request> is deprecated: use roboy_control_msgs-srv:SetControllerParameters-request instead.")))

(cl:ensure-generic-function 'kp-val :lambda-list '(m))
(cl:defmethod kp-val ((m <SetControllerParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:kp-val is deprecated.  Use roboy_control_msgs-srv:kp instead.")
  (kp m))

(cl:ensure-generic-function 'kd-val :lambda-list '(m))
(cl:defmethod kd-val ((m <SetControllerParameters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:kd-val is deprecated.  Use roboy_control_msgs-srv:kd instead.")
  (kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControllerParameters-request>) ostream)
  "Serializes a message object of type '<SetControllerParameters-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControllerParameters-request>) istream)
  "Deserializes a message object of type '<SetControllerParameters-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControllerParameters-request>)))
  "Returns string type for a service object of type '<SetControllerParameters-request>"
  "roboy_control_msgs/SetControllerParametersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControllerParameters-request)))
  "Returns string type for a service object of type 'SetControllerParameters-request"
  "roboy_control_msgs/SetControllerParametersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControllerParameters-request>)))
  "Returns md5sum for a message object of type '<SetControllerParameters-request>"
  "9f574aefbd146010c8b1b88ba0c9d622")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControllerParameters-request)))
  "Returns md5sum for a message object of type 'SetControllerParameters-request"
  "9f574aefbd146010c8b1b88ba0c9d622")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControllerParameters-request>)))
  "Returns full string definition for message of type '<SetControllerParameters-request>"
  (cl:format cl:nil "float64 kp~%float64 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControllerParameters-request)))
  "Returns full string definition for message of type 'SetControllerParameters-request"
  (cl:format cl:nil "float64 kp~%float64 kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControllerParameters-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControllerParameters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControllerParameters-request
    (cl:cons ':kp (kp msg))
    (cl:cons ':kd (kd msg))
))
;//! \htmlinclude SetControllerParameters-response.msg.html

(cl:defclass <SetControllerParameters-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetControllerParameters-response (<SetControllerParameters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControllerParameters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControllerParameters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<SetControllerParameters-response> is deprecated: use roboy_control_msgs-srv:SetControllerParameters-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetControllerParameters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:success-val is deprecated.  Use roboy_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControllerParameters-response>) ostream)
  "Serializes a message object of type '<SetControllerParameters-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControllerParameters-response>) istream)
  "Deserializes a message object of type '<SetControllerParameters-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControllerParameters-response>)))
  "Returns string type for a service object of type '<SetControllerParameters-response>"
  "roboy_control_msgs/SetControllerParametersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControllerParameters-response)))
  "Returns string type for a service object of type 'SetControllerParameters-response"
  "roboy_control_msgs/SetControllerParametersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControllerParameters-response>)))
  "Returns md5sum for a message object of type '<SetControllerParameters-response>"
  "9f574aefbd146010c8b1b88ba0c9d622")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControllerParameters-response)))
  "Returns md5sum for a message object of type 'SetControllerParameters-response"
  "9f574aefbd146010c8b1b88ba0c9d622")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControllerParameters-response>)))
  "Returns full string definition for message of type '<SetControllerParameters-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControllerParameters-response)))
  "Returns full string definition for message of type 'SetControllerParameters-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControllerParameters-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControllerParameters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControllerParameters-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetControllerParameters)))
  'SetControllerParameters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetControllerParameters)))
  'SetControllerParameters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControllerParameters)))
  "Returns string type for a service object of type '<SetControllerParameters>"
  "roboy_control_msgs/SetControllerParameters")