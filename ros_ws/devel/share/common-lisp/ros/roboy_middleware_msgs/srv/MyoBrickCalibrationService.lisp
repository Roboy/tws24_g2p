; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude MyoBrickCalibrationService-request.msg.html

(cl:defclass <MyoBrickCalibrationService-request> (roslisp-msg-protocol:ros-message)
  ((fpga
    :reader fpga
    :initarg :fpga
    :type cl:fixnum
    :initform 0)
   (motor
    :reader motor
    :initarg :motor
    :type cl:fixnum
    :initform 0)
   (degree
    :reader degree
    :initarg :degree
    :type cl:fixnum
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0)
   (number_of_data_points
    :reader number_of_data_points
    :initarg :number_of_data_points
    :type cl:integer
    :initform 0)
   (min_degree
    :reader min_degree
    :initarg :min_degree
    :type cl:float
    :initform 0.0)
   (max_degree
    :reader max_degree
    :initarg :max_degree
    :type cl:float
    :initform 0.0))
)

(cl:defclass MyoBrickCalibrationService-request (<MyoBrickCalibrationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyoBrickCalibrationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyoBrickCalibrationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<MyoBrickCalibrationService-request> is deprecated: use roboy_middleware_msgs-srv:MyoBrickCalibrationService-request instead.")))

(cl:ensure-generic-function 'fpga-val :lambda-list '(m))
(cl:defmethod fpga-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:fpga-val is deprecated.  Use roboy_middleware_msgs-srv:fpga instead.")
  (fpga m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motor-val is deprecated.  Use roboy_middleware_msgs-srv:motor instead.")
  (motor m))

(cl:ensure-generic-function 'degree-val :lambda-list '(m))
(cl:defmethod degree-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:degree-val is deprecated.  Use roboy_middleware_msgs-srv:degree instead.")
  (degree m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:timeout-val is deprecated.  Use roboy_middleware_msgs-srv:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'number_of_data_points-val :lambda-list '(m))
(cl:defmethod number_of_data_points-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:number_of_data_points-val is deprecated.  Use roboy_middleware_msgs-srv:number_of_data_points instead.")
  (number_of_data_points m))

(cl:ensure-generic-function 'min_degree-val :lambda-list '(m))
(cl:defmethod min_degree-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:min_degree-val is deprecated.  Use roboy_middleware_msgs-srv:min_degree instead.")
  (min_degree m))

(cl:ensure-generic-function 'max_degree-val :lambda-list '(m))
(cl:defmethod max_degree-val ((m <MyoBrickCalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:max_degree-val is deprecated.  Use roboy_middleware_msgs-srv:max_degree instead.")
  (max_degree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyoBrickCalibrationService-request>) ostream)
  "Serializes a message object of type '<MyoBrickCalibrationService-request>"
  (cl:let* ((signed (cl:slot-value msg 'fpga)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_data_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_data_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_data_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_data_points)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyoBrickCalibrationService-request>) istream)
  "Deserializes a message object of type '<MyoBrickCalibrationService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fpga) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degree) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_data_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_data_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'number_of_data_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'number_of_data_points)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_degree) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_degree) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyoBrickCalibrationService-request>)))
  "Returns string type for a service object of type '<MyoBrickCalibrationService-request>"
  "roboy_middleware_msgs/MyoBrickCalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyoBrickCalibrationService-request)))
  "Returns string type for a service object of type 'MyoBrickCalibrationService-request"
  "roboy_middleware_msgs/MyoBrickCalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyoBrickCalibrationService-request>)))
  "Returns md5sum for a message object of type '<MyoBrickCalibrationService-request>"
  "e5ee8b92f36ed4d7af8af588c906a8b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyoBrickCalibrationService-request)))
  "Returns md5sum for a message object of type 'MyoBrickCalibrationService-request"
  "e5ee8b92f36ed4d7af8af588c906a8b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyoBrickCalibrationService-request>)))
  "Returns full string definition for message of type '<MyoBrickCalibrationService-request>"
  (cl:format cl:nil "int8 fpga~%int8 motor~%int8 degree~%int32 timeout~%uint32 number_of_data_points~%float32 min_degree~%float32 max_degree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyoBrickCalibrationService-request)))
  "Returns full string definition for message of type 'MyoBrickCalibrationService-request"
  (cl:format cl:nil "int8 fpga~%int8 motor~%int8 degree~%int32 timeout~%uint32 number_of_data_points~%float32 min_degree~%float32 max_degree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyoBrickCalibrationService-request>))
  (cl:+ 0
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyoBrickCalibrationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MyoBrickCalibrationService-request
    (cl:cons ':fpga (fpga msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':degree (degree msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':number_of_data_points (number_of_data_points msg))
    (cl:cons ':min_degree (min_degree msg))
    (cl:cons ':max_degree (max_degree msg))
))
;//! \htmlinclude MyoBrickCalibrationService-response.msg.html

(cl:defclass <MyoBrickCalibrationService-response> (roslisp-msg-protocol:ros-message)
  ((estimated_spring_parameters
    :reader estimated_spring_parameters
    :initarg :estimated_spring_parameters
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (motor_angle
    :reader motor_angle
    :initarg :motor_angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (motor_encoder
    :reader motor_encoder
    :initarg :motor_encoder
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MyoBrickCalibrationService-response (<MyoBrickCalibrationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyoBrickCalibrationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyoBrickCalibrationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<MyoBrickCalibrationService-response> is deprecated: use roboy_middleware_msgs-srv:MyoBrickCalibrationService-response instead.")))

(cl:ensure-generic-function 'estimated_spring_parameters-val :lambda-list '(m))
(cl:defmethod estimated_spring_parameters-val ((m <MyoBrickCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:estimated_spring_parameters-val is deprecated.  Use roboy_middleware_msgs-srv:estimated_spring_parameters instead.")
  (estimated_spring_parameters m))

(cl:ensure-generic-function 'motor_angle-val :lambda-list '(m))
(cl:defmethod motor_angle-val ((m <MyoBrickCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motor_angle-val is deprecated.  Use roboy_middleware_msgs-srv:motor_angle instead.")
  (motor_angle m))

(cl:ensure-generic-function 'motor_encoder-val :lambda-list '(m))
(cl:defmethod motor_encoder-val ((m <MyoBrickCalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motor_encoder-val is deprecated.  Use roboy_middleware_msgs-srv:motor_encoder instead.")
  (motor_encoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyoBrickCalibrationService-response>) ostream)
  "Serializes a message object of type '<MyoBrickCalibrationService-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'estimated_spring_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'estimated_spring_parameters))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_angle))))
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
   (cl:slot-value msg 'motor_angle))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motor_encoder))))
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
   (cl:slot-value msg 'motor_encoder))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyoBrickCalibrationService-response>) istream)
  "Deserializes a message object of type '<MyoBrickCalibrationService-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'estimated_spring_parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'estimated_spring_parameters)))
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
  (cl:setf (cl:slot-value msg 'motor_angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_angle)))
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
  (cl:setf (cl:slot-value msg 'motor_encoder) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motor_encoder)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyoBrickCalibrationService-response>)))
  "Returns string type for a service object of type '<MyoBrickCalibrationService-response>"
  "roboy_middleware_msgs/MyoBrickCalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyoBrickCalibrationService-response)))
  "Returns string type for a service object of type 'MyoBrickCalibrationService-response"
  "roboy_middleware_msgs/MyoBrickCalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyoBrickCalibrationService-response>)))
  "Returns md5sum for a message object of type '<MyoBrickCalibrationService-response>"
  "e5ee8b92f36ed4d7af8af588c906a8b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyoBrickCalibrationService-response)))
  "Returns md5sum for a message object of type 'MyoBrickCalibrationService-response"
  "e5ee8b92f36ed4d7af8af588c906a8b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyoBrickCalibrationService-response>)))
  "Returns full string definition for message of type '<MyoBrickCalibrationService-response>"
  (cl:format cl:nil "float32[] estimated_spring_parameters~%float64[] motor_angle~%float64[] motor_encoder~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyoBrickCalibrationService-response)))
  "Returns full string definition for message of type 'MyoBrickCalibrationService-response"
  (cl:format cl:nil "float32[] estimated_spring_parameters~%float64[] motor_angle~%float64[] motor_encoder~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyoBrickCalibrationService-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'estimated_spring_parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motor_encoder) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyoBrickCalibrationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MyoBrickCalibrationService-response
    (cl:cons ':estimated_spring_parameters (estimated_spring_parameters msg))
    (cl:cons ':motor_angle (motor_angle msg))
    (cl:cons ':motor_encoder (motor_encoder msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MyoBrickCalibrationService)))
  'MyoBrickCalibrationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MyoBrickCalibrationService)))
  'MyoBrickCalibrationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyoBrickCalibrationService)))
  "Returns string type for a service object of type '<MyoBrickCalibrationService>"
  "roboy_middleware_msgs/MyoBrickCalibrationService")