; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude TalkToFile-request.msg.html

(cl:defclass <TalkToFile-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass TalkToFile-request (<TalkToFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkToFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkToFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<TalkToFile-request> is deprecated: use roboy_cognition_msgs-srv:TalkToFile-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TalkToFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:text-val is deprecated.  Use roboy_cognition_msgs-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <TalkToFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:filename-val is deprecated.  Use roboy_cognition_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkToFile-request>) ostream)
  "Serializes a message object of type '<TalkToFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkToFile-request>) istream)
  "Deserializes a message object of type '<TalkToFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkToFile-request>)))
  "Returns string type for a service object of type '<TalkToFile-request>"
  "roboy_cognition_msgs/TalkToFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkToFile-request)))
  "Returns string type for a service object of type 'TalkToFile-request"
  "roboy_cognition_msgs/TalkToFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkToFile-request>)))
  "Returns md5sum for a message object of type '<TalkToFile-request>"
  "09de354d912b0028dddee2016165725f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkToFile-request)))
  "Returns md5sum for a message object of type 'TalkToFile-request"
  "09de354d912b0028dddee2016165725f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkToFile-request>)))
  "Returns full string definition for message of type '<TalkToFile-request>"
  (cl:format cl:nil "string text~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkToFile-request)))
  "Returns full string definition for message of type 'TalkToFile-request"
  (cl:format cl:nil "string text~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkToFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkToFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkToFile-request
    (cl:cons ':text (text msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude TalkToFile-response.msg.html

(cl:defclass <TalkToFile-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TalkToFile-response (<TalkToFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TalkToFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TalkToFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<TalkToFile-response> is deprecated: use roboy_cognition_msgs-srv:TalkToFile-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TalkToFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:success-val is deprecated.  Use roboy_cognition_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TalkToFile-response>) ostream)
  "Serializes a message object of type '<TalkToFile-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TalkToFile-response>) istream)
  "Deserializes a message object of type '<TalkToFile-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TalkToFile-response>)))
  "Returns string type for a service object of type '<TalkToFile-response>"
  "roboy_cognition_msgs/TalkToFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkToFile-response)))
  "Returns string type for a service object of type 'TalkToFile-response"
  "roboy_cognition_msgs/TalkToFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TalkToFile-response>)))
  "Returns md5sum for a message object of type '<TalkToFile-response>"
  "09de354d912b0028dddee2016165725f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TalkToFile-response)))
  "Returns md5sum for a message object of type 'TalkToFile-response"
  "09de354d912b0028dddee2016165725f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TalkToFile-response>)))
  "Returns full string definition for message of type '<TalkToFile-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TalkToFile-response)))
  "Returns full string definition for message of type 'TalkToFile-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TalkToFile-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TalkToFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TalkToFile-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TalkToFile)))
  'TalkToFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TalkToFile)))
  'TalkToFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TalkToFile)))
  "Returns string type for a service object of type '<TalkToFile>"
  "roboy_cognition_msgs/TalkToFile")