; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude XL320-request.msg.html

(cl:defclass <XL320-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:boolean
    :initform cl:nil)
   (motor
    :reader motor
    :initarg :motor
    :type cl:fixnum
    :initform 0)
   (address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass XL320-request (<XL320-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XL320-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XL320-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<XL320-request> is deprecated: use roboy_middleware_msgs-srv:XL320-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <XL320-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:type-val is deprecated.  Use roboy_middleware_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <XL320-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:motor-val is deprecated.  Use roboy_middleware_msgs-srv:motor instead.")
  (motor m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <XL320-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:address-val is deprecated.  Use roboy_middleware_msgs-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <XL320-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:value-val is deprecated.  Use roboy_middleware_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XL320-request>) ostream)
  "Serializes a message object of type '<XL320-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'type) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XL320-request>) istream)
  "Deserializes a message object of type '<XL320-request>"
    (cl:setf (cl:slot-value msg 'type) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XL320-request>)))
  "Returns string type for a service object of type '<XL320-request>"
  "roboy_middleware_msgs/XL320Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XL320-request)))
  "Returns string type for a service object of type 'XL320-request"
  "roboy_middleware_msgs/XL320Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XL320-request>)))
  "Returns md5sum for a message object of type '<XL320-request>"
  "2df206e3bbdc218ed0e86d48777a9fbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XL320-request)))
  "Returns md5sum for a message object of type 'XL320-request"
  "2df206e3bbdc218ed0e86d48777a9fbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XL320-request>)))
  "Returns full string definition for message of type '<XL320-request>"
  (cl:format cl:nil "# 0: read 1:write~%bool type~%uint8 motor~%# EEPROM Area~%# MODEL_NUMBER             = 0, /**< Model number [R] (default=350) */~%# VERSION                  = 2, /**< Information on the version of firmware [R] */~%# id                       = 3, /**< id of Dynamixel [RW] (default=1 ; min=0 ; max=252) */~%# BAUD_RATE                = 4, /**< Baud Rate of Dynamixel [RW] (default=3 ; min=0 ; max=3) 0: 9600, 1:57600, 2:115200, 3:1Mbps*/~%# RETURN_DELAY_TIME        = 5, /**< Return Delay Time [RW] (default=250 ; min=0 ; max=254) */~%# CW_ANGLE_LIMIT           = 6, /**< clockwise Angle Limit [RW] (default=0 ; min=0 ; max=1023) */~%# CCW_ANGLE_LIMIT          = 8, /**< counterclockwise Angle Limit [RW] (default=1023 ; min=0 ; max=1023) */~%# CONTROL_MODE             = 11, /**< Control Mode [RW] (default=2 ; min=1 ; max=2) */~%# LIMIT_TEMPERATURE        = 12, /**< Internal Limit Temperature [RW] (default=65 ; min=0 ; max=150) */~%# LOWER_LIMIT_VOLTAGE      = 13, /**< Lowest Limit Voltage [RW] (default=60 ; min=50 ; max=250) */~%# UPPPER_LIMIT_VOLTAGE     = 14, /**< Upper Limit Voltage [RW] (default=90 ; min=50 ; max=250) */~%# MAX_TORQUE               = 15, /**< Lowest byte of Max. Torque [RW] (default=1023 ; min=0 ; max=1023) */~%# RETURN_LEVEL             = 17, /**< Return Level [RW] (default=2 ; min=0 ; max=2) */~%# ALARM_SHUTDOWN           = 18, /**< Shutdown for Alarm [RW] (default=3 ; min=0 ; max=7) */~%# RAM Area~%# TORQUE_ENABLE            = 24, /**< Torque On/Off [RW] (default=0 ; min=0 ; max=1) */~%# LED                      = 25, /**< LED On/Off [RW] (default=0 ; min=0 ; max=7) */~%# D_GAIN    				 = 27, /**< D Gain [RW] (default=0 ; min=0 ; max=254) */~%# I_GAIN      			 = 28, /**< I Gain [RW] (default=0 ; min=0 ; max=254) */~%# P_GAIN    				 = 29, /**< P Gain [RW] (default=32 ; min=0 ; max=254) */~%# GOAL_POSITION            = 30, /**< Goal Position [RW] (min=0 ; max=1023) */~%# GOAL_SPEED               = 32, /**< Goal Speed [RW] (min=0 ; max=2047) */~%# GOAL_TORQUE 		     = 35, /**< Goal Torque [RW] (min=0 ; max=1023) */~%# PRESENT_POSITION         = 37, /**< Current Position [R] */~%# PRESENT_SPEED            = 39, /**< Current Speed [R] */~%# PRESENT_LOAD             = 41, /**< Current Load [R] */~%# PRESENT_VOLTAGE          = 45, /**< Current Voltage [R] */~%# PRESENT_TEMPERATURE      = 46, /**< Present temperature [R] */~%# REGISTERED_INSTRUCTION   = 47, /**< Registered Instruction [R] (default=0) */~%# MOVING                   = 49, /**< Moving [R] (default=0) */~%# HARDWARE_ERROR           = 50, /**< Hardware error status [R] (default=0) */~%# PUNCH                    = 51  /**< Punch [RW] (default=32 ; min=0 ; max=1023) */~%uint8 address~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XL320-request)))
  "Returns full string definition for message of type 'XL320-request"
  (cl:format cl:nil "# 0: read 1:write~%bool type~%uint8 motor~%# EEPROM Area~%# MODEL_NUMBER             = 0, /**< Model number [R] (default=350) */~%# VERSION                  = 2, /**< Information on the version of firmware [R] */~%# id                       = 3, /**< id of Dynamixel [RW] (default=1 ; min=0 ; max=252) */~%# BAUD_RATE                = 4, /**< Baud Rate of Dynamixel [RW] (default=3 ; min=0 ; max=3) 0: 9600, 1:57600, 2:115200, 3:1Mbps*/~%# RETURN_DELAY_TIME        = 5, /**< Return Delay Time [RW] (default=250 ; min=0 ; max=254) */~%# CW_ANGLE_LIMIT           = 6, /**< clockwise Angle Limit [RW] (default=0 ; min=0 ; max=1023) */~%# CCW_ANGLE_LIMIT          = 8, /**< counterclockwise Angle Limit [RW] (default=1023 ; min=0 ; max=1023) */~%# CONTROL_MODE             = 11, /**< Control Mode [RW] (default=2 ; min=1 ; max=2) */~%# LIMIT_TEMPERATURE        = 12, /**< Internal Limit Temperature [RW] (default=65 ; min=0 ; max=150) */~%# LOWER_LIMIT_VOLTAGE      = 13, /**< Lowest Limit Voltage [RW] (default=60 ; min=50 ; max=250) */~%# UPPPER_LIMIT_VOLTAGE     = 14, /**< Upper Limit Voltage [RW] (default=90 ; min=50 ; max=250) */~%# MAX_TORQUE               = 15, /**< Lowest byte of Max. Torque [RW] (default=1023 ; min=0 ; max=1023) */~%# RETURN_LEVEL             = 17, /**< Return Level [RW] (default=2 ; min=0 ; max=2) */~%# ALARM_SHUTDOWN           = 18, /**< Shutdown for Alarm [RW] (default=3 ; min=0 ; max=7) */~%# RAM Area~%# TORQUE_ENABLE            = 24, /**< Torque On/Off [RW] (default=0 ; min=0 ; max=1) */~%# LED                      = 25, /**< LED On/Off [RW] (default=0 ; min=0 ; max=7) */~%# D_GAIN    				 = 27, /**< D Gain [RW] (default=0 ; min=0 ; max=254) */~%# I_GAIN      			 = 28, /**< I Gain [RW] (default=0 ; min=0 ; max=254) */~%# P_GAIN    				 = 29, /**< P Gain [RW] (default=32 ; min=0 ; max=254) */~%# GOAL_POSITION            = 30, /**< Goal Position [RW] (min=0 ; max=1023) */~%# GOAL_SPEED               = 32, /**< Goal Speed [RW] (min=0 ; max=2047) */~%# GOAL_TORQUE 		     = 35, /**< Goal Torque [RW] (min=0 ; max=1023) */~%# PRESENT_POSITION         = 37, /**< Current Position [R] */~%# PRESENT_SPEED            = 39, /**< Current Speed [R] */~%# PRESENT_LOAD             = 41, /**< Current Load [R] */~%# PRESENT_VOLTAGE          = 45, /**< Current Voltage [R] */~%# PRESENT_TEMPERATURE      = 46, /**< Present temperature [R] */~%# REGISTERED_INSTRUCTION   = 47, /**< Registered Instruction [R] (default=0) */~%# MOVING                   = 49, /**< Moving [R] (default=0) */~%# HARDWARE_ERROR           = 50, /**< Hardware error status [R] (default=0) */~%# PUNCH                    = 51  /**< Punch [RW] (default=32 ; min=0 ; max=1023) */~%uint8 address~%int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XL320-request>))
  (cl:+ 0
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XL320-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XL320-request
    (cl:cons ':type (type msg))
    (cl:cons ':motor (motor msg))
    (cl:cons ':address (address msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude XL320-response.msg.html

(cl:defclass <XL320-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass XL320-response (<XL320-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XL320-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XL320-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<XL320-response> is deprecated: use roboy_middleware_msgs-srv:XL320-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <XL320-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:value-val is deprecated.  Use roboy_middleware_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XL320-response>) ostream)
  "Serializes a message object of type '<XL320-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XL320-response>) istream)
  "Deserializes a message object of type '<XL320-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XL320-response>)))
  "Returns string type for a service object of type '<XL320-response>"
  "roboy_middleware_msgs/XL320Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XL320-response)))
  "Returns string type for a service object of type 'XL320-response"
  "roboy_middleware_msgs/XL320Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XL320-response>)))
  "Returns md5sum for a message object of type '<XL320-response>"
  "2df206e3bbdc218ed0e86d48777a9fbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XL320-response)))
  "Returns md5sum for a message object of type 'XL320-response"
  "2df206e3bbdc218ed0e86d48777a9fbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XL320-response>)))
  "Returns full string definition for message of type '<XL320-response>"
  (cl:format cl:nil "int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XL320-response)))
  "Returns full string definition for message of type 'XL320-response"
  (cl:format cl:nil "int16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XL320-response>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XL320-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XL320-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XL320)))
  'XL320-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XL320)))
  'XL320-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XL320)))
  "Returns string type for a service object of type '<XL320>"
  "roboy_middleware_msgs/XL320")