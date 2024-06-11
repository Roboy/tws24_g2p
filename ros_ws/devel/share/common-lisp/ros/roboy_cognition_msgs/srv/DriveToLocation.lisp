; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude DriveToLocation-request.msg.html

(cl:defclass <DriveToLocation-request> (roslisp-msg-protocol:ros-message)
  ((destination
    :reader destination
    :initarg :destination
    :type cl:string
    :initform ""))
)

(cl:defclass DriveToLocation-request (<DriveToLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveToLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveToLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<DriveToLocation-request> is deprecated: use roboy_cognition_msgs-srv:DriveToLocation-request instead.")))

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <DriveToLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:destination-val is deprecated.  Use roboy_cognition_msgs-srv:destination instead.")
  (destination m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveToLocation-request>) ostream)
  "Serializes a message object of type '<DriveToLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveToLocation-request>) istream)
  "Deserializes a message object of type '<DriveToLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveToLocation-request>)))
  "Returns string type for a service object of type '<DriveToLocation-request>"
  "roboy_cognition_msgs/DriveToLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveToLocation-request)))
  "Returns string type for a service object of type 'DriveToLocation-request"
  "roboy_cognition_msgs/DriveToLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveToLocation-request>)))
  "Returns md5sum for a message object of type '<DriveToLocation-request>"
  "7577d7b5d3f8964faf8902041a36d0b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveToLocation-request)))
  "Returns md5sum for a message object of type 'DriveToLocation-request"
  "7577d7b5d3f8964faf8902041a36d0b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveToLocation-request>)))
  "Returns full string definition for message of type '<DriveToLocation-request>"
  (cl:format cl:nil "string destination ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveToLocation-request)))
  "Returns full string definition for message of type 'DriveToLocation-request"
  (cl:format cl:nil "string destination ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveToLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destination))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveToLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveToLocation-request
    (cl:cons ':destination (destination msg))
))
;//! \htmlinclude DriveToLocation-response.msg.html

(cl:defclass <DriveToLocation-response> (roslisp-msg-protocol:ros-message)
  ((eta
    :reader eta
    :initarg :eta
    :type cl:fixnum
    :initform 0)
   (path_found
    :reader path_found
    :initarg :path_found
    :type cl:boolean
    :initform cl:nil)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass DriveToLocation-response (<DriveToLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveToLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveToLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<DriveToLocation-response> is deprecated: use roboy_cognition_msgs-srv:DriveToLocation-response instead.")))

(cl:ensure-generic-function 'eta-val :lambda-list '(m))
(cl:defmethod eta-val ((m <DriveToLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:eta-val is deprecated.  Use roboy_cognition_msgs-srv:eta instead.")
  (eta m))

(cl:ensure-generic-function 'path_found-val :lambda-list '(m))
(cl:defmethod path_found-val ((m <DriveToLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:path_found-val is deprecated.  Use roboy_cognition_msgs-srv:path_found instead.")
  (path_found m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <DriveToLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:error_message-val is deprecated.  Use roboy_cognition_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveToLocation-response>) ostream)
  "Serializes a message object of type '<DriveToLocation-response>"
  (cl:let* ((signed (cl:slot-value msg 'eta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'path_found) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveToLocation-response>) istream)
  "Deserializes a message object of type '<DriveToLocation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eta) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'path_found) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveToLocation-response>)))
  "Returns string type for a service object of type '<DriveToLocation-response>"
  "roboy_cognition_msgs/DriveToLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveToLocation-response)))
  "Returns string type for a service object of type 'DriveToLocation-response"
  "roboy_cognition_msgs/DriveToLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveToLocation-response>)))
  "Returns md5sum for a message object of type '<DriveToLocation-response>"
  "7577d7b5d3f8964faf8902041a36d0b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveToLocation-response)))
  "Returns md5sum for a message object of type 'DriveToLocation-response"
  "7577d7b5d3f8964faf8902041a36d0b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveToLocation-response>)))
  "Returns full string definition for message of type '<DriveToLocation-response>"
  (cl:format cl:nil "int16 eta~%bool path_found~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveToLocation-response)))
  "Returns full string definition for message of type 'DriveToLocation-response"
  (cl:format cl:nil "int16 eta~%bool path_found~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveToLocation-response>))
  (cl:+ 0
     2
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveToLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveToLocation-response
    (cl:cons ':eta (eta msg))
    (cl:cons ':path_found (path_found msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveToLocation)))
  'DriveToLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveToLocation)))
  'DriveToLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveToLocation)))
  "Returns string type for a service object of type '<DriveToLocation>"
  "roboy_cognition_msgs/DriveToLocation")