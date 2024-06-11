; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude LocalizeObject-request.msg.html

(cl:defclass <LocalizeObject-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizeObject-request (<LocalizeObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizeObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizeObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<LocalizeObject-request> is deprecated: use roboy_cognition_msgs-srv:LocalizeObject-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <LocalizeObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:object-val is deprecated.  Use roboy_cognition_msgs-srv:object instead.")
  (object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizeObject-request>) ostream)
  "Serializes a message object of type '<LocalizeObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizeObject-request>) istream)
  "Deserializes a message object of type '<LocalizeObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizeObject-request>)))
  "Returns string type for a service object of type '<LocalizeObject-request>"
  "roboy_cognition_msgs/LocalizeObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizeObject-request)))
  "Returns string type for a service object of type 'LocalizeObject-request"
  "roboy_cognition_msgs/LocalizeObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizeObject-request>)))
  "Returns md5sum for a message object of type '<LocalizeObject-request>"
  "5d8b7cfb672222382cf4ae6d569bb15e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizeObject-request)))
  "Returns md5sum for a message object of type 'LocalizeObject-request"
  "5d8b7cfb672222382cf4ae6d569bb15e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizeObject-request>)))
  "Returns full string definition for message of type '<LocalizeObject-request>"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizeObject-request)))
  "Returns full string definition for message of type 'LocalizeObject-request"
  (cl:format cl:nil "string object~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizeObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizeObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizeObject-request
    (cl:cons ':object (object msg))
))
;//! \htmlinclude LocalizeObject-response.msg.html

(cl:defclass <LocalizeObject-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizeObject-response (<LocalizeObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizeObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizeObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<LocalizeObject-response> is deprecated: use roboy_cognition_msgs-srv:LocalizeObject-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LocalizeObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:pose-val is deprecated.  Use roboy_cognition_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <LocalizeObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:error_message-val is deprecated.  Use roboy_cognition_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizeObject-response>) ostream)
  "Serializes a message object of type '<LocalizeObject-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizeObject-response>) istream)
  "Deserializes a message object of type '<LocalizeObject-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizeObject-response>)))
  "Returns string type for a service object of type '<LocalizeObject-response>"
  "roboy_cognition_msgs/LocalizeObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizeObject-response)))
  "Returns string type for a service object of type 'LocalizeObject-response"
  "roboy_cognition_msgs/LocalizeObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizeObject-response>)))
  "Returns md5sum for a message object of type '<LocalizeObject-response>"
  "5d8b7cfb672222382cf4ae6d569bb15e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizeObject-response)))
  "Returns md5sum for a message object of type 'LocalizeObject-response"
  "5d8b7cfb672222382cf4ae6d569bb15e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizeObject-response>)))
  "Returns full string definition for message of type '<LocalizeObject-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string error_message~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizeObject-response)))
  "Returns full string definition for message of type 'LocalizeObject-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string error_message~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizeObject-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizeObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizeObject-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizeObject)))
  'LocalizeObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizeObject)))
  'LocalizeObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizeObject)))
  "Returns string type for a service object of type '<LocalizeObject>"
  "roboy_cognition_msgs/LocalizeObject")