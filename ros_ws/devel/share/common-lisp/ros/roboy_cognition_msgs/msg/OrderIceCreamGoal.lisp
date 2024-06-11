; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-msg)


;//! \htmlinclude OrderIceCreamGoal.msg.html

(cl:defclass <OrderIceCreamGoal> (roslisp-msg-protocol:ros-message)
  ((flavors
    :reader flavors
    :initarg :flavors
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (scoops
    :reader scoops
    :initarg :scoops
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass OrderIceCreamGoal (<OrderIceCreamGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrderIceCreamGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrderIceCreamGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-msg:<OrderIceCreamGoal> is deprecated: use roboy_cognition_msgs-msg:OrderIceCreamGoal instead.")))

(cl:ensure-generic-function 'flavors-val :lambda-list '(m))
(cl:defmethod flavors-val ((m <OrderIceCreamGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:flavors-val is deprecated.  Use roboy_cognition_msgs-msg:flavors instead.")
  (flavors m))

(cl:ensure-generic-function 'scoops-val :lambda-list '(m))
(cl:defmethod scoops-val ((m <OrderIceCreamGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:scoops-val is deprecated.  Use roboy_cognition_msgs-msg:scoops instead.")
  (scoops m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrderIceCreamGoal>) ostream)
  "Serializes a message object of type '<OrderIceCreamGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flavors))))
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
   (cl:slot-value msg 'flavors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scoops))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'scoops))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrderIceCreamGoal>) istream)
  "Deserializes a message object of type '<OrderIceCreamGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flavors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flavors)))
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
  (cl:setf (cl:slot-value msg 'scoops) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scoops)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrderIceCreamGoal>)))
  "Returns string type for a message object of type '<OrderIceCreamGoal>"
  "roboy_cognition_msgs/OrderIceCreamGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrderIceCreamGoal)))
  "Returns string type for a message object of type 'OrderIceCreamGoal"
  "roboy_cognition_msgs/OrderIceCreamGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrderIceCreamGoal>)))
  "Returns md5sum for a message object of type '<OrderIceCreamGoal>"
  "c1f1cb719f39dc24da6159a391bbf364")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrderIceCreamGoal)))
  "Returns md5sum for a message object of type 'OrderIceCreamGoal"
  "c1f1cb719f39dc24da6159a391bbf364")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrderIceCreamGoal>)))
  "Returns full string definition for message of type '<OrderIceCreamGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# luigi sends ice cream order~%# number of scoops at position i corresponds to flavor at position i~%string[] flavors~%int32[] scoops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrderIceCreamGoal)))
  "Returns full string definition for message of type 'OrderIceCreamGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# luigi sends ice cream order~%# number of scoops at position i corresponds to flavor at position i~%string[] flavors~%int32[] scoops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrderIceCreamGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flavors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scoops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrderIceCreamGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'OrderIceCreamGoal
    (cl:cons ':flavors (flavors msg))
    (cl:cons ':scoops (scoops msg))
))
