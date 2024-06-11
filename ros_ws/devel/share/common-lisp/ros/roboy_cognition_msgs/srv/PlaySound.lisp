; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude PlaySound-request.msg.html

(cl:defclass <PlaySound-request> (roslisp-msg-protocol:ros-message)
  ((filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform "")
   (timestamps
    :reader timestamps
    :initarg :timestamps
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (emotions
    :reader emotions
    :initarg :emotions
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass PlaySound-request (<PlaySound-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySound-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySound-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<PlaySound-request> is deprecated: use roboy_cognition_msgs-srv:PlaySound-request instead.")))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:filepath-val is deprecated.  Use roboy_cognition_msgs-srv:filepath instead.")
  (filepath m))

(cl:ensure-generic-function 'timestamps-val :lambda-list '(m))
(cl:defmethod timestamps-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:timestamps-val is deprecated.  Use roboy_cognition_msgs-srv:timestamps instead.")
  (timestamps m))

(cl:ensure-generic-function 'emotions-val :lambda-list '(m))
(cl:defmethod emotions-val ((m <PlaySound-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:emotions-val is deprecated.  Use roboy_cognition_msgs-srv:emotions instead.")
  (emotions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySound-request>) ostream)
  "Serializes a message object of type '<PlaySound-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'timestamps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'timestamps))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'emotions))))
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
   (cl:slot-value msg 'emotions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySound-request>) istream)
  "Deserializes a message object of type '<PlaySound-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'timestamps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'timestamps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'emotions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'emotions)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySound-request>)))
  "Returns string type for a service object of type '<PlaySound-request>"
  "roboy_cognition_msgs/PlaySoundRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound-request)))
  "Returns string type for a service object of type 'PlaySound-request"
  "roboy_cognition_msgs/PlaySoundRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySound-request>)))
  "Returns md5sum for a message object of type '<PlaySound-request>"
  "be411978a058f6d39164b06691bbbd80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySound-request)))
  "Returns md5sum for a message object of type 'PlaySound-request"
  "be411978a058f6d39164b06691bbbd80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySound-request>)))
  "Returns full string definition for message of type '<PlaySound-request>"
  (cl:format cl:nil "string filepath~%float64[] timestamps~%string[] emotions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySound-request)))
  "Returns full string definition for message of type 'PlaySound-request"
  (cl:format cl:nil "string filepath~%float64[] timestamps~%string[] emotions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySound-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filepath))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'timestamps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'emotions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySound-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySound-request
    (cl:cons ':filepath (filepath msg))
    (cl:cons ':timestamps (timestamps msg))
    (cl:cons ':emotions (emotions msg))
))
;//! \htmlinclude PlaySound-response.msg.html

(cl:defclass <PlaySound-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlaySound-response (<PlaySound-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaySound-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaySound-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<PlaySound-response> is deprecated: use roboy_cognition_msgs-srv:PlaySound-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlaySound-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:success-val is deprecated.  Use roboy_cognition_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaySound-response>) ostream)
  "Serializes a message object of type '<PlaySound-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaySound-response>) istream)
  "Deserializes a message object of type '<PlaySound-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaySound-response>)))
  "Returns string type for a service object of type '<PlaySound-response>"
  "roboy_cognition_msgs/PlaySoundResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound-response)))
  "Returns string type for a service object of type 'PlaySound-response"
  "roboy_cognition_msgs/PlaySoundResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaySound-response>)))
  "Returns md5sum for a message object of type '<PlaySound-response>"
  "be411978a058f6d39164b06691bbbd80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaySound-response)))
  "Returns md5sum for a message object of type 'PlaySound-response"
  "be411978a058f6d39164b06691bbbd80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaySound-response>)))
  "Returns full string definition for message of type '<PlaySound-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaySound-response)))
  "Returns full string definition for message of type 'PlaySound-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaySound-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaySound-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaySound-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlaySound)))
  'PlaySound-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlaySound)))
  'PlaySound-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaySound)))
  "Returns string type for a service object of type '<PlaySound>"
  "roboy_cognition_msgs/PlaySound")