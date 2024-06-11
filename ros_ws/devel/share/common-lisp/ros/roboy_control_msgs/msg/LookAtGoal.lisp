; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude LookAtGoal.msg.html

(cl:defclass <LookAtGoal> (roslisp-msg-protocol:ros-message)
  ((endEffector
    :reader endEffector
    :initarg :endEffector
    :type cl:string
    :initform "")
   (yaw_joint_index
    :reader yaw_joint_index
    :initarg :yaw_joint_index
    :type cl:integer
    :initform 0)
   (pitch_joint_index
    :reader pitch_joint_index
    :initarg :pitch_joint_index
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (root_frame
    :reader root_frame
    :initarg :root_frame
    :type cl:string
    :initform "")
   (target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (sendToRealHardware
    :reader sendToRealHardware
    :initarg :sendToRealHardware
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0)
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass LookAtGoal (<LookAtGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LookAtGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LookAtGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<LookAtGoal> is deprecated: use roboy_control_msgs-msg:LookAtGoal instead.")))

(cl:ensure-generic-function 'endEffector-val :lambda-list '(m))
(cl:defmethod endEffector-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:endEffector-val is deprecated.  Use roboy_control_msgs-msg:endEffector instead.")
  (endEffector m))

(cl:ensure-generic-function 'yaw_joint_index-val :lambda-list '(m))
(cl:defmethod yaw_joint_index-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:yaw_joint_index-val is deprecated.  Use roboy_control_msgs-msg:yaw_joint_index instead.")
  (yaw_joint_index m))

(cl:ensure-generic-function 'pitch_joint_index-val :lambda-list '(m))
(cl:defmethod pitch_joint_index-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:pitch_joint_index-val is deprecated.  Use roboy_control_msgs-msg:pitch_joint_index instead.")
  (pitch_joint_index m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:type-val is deprecated.  Use roboy_control_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:point-val is deprecated.  Use roboy_control_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'root_frame-val :lambda-list '(m))
(cl:defmethod root_frame-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:root_frame-val is deprecated.  Use roboy_control_msgs-msg:root_frame instead.")
  (root_frame m))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:target_frame-val is deprecated.  Use roboy_control_msgs-msg:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'sendToRealHardware-val :lambda-list '(m))
(cl:defmethod sendToRealHardware-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:sendToRealHardware-val is deprecated.  Use roboy_control_msgs-msg:sendToRealHardware instead.")
  (sendToRealHardware m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:timeout-val is deprecated.  Use roboy_control_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <LookAtGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:tolerance-val is deprecated.  Use roboy_control_msgs-msg:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LookAtGoal>) ostream)
  "Serializes a message object of type '<LookAtGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'endEffector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'endEffector))
  (cl:let* ((signed (cl:slot-value msg 'yaw_joint_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch_joint_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'root_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'root_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sendToRealHardware) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LookAtGoal>) istream)
  "Deserializes a message object of type '<LookAtGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endEffector) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'endEffector) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_joint_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch_joint_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'root_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'root_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'sendToRealHardware) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LookAtGoal>)))
  "Returns string type for a message object of type '<LookAtGoal>"
  "roboy_control_msgs/LookAtGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LookAtGoal)))
  "Returns string type for a message object of type 'LookAtGoal"
  "roboy_control_msgs/LookAtGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LookAtGoal>)))
  "Returns md5sum for a message object of type '<LookAtGoal>"
  "7f48da693a0e6a39c4c3e11abc6ed7e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LookAtGoal)))
  "Returns md5sum for a message object of type 'LookAtGoal"
  "7f48da693a0e6a39c4c3e11abc6ed7e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LookAtGoal>)))
  "Returns full string definition for message of type '<LookAtGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string endEffector~%int32 yaw_joint_index~%int32 pitch_joint_index~%# 0: point in world frame~%# 1: target frame relative to root_frame~%# 2: target frame relative to root_frame single shot~%int32 type~%geometry_msgs/Vector3 point~%string root_frame~%string target_frame~%bool sendToRealHardware~%int32 timeout~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LookAtGoal)))
  "Returns full string definition for message of type 'LookAtGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string endEffector~%int32 yaw_joint_index~%int32 pitch_joint_index~%# 0: point in world frame~%# 1: target frame relative to root_frame~%# 2: target frame relative to root_frame single shot~%int32 type~%geometry_msgs/Vector3 point~%string root_frame~%string target_frame~%bool sendToRealHardware~%int32 timeout~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LookAtGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'endEffector))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4 (cl:length (cl:slot-value msg 'root_frame))
     4 (cl:length (cl:slot-value msg 'target_frame))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LookAtGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LookAtGoal
    (cl:cons ':endEffector (endEffector msg))
    (cl:cons ':yaw_joint_index (yaw_joint_index msg))
    (cl:cons ':pitch_joint_index (pitch_joint_index msg))
    (cl:cons ':type (type msg))
    (cl:cons ':point (point msg))
    (cl:cons ':root_frame (root_frame msg))
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':sendToRealHardware (sendToRealHardware msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':tolerance (tolerance msg))
))
