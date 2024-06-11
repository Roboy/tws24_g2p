; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude StartRecordTrajectory.msg.html

(cl:defclass <StartRecordTrajectory> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (body_parts
    :reader body_parts
    :initarg :body_parts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (id_list
    :reader id_list
    :initarg :id_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass StartRecordTrajectory (<StartRecordTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartRecordTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartRecordTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<StartRecordTrajectory> is deprecated: use roboy_control_msgs-msg:StartRecordTrajectory instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <StartRecordTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:name-val is deprecated.  Use roboy_control_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'body_parts-val :lambda-list '(m))
(cl:defmethod body_parts-val ((m <StartRecordTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:body_parts-val is deprecated.  Use roboy_control_msgs-msg:body_parts instead.")
  (body_parts m))

(cl:ensure-generic-function 'id_list-val :lambda-list '(m))
(cl:defmethod id_list-val ((m <StartRecordTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:id_list-val is deprecated.  Use roboy_control_msgs-msg:id_list instead.")
  (id_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartRecordTrajectory>) ostream)
  "Serializes a message object of type '<StartRecordTrajectory>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'body_parts))))
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
   (cl:slot-value msg 'body_parts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'id_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartRecordTrajectory>) istream)
  "Deserializes a message object of type '<StartRecordTrajectory>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'body_parts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'body_parts)))
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
  (cl:setf (cl:slot-value msg 'id_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartRecordTrajectory>)))
  "Returns string type for a message object of type '<StartRecordTrajectory>"
  "roboy_control_msgs/StartRecordTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRecordTrajectory)))
  "Returns string type for a message object of type 'StartRecordTrajectory"
  "roboy_control_msgs/StartRecordTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartRecordTrajectory>)))
  "Returns md5sum for a message object of type '<StartRecordTrajectory>"
  "87f4ca9ce44f7e39ae96c9a7bde4f0da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartRecordTrajectory)))
  "Returns md5sum for a message object of type 'StartRecordTrajectory"
  "87f4ca9ce44f7e39ae96c9a7bde4f0da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartRecordTrajectory>)))
  "Returns full string definition for message of type '<StartRecordTrajectory>"
  (cl:format cl:nil "string name~%string[] body_parts # to record~%int8[] id_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartRecordTrajectory)))
  "Returns full string definition for message of type 'StartRecordTrajectory"
  (cl:format cl:nil "string name~%string[] body_parts # to record~%int8[] id_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartRecordTrajectory>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'body_parts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartRecordTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'StartRecordTrajectory
    (cl:cons ':name (name msg))
    (cl:cons ':body_parts (body_parts msg))
    (cl:cons ':id_list (id_list msg))
))
