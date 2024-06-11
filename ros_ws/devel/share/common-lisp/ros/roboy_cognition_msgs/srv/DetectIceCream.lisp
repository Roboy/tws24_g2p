; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude DetectIceCream-request.msg.html

(cl:defclass <DetectIceCream-request> (roslisp-msg-protocol:ros-message)
  ((flavor
    :reader flavor
    :initarg :flavor
    :type cl:string
    :initform ""))
)

(cl:defclass DetectIceCream-request (<DetectIceCream-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectIceCream-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectIceCream-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<DetectIceCream-request> is deprecated: use roboy_cognition_msgs-srv:DetectIceCream-request instead.")))

(cl:ensure-generic-function 'flavor-val :lambda-list '(m))
(cl:defmethod flavor-val ((m <DetectIceCream-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:flavor-val is deprecated.  Use roboy_cognition_msgs-srv:flavor instead.")
  (flavor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectIceCream-request>) ostream)
  "Serializes a message object of type '<DetectIceCream-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flavor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flavor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectIceCream-request>) istream)
  "Deserializes a message object of type '<DetectIceCream-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flavor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flavor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectIceCream-request>)))
  "Returns string type for a service object of type '<DetectIceCream-request>"
  "roboy_cognition_msgs/DetectIceCreamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIceCream-request)))
  "Returns string type for a service object of type 'DetectIceCream-request"
  "roboy_cognition_msgs/DetectIceCreamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectIceCream-request>)))
  "Returns md5sum for a message object of type '<DetectIceCream-request>"
  "37d1e42fc203c1ff8077a402e7927892")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectIceCream-request)))
  "Returns md5sum for a message object of type 'DetectIceCream-request"
  "37d1e42fc203c1ff8077a402e7927892")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectIceCream-request>)))
  "Returns full string definition for message of type '<DetectIceCream-request>"
  (cl:format cl:nil "string flavor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectIceCream-request)))
  "Returns full string definition for message of type 'DetectIceCream-request"
  (cl:format cl:nil "string flavor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectIceCream-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'flavor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectIceCream-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectIceCream-request
    (cl:cons ':flavor (flavor msg))
))
;//! \htmlinclude DetectIceCream-response.msg.html

(cl:defclass <DetectIceCream-response> (roslisp-msg-protocol:ros-message)
  ((start_scooping
    :reader start_scooping
    :initarg :start_scooping
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end_scooping
    :reader end_scooping
    :initarg :end_scooping
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass DetectIceCream-response (<DetectIceCream-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectIceCream-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectIceCream-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<DetectIceCream-response> is deprecated: use roboy_cognition_msgs-srv:DetectIceCream-response instead.")))

(cl:ensure-generic-function 'start_scooping-val :lambda-list '(m))
(cl:defmethod start_scooping-val ((m <DetectIceCream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:start_scooping-val is deprecated.  Use roboy_cognition_msgs-srv:start_scooping instead.")
  (start_scooping m))

(cl:ensure-generic-function 'end_scooping-val :lambda-list '(m))
(cl:defmethod end_scooping-val ((m <DetectIceCream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:end_scooping-val is deprecated.  Use roboy_cognition_msgs-srv:end_scooping instead.")
  (end_scooping m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <DetectIceCream-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:error_message-val is deprecated.  Use roboy_cognition_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectIceCream-response>) ostream)
  "Serializes a message object of type '<DetectIceCream-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_scooping) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_scooping) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectIceCream-response>) istream)
  "Deserializes a message object of type '<DetectIceCream-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_scooping) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_scooping) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectIceCream-response>)))
  "Returns string type for a service object of type '<DetectIceCream-response>"
  "roboy_cognition_msgs/DetectIceCreamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIceCream-response)))
  "Returns string type for a service object of type 'DetectIceCream-response"
  "roboy_cognition_msgs/DetectIceCreamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectIceCream-response>)))
  "Returns md5sum for a message object of type '<DetectIceCream-response>"
  "37d1e42fc203c1ff8077a402e7927892")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectIceCream-response)))
  "Returns md5sum for a message object of type 'DetectIceCream-response"
  "37d1e42fc203c1ff8077a402e7927892")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectIceCream-response>)))
  "Returns full string definition for message of type '<DetectIceCream-response>"
  (cl:format cl:nil "geometry_msgs/Point start_scooping~%geometry_msgs/Point end_scooping~%string error_message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectIceCream-response)))
  "Returns full string definition for message of type 'DetectIceCream-response"
  (cl:format cl:nil "geometry_msgs/Point start_scooping~%geometry_msgs/Point end_scooping~%string error_message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectIceCream-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_scooping))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_scooping))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectIceCream-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectIceCream-response
    (cl:cons ':start_scooping (start_scooping msg))
    (cl:cons ':end_scooping (end_scooping msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectIceCream)))
  'DetectIceCream-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectIceCream)))
  'DetectIceCream-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectIceCream)))
  "Returns string type for a service object of type '<DetectIceCream>"
  "roboy_cognition_msgs/DetectIceCream")