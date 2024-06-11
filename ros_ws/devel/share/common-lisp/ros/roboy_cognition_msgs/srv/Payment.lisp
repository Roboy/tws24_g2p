; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-srv)


;//! \htmlinclude Payment-request.msg.html

(cl:defclass <Payment-request> (roslisp-msg-protocol:ros-message)
  ((price
    :reader price
    :initarg :price
    :type cl:fixnum
    :initform 0)
   (payment_option
    :reader payment_option
    :initarg :payment_option
    :type cl:fixnum
    :initform 0)
   (flavors
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

(cl:defclass Payment-request (<Payment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Payment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Payment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<Payment-request> is deprecated: use roboy_cognition_msgs-srv:Payment-request instead.")))

(cl:ensure-generic-function 'price-val :lambda-list '(m))
(cl:defmethod price-val ((m <Payment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:price-val is deprecated.  Use roboy_cognition_msgs-srv:price instead.")
  (price m))

(cl:ensure-generic-function 'payment_option-val :lambda-list '(m))
(cl:defmethod payment_option-val ((m <Payment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:payment_option-val is deprecated.  Use roboy_cognition_msgs-srv:payment_option instead.")
  (payment_option m))

(cl:ensure-generic-function 'flavors-val :lambda-list '(m))
(cl:defmethod flavors-val ((m <Payment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:flavors-val is deprecated.  Use roboy_cognition_msgs-srv:flavors instead.")
  (flavors m))

(cl:ensure-generic-function 'scoops-val :lambda-list '(m))
(cl:defmethod scoops-val ((m <Payment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:scoops-val is deprecated.  Use roboy_cognition_msgs-srv:scoops instead.")
  (scoops m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Payment-request>) ostream)
  "Serializes a message object of type '<Payment-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'price)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'price)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payment_option)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Payment-request>) istream)
  "Deserializes a message object of type '<Payment-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'price)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'price)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payment_option)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Payment-request>)))
  "Returns string type for a service object of type '<Payment-request>"
  "roboy_cognition_msgs/PaymentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Payment-request)))
  "Returns string type for a service object of type 'Payment-request"
  "roboy_cognition_msgs/PaymentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Payment-request>)))
  "Returns md5sum for a message object of type '<Payment-request>"
  "18ef32c43804b67a38f74684445bd22f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Payment-request)))
  "Returns md5sum for a message object of type 'Payment-request"
  "18ef32c43804b67a38f74684445bd22f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Payment-request>)))
  "Returns full string definition for message of type '<Payment-request>"
  (cl:format cl:nil "uint16 price~%uint8 payment_option~%string[] flavors~%int32[] scoops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Payment-request)))
  "Returns full string definition for message of type 'Payment-request"
  (cl:format cl:nil "uint16 price~%uint8 payment_option~%string[] flavors~%int32[] scoops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Payment-request>))
  (cl:+ 0
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flavors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scoops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Payment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Payment-request
    (cl:cons ':price (price msg))
    (cl:cons ':payment_option (payment_option msg))
    (cl:cons ':flavors (flavors msg))
    (cl:cons ':scoops (scoops msg))
))
;//! \htmlinclude Payment-response.msg.html

(cl:defclass <Payment-response> (roslisp-msg-protocol:ros-message)
  ((amount_paid
    :reader amount_paid
    :initarg :amount_paid
    :type cl:fixnum
    :initform 0)
   (customer_name
    :reader customer_name
    :initarg :customer_name
    :type cl:string
    :initform "")
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass Payment-response (<Payment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Payment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Payment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-srv:<Payment-response> is deprecated: use roboy_cognition_msgs-srv:Payment-response instead.")))

(cl:ensure-generic-function 'amount_paid-val :lambda-list '(m))
(cl:defmethod amount_paid-val ((m <Payment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:amount_paid-val is deprecated.  Use roboy_cognition_msgs-srv:amount_paid instead.")
  (amount_paid m))

(cl:ensure-generic-function 'customer_name-val :lambda-list '(m))
(cl:defmethod customer_name-val ((m <Payment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:customer_name-val is deprecated.  Use roboy_cognition_msgs-srv:customer_name instead.")
  (customer_name m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Payment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-srv:error_message-val is deprecated.  Use roboy_cognition_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Payment-response>) ostream)
  "Serializes a message object of type '<Payment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount_paid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount_paid)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'customer_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'customer_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Payment-response>) istream)
  "Deserializes a message object of type '<Payment-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'amount_paid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'amount_paid)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'customer_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'customer_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Payment-response>)))
  "Returns string type for a service object of type '<Payment-response>"
  "roboy_cognition_msgs/PaymentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Payment-response)))
  "Returns string type for a service object of type 'Payment-response"
  "roboy_cognition_msgs/PaymentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Payment-response>)))
  "Returns md5sum for a message object of type '<Payment-response>"
  "18ef32c43804b67a38f74684445bd22f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Payment-response)))
  "Returns md5sum for a message object of type 'Payment-response"
  "18ef32c43804b67a38f74684445bd22f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Payment-response>)))
  "Returns full string definition for message of type '<Payment-response>"
  (cl:format cl:nil "uint16 amount_paid~%string customer_name~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Payment-response)))
  "Returns full string definition for message of type 'Payment-response"
  (cl:format cl:nil "uint16 amount_paid~%string customer_name~%string error_message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Payment-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'customer_name))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Payment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Payment-response
    (cl:cons ':amount_paid (amount_paid msg))
    (cl:cons ':customer_name (customer_name msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Payment)))
  'Payment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Payment)))
  'Payment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Payment)))
  "Returns string type for a service object of type '<Payment>"
  "roboy_cognition_msgs/Payment")