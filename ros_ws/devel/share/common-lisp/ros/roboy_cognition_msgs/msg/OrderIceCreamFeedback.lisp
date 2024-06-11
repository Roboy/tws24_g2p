; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-msg)


;//! \htmlinclude OrderIceCreamFeedback.msg.html

(cl:defclass <OrderIceCreamFeedback> (roslisp-msg-protocol:ros-message)
  ((finished_scoops
    :reader finished_scoops
    :initarg :finished_scoops
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass OrderIceCreamFeedback (<OrderIceCreamFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrderIceCreamFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrderIceCreamFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-msg:<OrderIceCreamFeedback> is deprecated: use roboy_cognition_msgs-msg:OrderIceCreamFeedback instead.")))

(cl:ensure-generic-function 'finished_scoops-val :lambda-list '(m))
(cl:defmethod finished_scoops-val ((m <OrderIceCreamFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:finished_scoops-val is deprecated.  Use roboy_cognition_msgs-msg:finished_scoops instead.")
  (finished_scoops m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <OrderIceCreamFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:status_message-val is deprecated.  Use roboy_cognition_msgs-msg:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrderIceCreamFeedback>) ostream)
  "Serializes a message object of type '<OrderIceCreamFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'finished_scoops))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'finished_scoops))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrderIceCreamFeedback>) istream)
  "Deserializes a message object of type '<OrderIceCreamFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'finished_scoops) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'finished_scoops)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrderIceCreamFeedback>)))
  "Returns string type for a message object of type '<OrderIceCreamFeedback>"
  "roboy_cognition_msgs/OrderIceCreamFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrderIceCreamFeedback)))
  "Returns string type for a message object of type 'OrderIceCreamFeedback"
  "roboy_cognition_msgs/OrderIceCreamFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrderIceCreamFeedback>)))
  "Returns md5sum for a message object of type '<OrderIceCreamFeedback>"
  "84132ae12f784d01b8d8c41f0054500b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrderIceCreamFeedback)))
  "Returns md5sum for a message object of type 'OrderIceCreamFeedback"
  "84132ae12f784d01b8d8c41f0054500b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrderIceCreamFeedback>)))
  "Returns full string definition for message of type '<OrderIceCreamFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# for every finished scoop, feedback is supplied in form of another boolean that is appended to finished_scoops~%# status messages can be \"more time\" ~%bool[] finished_scoops ~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrderIceCreamFeedback)))
  "Returns full string definition for message of type 'OrderIceCreamFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# for every finished scoop, feedback is supplied in form of another boolean that is appended to finished_scoops~%# status messages can be \"more time\" ~%bool[] finished_scoops ~%string status_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrderIceCreamFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'finished_scoops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrderIceCreamFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'OrderIceCreamFeedback
    (cl:cons ':finished_scoops (finished_scoops msg))
    (cl:cons ':status_message (status_message msg))
))
