; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude SystemCheck-request.msg.html

(cl:defclass <SystemCheck-request> (roslisp-msg-protocol:ros-message)
  ((motorIDs
    :reader motorIDs
    :initarg :motorIDs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SystemCheck-request (<SystemCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SystemCheck-request> is deprecated: use roboy_middleware_msgs-srv:SystemCheck-request instead.")))

(cl:ensure-generic-function 'motorIDs-val :lambda-list '(m))
(cl:defmethod motorIDs-val ((m <SystemCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motorIDs-val is deprecated.  Use roboy_middleware_msgs-srv:motorIDs instead.")
  (motorIDs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemCheck-request>) ostream)
  "Serializes a message object of type '<SystemCheck-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorIDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motorIDs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemCheck-request>) istream)
  "Deserializes a message object of type '<SystemCheck-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorIDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorIDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemCheck-request>)))
  "Returns string type for a service object of type '<SystemCheck-request>"
  "roboy_middleware_msgs/SystemCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCheck-request)))
  "Returns string type for a service object of type 'SystemCheck-request"
  "roboy_middleware_msgs/SystemCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemCheck-request>)))
  "Returns md5sum for a message object of type '<SystemCheck-request>"
  "bb69ef4baabf6b217933952435e6cb64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemCheck-request)))
  "Returns md5sum for a message object of type 'SystemCheck-request"
  "bb69ef4baabf6b217933952435e6cb64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemCheck-request>)))
  "Returns full string definition for message of type '<SystemCheck-request>"
  (cl:format cl:nil "# if empty check all motors, otherwise only the requested~%uint8[] motorIDs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemCheck-request)))
  "Returns full string definition for message of type 'SystemCheck-request"
  (cl:format cl:nil "# if empty check all motors, otherwise only the requested~%uint8[] motorIDs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemCheck-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorIDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemCheck-request
    (cl:cons ':motorIDs (motorIDs msg))
))
;//! \htmlinclude SystemCheck-response.msg.html

(cl:defclass <SystemCheck-response> (roslisp-msg-protocol:ros-message)
  ((motorIDs
    :reader motorIDs
    :initarg :motorIDs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (encoder0_pos
    :reader encoder0_pos
    :initarg :encoder0_pos
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (encoder1_pos
    :reader encoder1_pos
    :initarg :encoder1_pos
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (communication_quality
    :reader communication_quality
    :initarg :communication_quality
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass SystemCheck-response (<SystemCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<SystemCheck-response> is deprecated: use roboy_middleware_msgs-srv:SystemCheck-response instead.")))

(cl:ensure-generic-function 'motorIDs-val :lambda-list '(m))
(cl:defmethod motorIDs-val ((m <SystemCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motorIDs-val is deprecated.  Use roboy_middleware_msgs-srv:motorIDs instead.")
  (motorIDs m))

(cl:ensure-generic-function 'encoder0_pos-val :lambda-list '(m))
(cl:defmethod encoder0_pos-val ((m <SystemCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:encoder0_pos-val is deprecated.  Use roboy_middleware_msgs-srv:encoder0_pos instead.")
  (encoder0_pos m))

(cl:ensure-generic-function 'encoder1_pos-val :lambda-list '(m))
(cl:defmethod encoder1_pos-val ((m <SystemCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:encoder1_pos-val is deprecated.  Use roboy_middleware_msgs-srv:encoder1_pos instead.")
  (encoder1_pos m))

(cl:ensure-generic-function 'communication_quality-val :lambda-list '(m))
(cl:defmethod communication_quality-val ((m <SystemCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:communication_quality-val is deprecated.  Use roboy_middleware_msgs-srv:communication_quality instead.")
  (communication_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemCheck-response>) ostream)
  "Serializes a message object of type '<SystemCheck-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorIDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'motorIDs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encoder0_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'encoder0_pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encoder1_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'encoder1_pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'communication_quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'communication_quality))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemCheck-response>) istream)
  "Deserializes a message object of type '<SystemCheck-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorIDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorIDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoder0_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encoder0_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoder1_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encoder1_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'communication_quality) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'communication_quality)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemCheck-response>)))
  "Returns string type for a service object of type '<SystemCheck-response>"
  "roboy_middleware_msgs/SystemCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCheck-response)))
  "Returns string type for a service object of type 'SystemCheck-response"
  "roboy_middleware_msgs/SystemCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemCheck-response>)))
  "Returns md5sum for a message object of type '<SystemCheck-response>"
  "bb69ef4baabf6b217933952435e6cb64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemCheck-response)))
  "Returns md5sum for a message object of type 'SystemCheck-response"
  "bb69ef4baabf6b217933952435e6cb64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemCheck-response>)))
  "Returns full string definition for message of type '<SystemCheck-response>"
  (cl:format cl:nil "# returns which mototrs are functional~%uint8[] motorIDs~%bool[] encoder0_pos~%bool[] encoder1_pos~%bool[] communication_quality~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemCheck-response)))
  "Returns full string definition for message of type 'SystemCheck-response"
  (cl:format cl:nil "# returns which mototrs are functional~%uint8[] motorIDs~%bool[] encoder0_pos~%bool[] encoder1_pos~%bool[] communication_quality~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemCheck-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorIDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encoder0_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encoder1_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'communication_quality) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemCheck-response
    (cl:cons ':motorIDs (motorIDs msg))
    (cl:cons ':encoder0_pos (encoder0_pos msg))
    (cl:cons ':encoder1_pos (encoder1_pos msg))
    (cl:cons ':communication_quality (communication_quality msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SystemCheck)))
  'SystemCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SystemCheck)))
  'SystemCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemCheck)))
  "Returns string type for a service object of type '<SystemCheck>"
  "roboy_middleware_msgs/SystemCheck")