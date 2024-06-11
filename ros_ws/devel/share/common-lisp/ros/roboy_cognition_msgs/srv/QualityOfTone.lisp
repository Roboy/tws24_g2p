; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude QualityOfTone-request.msg.html

(cl:defclass <QualityOfTone-request> (roslisp-msg-protocol:ros-message)
  ((tone
    :reader tone
    :initarg :tone
    :type cl:string
    :initform "")
   (time_in_milliseconds
    :reader time_in_milliseconds
    :initarg :time_in_milliseconds
    :type cl:float
    :initform 0.0)
   (major_only
    :reader major_only
    :initarg :major_only
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTone-request (<QualityOfTone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<QualityOfTone-request> is deprecated: use roboy_cognition_msgs-srv:QualityOfTone-request instead.")))

(cl:ensure-generic-function 'tone-val :lambda-list '(m))
(cl:defmethod tone-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:tone-val is deprecated.  Use roboy_cognition_msgs-srv:tone instead.")
  (tone m))

(cl:ensure-generic-function 'time_in_milliseconds-val :lambda-list '(m))
(cl:defmethod time_in_milliseconds-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:time_in_milliseconds-val is deprecated.  Use roboy_cognition_msgs-srv:time_in_milliseconds instead.")
  (time_in_milliseconds m))

(cl:ensure-generic-function 'major_only-val :lambda-list '(m))
(cl:defmethod major_only-val ((m <QualityOfTone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:major_only-val is deprecated.  Use roboy_cognition_msgs-srv:major_only instead.")
  (major_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTone-request>) ostream)
  "Serializes a message object of type '<QualityOfTone-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tone))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_in_milliseconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'major_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTone-request>) istream)
  "Deserializes a message object of type '<QualityOfTone-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tone) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tone) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_in_milliseconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'major_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTone-request>)))
  "Returns string type for a service object of type '<QualityOfTone-request>"
  "roboy_cognition_msgs/QualityOfToneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone-request)))
  "Returns string type for a service object of type 'QualityOfTone-request"
  "roboy_cognition_msgs/QualityOfToneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTone-request>)))
  "Returns md5sum for a message object of type '<QualityOfTone-request>"
  "eeaf952b12443d5b5a1e7a092753228a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTone-request)))
  "Returns md5sum for a message object of type 'QualityOfTone-request"
  "eeaf952b12443d5b5a1e7a092753228a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTone-request>)))
  "Returns full string definition for message of type '<QualityOfTone-request>"
  (cl:format cl:nil "string tone~%float32 time_in_milliseconds~%bool major_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTone-request)))
  "Returns full string definition for message of type 'QualityOfTone-request"
  (cl:format cl:nil "string tone~%float32 time_in_milliseconds~%bool major_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTone-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tone))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTone-request
    (cl:cons ':tone (tone msg))
    (cl:cons ':time_in_milliseconds (time_in_milliseconds msg))
    (cl:cons ':major_only (major_only msg))
))
;//! \htmlinclude QualityOfTone-response.msg.html

(cl:defclass <QualityOfTone-response> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type cl:float
    :initform 0.0)
   (purity
    :reader purity
    :initarg :purity
    :type cl:float
    :initform 0.0)
   (direction_z
    :reader direction_z
    :initarg :direction_z
    :type cl:float
    :initform 0.0)
   (direction_y
    :reader direction_y
    :initarg :direction_y
    :type cl:float
    :initform 0.0)
   (hit_pin
    :reader hit_pin
    :initarg :hit_pin
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTone-response (<QualityOfTone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<QualityOfTone-response> is deprecated: use roboy_cognition_msgs-srv:QualityOfTone-response instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:quality-val is deprecated.  Use roboy_cognition_msgs-srv:quality instead.")
  (quality m))

(cl:ensure-generic-function 'purity-val :lambda-list '(m))
(cl:defmethod purity-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:purity-val is deprecated.  Use roboy_cognition_msgs-srv:purity instead.")
  (purity m))

(cl:ensure-generic-function 'direction_z-val :lambda-list '(m))
(cl:defmethod direction_z-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:direction_z-val is deprecated.  Use roboy_cognition_msgs-srv:direction_z instead.")
  (direction_z m))

(cl:ensure-generic-function 'direction_y-val :lambda-list '(m))
(cl:defmethod direction_y-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:direction_y-val is deprecated.  Use roboy_cognition_msgs-srv:direction_y instead.")
  (direction_y m))

(cl:ensure-generic-function 'hit_pin-val :lambda-list '(m))
(cl:defmethod hit_pin-val ((m <QualityOfTone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:hit_pin-val is deprecated.  Use roboy_cognition_msgs-srv:hit_pin instead.")
  (hit_pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTone-response>) ostream)
  "Serializes a message object of type '<QualityOfTone-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'purity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hit_pin) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTone-response>) istream)
  "Deserializes a message object of type '<QualityOfTone-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quality) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'purity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'hit_pin) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTone-response>)))
  "Returns string type for a service object of type '<QualityOfTone-response>"
  "roboy_cognition_msgs/QualityOfToneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone-response)))
  "Returns string type for a service object of type 'QualityOfTone-response"
  "roboy_cognition_msgs/QualityOfToneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTone-response>)))
  "Returns md5sum for a message object of type '<QualityOfTone-response>"
  "eeaf952b12443d5b5a1e7a092753228a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTone-response)))
  "Returns md5sum for a message object of type 'QualityOfTone-response"
  "eeaf952b12443d5b5a1e7a092753228a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTone-response>)))
  "Returns full string definition for message of type '<QualityOfTone-response>"
  (cl:format cl:nil "float32 quality~%float32 purity~%float32 direction_z~%float32 direction_y~%bool hit_pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTone-response)))
  "Returns full string definition for message of type 'QualityOfTone-response"
  (cl:format cl:nil "float32 quality~%float32 purity~%float32 direction_z~%float32 direction_y~%bool hit_pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTone-response>))
  (cl:+ 0
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTone-response
    (cl:cons ':quality (quality msg))
    (cl:cons ':purity (purity msg))
    (cl:cons ':direction_z (direction_z msg))
    (cl:cons ':direction_y (direction_y msg))
    (cl:cons ':hit_pin (hit_pin msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QualityOfTone)))
  'QualityOfTone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QualityOfTone)))
  'QualityOfTone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTone)))
  "Returns string type for a service object of type '<QualityOfTone>"
  "roboy_cognition_msgs/QualityOfTone")