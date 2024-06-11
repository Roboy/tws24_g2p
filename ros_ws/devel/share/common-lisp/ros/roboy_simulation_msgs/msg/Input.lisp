; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude Input.msg.html

(cl:defclass <Input> (roslisp-msg-protocol:ros-message)
  ((roboy_id
    :reader roboy_id
    :initarg :roboy_id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (input_voltage
    :reader input_voltage
    :initarg :input_voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass Input (<Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<Input> is deprecated: use roboy_simulation_msgs-msg:Input instead.")))

(cl:ensure-generic-function 'roboy_id-val :lambda-list '(m))
(cl:defmethod roboy_id-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:roboy_id-val is deprecated.  Use roboy_simulation_msgs-msg:roboy_id instead.")
  (roboy_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:name-val is deprecated.  Use roboy_simulation_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'input_voltage-val :lambda-list '(m))
(cl:defmethod input_voltage-val ((m <Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:input_voltage-val is deprecated.  Use roboy_simulation_msgs-msg:input_voltage instead.")
  (input_voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Input>) ostream)
  "Serializes a message object of type '<Input>"
  (cl:let* ((signed (cl:slot-value msg 'roboy_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Input>) istream)
  "Deserializes a message object of type '<Input>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roboy_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_voltage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Input>)))
  "Returns string type for a message object of type '<Input>"
  "roboy_simulation_msgs/Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Input)))
  "Returns string type for a message object of type 'Input"
  "roboy_simulation_msgs/Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Input>)))
  "Returns md5sum for a message object of type '<Input>"
  "d8cd56c18e35268c1e5cd4abb835e711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Input)))
  "Returns md5sum for a message object of type 'Input"
  "d8cd56c18e35268c1e5cd4abb835e711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Input>)))
  "Returns full string definition for message of type '<Input>"
  (cl:format cl:nil "int32 roboy_id~%string name~%float32 input_voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Input)))
  "Returns full string definition for message of type 'Input"
  (cl:format cl:nil "int32 roboy_id~%string name~%float32 input_voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Input>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Input>))
  "Converts a ROS message object to a list"
  (cl:list 'Input
    (cl:cons ':roboy_id (roboy_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':input_voltage (input_voltage msg))
))
