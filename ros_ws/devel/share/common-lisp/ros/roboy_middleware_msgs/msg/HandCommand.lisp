; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-msg)


;//! \htmlinclude HandCommand.msg.html

(cl:defclass <HandCommand> (roslisp-msg-protocol:ros-message)
  ((hand_id
    :reader hand_id
    :initarg :hand_id
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (lock_finger_ids
    :reader lock_finger_ids
    :initarg :lock_finger_ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass HandCommand (<HandCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-msg:<HandCommand> is deprecated: use roboy_middleware_msgs-msg:HandCommand instead.")))

(cl:ensure-generic-function 'hand_id-val :lambda-list '(m))
(cl:defmethod hand_id-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:hand_id-val is deprecated.  Use roboy_middleware_msgs-msg:hand_id instead.")
  (hand_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:command-val is deprecated.  Use roboy_middleware_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'lock_finger_ids-val :lambda-list '(m))
(cl:defmethod lock_finger_ids-val ((m <HandCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-msg:lock_finger_ids-val is deprecated.  Use roboy_middleware_msgs-msg:lock_finger_ids instead.")
  (lock_finger_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandCommand>) ostream)
  "Serializes a message object of type '<HandCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lock_finger_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'lock_finger_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandCommand>) istream)
  "Deserializes a message object of type '<HandCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lock_finger_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lock_finger_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandCommand>)))
  "Returns string type for a message object of type '<HandCommand>"
  "roboy_middleware_msgs/HandCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandCommand)))
  "Returns string type for a message object of type 'HandCommand"
  "roboy_middleware_msgs/HandCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandCommand>)))
  "Returns md5sum for a message object of type '<HandCommand>"
  "1c60b9fe10716361cf8f123e26a189b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandCommand)))
  "Returns md5sum for a message object of type 'HandCommand"
  "1c60b9fe10716361cf8f123e26a189b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandCommand>)))
  "Returns full string definition for message of type '<HandCommand>"
  (cl:format cl:nil "uint8 hand_id~%uint8 command~%uint8[] lock_finger_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandCommand)))
  "Returns full string definition for message of type 'HandCommand"
  (cl:format cl:nil "uint8 hand_id~%uint8 command~%uint8[] lock_finger_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandCommand>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lock_finger_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'HandCommand
    (cl:cons ':hand_id (hand_id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':lock_finger_ids (lock_finger_ids msg))
))
