; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-msg)


;//! \htmlinclude RecognizedSpeech.msg.html

(cl:defclass <RecognizedSpeech> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (start_timestamp
    :reader start_timestamp
    :initarg :start_timestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass RecognizedSpeech (<RecognizedSpeech>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizedSpeech>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizedSpeech)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-msg:<RecognizedSpeech> is deprecated: use roboy_cognition_msgs-msg:RecognizedSpeech instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <RecognizedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:source-val is deprecated.  Use roboy_cognition_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <RecognizedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:text-val is deprecated.  Use roboy_cognition_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'start_timestamp-val :lambda-list '(m))
(cl:defmethod start_timestamp-val ((m <RecognizedSpeech>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:start_timestamp-val is deprecated.  Use roboy_cognition_msgs-msg:start_timestamp instead.")
  (start_timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizedSpeech>) ostream)
  "Serializes a message object of type '<RecognizedSpeech>"
  (cl:let* ((signed (cl:slot-value msg 'source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizedSpeech>) istream)
  "Deserializes a message object of type '<RecognizedSpeech>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_timestamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizedSpeech>)))
  "Returns string type for a message object of type '<RecognizedSpeech>"
  "roboy_cognition_msgs/RecognizedSpeech")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizedSpeech)))
  "Returns string type for a message object of type 'RecognizedSpeech"
  "roboy_cognition_msgs/RecognizedSpeech")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizedSpeech>)))
  "Returns md5sum for a message object of type '<RecognizedSpeech>"
  "e88722b8a9f33a92a1fdcd99f5483faa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizedSpeech)))
  "Returns md5sum for a message object of type 'RecognizedSpeech"
  "e88722b8a9f33a92a1fdcd99f5483faa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizedSpeech>)))
  "Returns full string definition for message of type '<RecognizedSpeech>"
  (cl:format cl:nil "int16 source~%string text~%float64 start_timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizedSpeech)))
  "Returns full string definition for message of type 'RecognizedSpeech"
  (cl:format cl:nil "int16 source~%string text~%float64 start_timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizedSpeech>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'text))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizedSpeech>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizedSpeech
    (cl:cons ':source (source msg))
    (cl:cons ':text (text msg))
    (cl:cons ':start_timestamp (start_timestamp msg))
))
