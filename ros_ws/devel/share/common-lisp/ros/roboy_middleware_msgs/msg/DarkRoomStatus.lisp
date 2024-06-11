; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-msg)


;//! \htmlinclude DarkRoomStatus.msg.html

(cl:defclass <DarkRoomStatus> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:string
    :initform "")
   (sensor_state
    :reader sensor_state
    :initarg :sensor_state
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass DarkRoomStatus (<DarkRoomStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DarkRoomStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DarkRoomStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-msg:<DarkRoomStatus> is deprecated: use roboy_middleware_msgs-msg:DarkRoomStatus instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <DarkRoomStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:object_id-val is deprecated.  Use roboy_middleware_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'sensor_state-val :lambda-list '(m))
(cl:defmethod sensor_state-val ((m <DarkRoomStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:sensor_state-val is deprecated.  Use roboy_middleware_msgs-msg:sensor_state instead.")
  (sensor_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DarkRoomStatus>) ostream)
  "Serializes a message object of type '<DarkRoomStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensor_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'sensor_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DarkRoomStatus>) istream)
  "Deserializes a message object of type '<DarkRoomStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensor_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensor_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DarkRoomStatus>)))
  "Returns string type for a message object of type '<DarkRoomStatus>"
  "roboy_middleware_msgs/DarkRoomStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DarkRoomStatus)))
  "Returns string type for a message object of type 'DarkRoomStatus"
  "roboy_middleware_msgs/DarkRoomStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DarkRoomStatus>)))
  "Returns md5sum for a message object of type '<DarkRoomStatus>"
  "701850641a680172b1574e149f61356d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DarkRoomStatus)))
  "Returns md5sum for a message object of type 'DarkRoomStatus"
  "701850641a680172b1574e149f61356d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DarkRoomStatus>)))
  "Returns full string definition for message of type '<DarkRoomStatus>"
  (cl:format cl:nil "string object_id~%uint8[] sensor_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DarkRoomStatus)))
  "Returns full string definition for message of type 'DarkRoomStatus"
  (cl:format cl:nil "string object_id~%uint8[] sensor_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DarkRoomStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DarkRoomStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DarkRoomStatus
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':sensor_state (sensor_state msg))
))
