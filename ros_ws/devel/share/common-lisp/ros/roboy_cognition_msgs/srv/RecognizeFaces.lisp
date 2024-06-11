; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude RecognizeFaces-request.msg.html

(cl:defclass <RecognizeFaces-request> (roslisp-msg-protocol:ros-message)
  ((encodings
    :reader encodings
    :initarg :encodings
    :type (cl:vector roboy_cognition_msgs-msg:FacialFeatures)
   :initform (cl:make-array 0 :element-type 'roboy_cognition_msgs-msg:FacialFeatures :initial-element (cl:make-instance 'roboy_cognition_msgs-msg:FacialFeatures))))
)

(cl:defclass RecognizeFaces-request (<RecognizeFaces-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeFaces-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeFaces-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<RecognizeFaces-request> is deprecated: use roboy_cognition_msgs-srv:RecognizeFaces-request instead.")))

(cl:ensure-generic-function 'encodings-val :lambda-list '(m))
(cl:defmethod encodings-val ((m <RecognizeFaces-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:encodings-val is deprecated.  Use roboy_cognition_msgs-srv:encodings instead.")
  (encodings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeFaces-request>) ostream)
  "Serializes a message object of type '<RecognizeFaces-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encodings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'encodings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeFaces-request>) istream)
  "Deserializes a message object of type '<RecognizeFaces-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encodings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encodings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_cognition_msgs-msg:FacialFeatures))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeFaces-request>)))
  "Returns string type for a service object of type '<RecognizeFaces-request>"
  "roboy_cognition_msgs/RecognizeFacesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFaces-request)))
  "Returns string type for a service object of type 'RecognizeFaces-request"
  "roboy_cognition_msgs/RecognizeFacesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeFaces-request>)))
  "Returns md5sum for a message object of type '<RecognizeFaces-request>"
  "cc12f589e5227d96fb8b8056d9ae50c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeFaces-request)))
  "Returns md5sum for a message object of type 'RecognizeFaces-request"
  "cc12f589e5227d96fb8b8056d9ae50c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeFaces-request>)))
  "Returns full string definition for message of type '<RecognizeFaces-request>"
  (cl:format cl:nil "FacialFeatures[] encodings~%~%================================================================================~%MSG: roboy_cognition_msgs/FacialFeatures~%#only for unrecognized faces~%#is person speaking?~%bool speaking~%#facial features (128x1 vector)~%float64[128] ff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeFaces-request)))
  "Returns full string definition for message of type 'RecognizeFaces-request"
  (cl:format cl:nil "FacialFeatures[] encodings~%~%================================================================================~%MSG: roboy_cognition_msgs/FacialFeatures~%#only for unrecognized faces~%#is person speaking?~%bool speaking~%#facial features (128x1 vector)~%float64[128] ff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeFaces-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encodings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeFaces-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeFaces-request
    (cl:cons ':encodings (encodings msg))
))
;//! \htmlinclude RecognizeFaces-response.msg.html

(cl:defclass <RecognizeFaces-response> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (confidence
    :reader confidence
    :initarg :confidence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass RecognizeFaces-response (<RecognizeFaces-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeFaces-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeFaces-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<RecognizeFaces-response> is deprecated: use roboy_cognition_msgs-srv:RecognizeFaces-response instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <RecognizeFaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:names-val is deprecated.  Use roboy_cognition_msgs-srv:names instead.")
  (names m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RecognizeFaces-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:confidence-val is deprecated.  Use roboy_cognition_msgs-srv:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeFaces-response>) ostream)
  "Serializes a message object of type '<RecognizeFaces-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
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
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'confidence))))
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
   (cl:slot-value msg 'confidence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeFaces-response>) istream)
  "Deserializes a message object of type '<RecognizeFaces-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'confidence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'confidence)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeFaces-response>)))
  "Returns string type for a service object of type '<RecognizeFaces-response>"
  "roboy_cognition_msgs/RecognizeFacesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFaces-response)))
  "Returns string type for a service object of type 'RecognizeFaces-response"
  "roboy_cognition_msgs/RecognizeFacesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeFaces-response>)))
  "Returns md5sum for a message object of type '<RecognizeFaces-response>"
  "cc12f589e5227d96fb8b8056d9ae50c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeFaces-response)))
  "Returns md5sum for a message object of type 'RecognizeFaces-response"
  "cc12f589e5227d96fb8b8056d9ae50c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeFaces-response>)))
  "Returns full string definition for message of type '<RecognizeFaces-response>"
  (cl:format cl:nil "string[] names~%float64[] confidence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeFaces-response)))
  "Returns full string definition for message of type 'RecognizeFaces-response"
  (cl:format cl:nil "string[] names~%float64[] confidence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeFaces-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confidence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeFaces-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeFaces-response
    (cl:cons ':names (names msg))
    (cl:cons ':confidence (confidence msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeFaces)))
  'RecognizeFaces-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeFaces)))
  'RecognizeFaces-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeFaces)))
  "Returns string type for a service object of type '<RecognizeFaces>"
  "roboy_cognition_msgs/RecognizeFaces")