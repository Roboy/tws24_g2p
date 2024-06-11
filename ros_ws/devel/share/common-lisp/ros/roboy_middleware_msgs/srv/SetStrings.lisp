; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude SetStrings-request.msg.html

(cl:defclass <SetStrings-request> (roslisp-msg-protocol:ros-message)
  ((strings
    :reader strings
    :initarg :strings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetStrings-request (<SetStrings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStrings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStrings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SetStrings-request> is deprecated: use roboy_middleware_msgs-srv:SetStrings-request instead.")))

(cl:ensure-generic-function 'strings-val :lambda-list '(m))
(cl:defmethod strings-val ((m <SetStrings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:strings-val is deprecated.  Use roboy_middleware_msgs-srv:strings instead.")
  (strings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStrings-request>) ostream)
  "Serializes a message object of type '<SetStrings-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'strings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStrings-request>) istream)
  "Deserializes a message object of type '<SetStrings-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStrings-request>)))
  "Returns string type for a service object of type '<SetStrings-request>"
  "roboy_middleware_msgs/SetStringsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStrings-request)))
  "Returns string type for a service object of type 'SetStrings-request"
  "roboy_middleware_msgs/SetStringsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStrings-request>)))
  "Returns md5sum for a message object of type '<SetStrings-request>"
  "962de84cd3589029beb1778181ac83ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStrings-request)))
  "Returns md5sum for a message object of type 'SetStrings-request"
  "962de84cd3589029beb1778181ac83ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStrings-request>)))
  "Returns full string definition for message of type '<SetStrings-request>"
  (cl:format cl:nil "string[] strings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStrings-request)))
  "Returns full string definition for message of type 'SetStrings-request"
  (cl:format cl:nil "string[] strings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStrings-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStrings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStrings-request
    (cl:cons ':strings (strings msg))
))
;//! \htmlinclude SetStrings-response.msg.html

(cl:defclass <SetStrings-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetStrings-response (<SetStrings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStrings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStrings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SetStrings-response> is deprecated: use roboy_middleware_msgs-srv:SetStrings-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetStrings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:result-val is deprecated.  Use roboy_middleware_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStrings-response>) ostream)
  "Serializes a message object of type '<SetStrings-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStrings-response>) istream)
  "Deserializes a message object of type '<SetStrings-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStrings-response>)))
  "Returns string type for a service object of type '<SetStrings-response>"
  "roboy_middleware_msgs/SetStringsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStrings-response)))
  "Returns string type for a service object of type 'SetStrings-response"
  "roboy_middleware_msgs/SetStringsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStrings-response>)))
  "Returns md5sum for a message object of type '<SetStrings-response>"
  "962de84cd3589029beb1778181ac83ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStrings-response)))
  "Returns md5sum for a message object of type 'SetStrings-response"
  "962de84cd3589029beb1778181ac83ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStrings-response>)))
  "Returns full string definition for message of type '<SetStrings-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStrings-response)))
  "Returns full string definition for message of type 'SetStrings-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStrings-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStrings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStrings-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetStrings)))
  'SetStrings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetStrings)))
  'SetStrings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStrings)))
  "Returns string type for a service object of type '<SetStrings>"
  "roboy_middleware_msgs/SetStrings")