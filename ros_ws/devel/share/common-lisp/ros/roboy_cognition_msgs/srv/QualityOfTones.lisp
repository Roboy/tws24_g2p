; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude QualityOfTones-request.msg.html

(cl:defclass <QualityOfTones-request> (roslisp-msg-protocol:ros-message)
  ((time_in_milliseconds
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

(cl:defclass QualityOfTones-request (<QualityOfTones-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTones-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTones-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<QualityOfTones-request> is deprecated: use roboy_cognition_msgs-srv:QualityOfTones-request instead.")))

(cl:ensure-generic-function 'time_in_milliseconds-val :lambda-list '(m))
(cl:defmethod time_in_milliseconds-val ((m <QualityOfTones-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:time_in_milliseconds-val is deprecated.  Use roboy_cognition_msgs-srv:time_in_milliseconds instead.")
  (time_in_milliseconds m))

(cl:ensure-generic-function 'major_only-val :lambda-list '(m))
(cl:defmethod major_only-val ((m <QualityOfTones-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:major_only-val is deprecated.  Use roboy_cognition_msgs-srv:major_only instead.")
  (major_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTones-request>) ostream)
  "Serializes a message object of type '<QualityOfTones-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_in_milliseconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'major_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTones-request>) istream)
  "Deserializes a message object of type '<QualityOfTones-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_in_milliseconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'major_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTones-request>)))
  "Returns string type for a service object of type '<QualityOfTones-request>"
  "roboy_cognition_msgs/QualityOfTonesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones-request)))
  "Returns string type for a service object of type 'QualityOfTones-request"
  "roboy_cognition_msgs/QualityOfTonesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTones-request>)))
  "Returns md5sum for a message object of type '<QualityOfTones-request>"
  "fc70456230b8a068be395f059adcde0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTones-request)))
  "Returns md5sum for a message object of type 'QualityOfTones-request"
  "fc70456230b8a068be395f059adcde0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTones-request>)))
  "Returns full string definition for message of type '<QualityOfTones-request>"
  (cl:format cl:nil "float32 time_in_milliseconds~%bool major_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTones-request)))
  "Returns full string definition for message of type 'QualityOfTones-request"
  (cl:format cl:nil "float32 time_in_milliseconds~%bool major_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTones-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTones-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTones-request
    (cl:cons ':time_in_milliseconds (time_in_milliseconds msg))
    (cl:cons ':major_only (major_only msg))
))
;//! \htmlinclude QualityOfTones-response.msg.html

(cl:defclass <QualityOfTones-response> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (purity
    :reader purity
    :initarg :purity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (direction_z
    :reader direction_z
    :initarg :direction_z
    :type cl:float
    :initform 0.0)
   (direction_y
    :reader direction_y
    :initarg :direction_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (hit_pin
    :reader hit_pin
    :initarg :hit_pin
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QualityOfTones-response (<QualityOfTones-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QualityOfTones-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QualityOfTones-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<QualityOfTones-response> is deprecated: use roboy_cognition_msgs-srv:QualityOfTones-response instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:quality-val is deprecated.  Use roboy_cognition_msgs-srv:quality instead.")
  (quality m))

(cl:ensure-generic-function 'purity-val :lambda-list '(m))
(cl:defmethod purity-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:purity-val is deprecated.  Use roboy_cognition_msgs-srv:purity instead.")
  (purity m))

(cl:ensure-generic-function 'direction_z-val :lambda-list '(m))
(cl:defmethod direction_z-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:direction_z-val is deprecated.  Use roboy_cognition_msgs-srv:direction_z instead.")
  (direction_z m))

(cl:ensure-generic-function 'direction_y-val :lambda-list '(m))
(cl:defmethod direction_y-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:direction_y-val is deprecated.  Use roboy_cognition_msgs-srv:direction_y instead.")
  (direction_y m))

(cl:ensure-generic-function 'hit_pin-val :lambda-list '(m))
(cl:defmethod hit_pin-val ((m <QualityOfTones-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:hit_pin-val is deprecated.  Use roboy_cognition_msgs-srv:hit_pin instead.")
  (hit_pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QualityOfTones-response>) ostream)
  "Serializes a message object of type '<QualityOfTones-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quality))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'purity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'purity))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'direction_y))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hit_pin) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QualityOfTones-response>) istream)
  "Deserializes a message object of type '<QualityOfTones-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quality) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quality)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'purity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'purity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction_z) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'hit_pin) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QualityOfTones-response>)))
  "Returns string type for a service object of type '<QualityOfTones-response>"
  "roboy_cognition_msgs/QualityOfTonesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones-response)))
  "Returns string type for a service object of type 'QualityOfTones-response"
  "roboy_cognition_msgs/QualityOfTonesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QualityOfTones-response>)))
  "Returns md5sum for a message object of type '<QualityOfTones-response>"
  "fc70456230b8a068be395f059adcde0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QualityOfTones-response)))
  "Returns md5sum for a message object of type 'QualityOfTones-response"
  "fc70456230b8a068be395f059adcde0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QualityOfTones-response>)))
  "Returns full string definition for message of type '<QualityOfTones-response>"
  (cl:format cl:nil "float32[] quality~%float32[] purity~%float32 direction_z~%float32[] direction_y~%bool hit_pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QualityOfTones-response)))
  "Returns full string definition for message of type 'QualityOfTones-response"
  (cl:format cl:nil "float32[] quality~%float32[] purity~%float32 direction_z~%float32[] direction_y~%bool hit_pin~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QualityOfTones-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quality) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'purity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QualityOfTones-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QualityOfTones-response
    (cl:cons ':quality (quality msg))
    (cl:cons ':purity (purity msg))
    (cl:cons ':direction_z (direction_z msg))
    (cl:cons ':direction_y (direction_y msg))
    (cl:cons ':hit_pin (hit_pin msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QualityOfTones)))
  'QualityOfTones-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QualityOfTones)))
  'QualityOfTones-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QualityOfTones)))
  "Returns string type for a service object of type '<QualityOfTones>"
  "roboy_cognition_msgs/QualityOfTones")