; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude ApplyFilter-request.msg.html

(cl:defclass <ApplyFilter-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ApplyFilter-request (<ApplyFilter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyFilter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyFilter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<ApplyFilter-request> is deprecated: use roboy_cognition_msgs-srv:ApplyFilter-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ApplyFilter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:name-val is deprecated.  Use roboy_cognition_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyFilter-request>) ostream)
  "Serializes a message object of type '<ApplyFilter-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyFilter-request>) istream)
  "Deserializes a message object of type '<ApplyFilter-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyFilter-request>)))
  "Returns string type for a service object of type '<ApplyFilter-request>"
  "roboy_cognition_msgs/ApplyFilterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyFilter-request)))
  "Returns string type for a service object of type 'ApplyFilter-request"
  "roboy_cognition_msgs/ApplyFilterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyFilter-request>)))
  "Returns md5sum for a message object of type '<ApplyFilter-request>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyFilter-request)))
  "Returns md5sum for a message object of type 'ApplyFilter-request"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyFilter-request>)))
  "Returns full string definition for message of type '<ApplyFilter-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyFilter-request)))
  "Returns full string definition for message of type 'ApplyFilter-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyFilter-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyFilter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyFilter-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ApplyFilter-response.msg.html

(cl:defclass <ApplyFilter-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ApplyFilter-response (<ApplyFilter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ApplyFilter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ApplyFilter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<ApplyFilter-response> is deprecated: use roboy_cognition_msgs-srv:ApplyFilter-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ApplyFilter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:success-val is deprecated.  Use roboy_cognition_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ApplyFilter-response>) ostream)
  "Serializes a message object of type '<ApplyFilter-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ApplyFilter-response>) istream)
  "Deserializes a message object of type '<ApplyFilter-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ApplyFilter-response>)))
  "Returns string type for a service object of type '<ApplyFilter-response>"
  "roboy_cognition_msgs/ApplyFilterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyFilter-response)))
  "Returns string type for a service object of type 'ApplyFilter-response"
  "roboy_cognition_msgs/ApplyFilterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ApplyFilter-response>)))
  "Returns md5sum for a message object of type '<ApplyFilter-response>"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ApplyFilter-response)))
  "Returns md5sum for a message object of type 'ApplyFilter-response"
  "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ApplyFilter-response>)))
  "Returns full string definition for message of type '<ApplyFilter-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ApplyFilter-response)))
  "Returns full string definition for message of type 'ApplyFilter-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ApplyFilter-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ApplyFilter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ApplyFilter-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ApplyFilter)))
  'ApplyFilter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ApplyFilter)))
  'ApplyFilter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ApplyFilter)))
  "Returns string type for a service object of type '<ApplyFilter>"
  "roboy_cognition_msgs/ApplyFilter")