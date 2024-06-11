; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-srv)


;//! \htmlinclude GymGoal-request.msg.html

(cl:defclass <GymGoal-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GymGoal-request (<GymGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymGoal-request> is deprecated: use roboy_simulation_msgs-srv:GymGoal-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymGoal-request>) ostream)
  "Serializes a message object of type '<GymGoal-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymGoal-request>) istream)
  "Deserializes a message object of type '<GymGoal-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymGoal-request>)))
  "Returns string type for a service object of type '<GymGoal-request>"
  "roboy_simulation_msgs/GymGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymGoal-request)))
  "Returns string type for a service object of type 'GymGoal-request"
  "roboy_simulation_msgs/GymGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymGoal-request>)))
  "Returns md5sum for a message object of type '<GymGoal-request>"
  "ab94b9bcaaa12f74def43e4b33992df1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymGoal-request)))
  "Returns md5sum for a message object of type 'GymGoal-request"
  "ab94b9bcaaa12f74def43e4b33992df1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymGoal-request>)))
  "Returns full string definition for message of type '<GymGoal-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymGoal-request)))
  "Returns full string definition for message of type 'GymGoal-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymGoal-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GymGoal-request
))
;//! \htmlinclude GymGoal-response.msg.html

(cl:defclass <GymGoal-response> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GymGoal-response (<GymGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GymGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GymGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<GymGoal-response> is deprecated: use roboy_simulation_msgs-srv:GymGoal-response instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <GymGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:q-val is deprecated.  Use roboy_simulation_msgs-srv:q instead.")
  (q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GymGoal-response>) ostream)
  "Serializes a message object of type '<GymGoal-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'q))))
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
   (cl:slot-value msg 'q))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GymGoal-response>) istream)
  "Deserializes a message object of type '<GymGoal-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'q) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'q)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GymGoal-response>)))
  "Returns string type for a service object of type '<GymGoal-response>"
  "roboy_simulation_msgs/GymGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymGoal-response)))
  "Returns string type for a service object of type 'GymGoal-response"
  "roboy_simulation_msgs/GymGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GymGoal-response>)))
  "Returns md5sum for a message object of type '<GymGoal-response>"
  "ab94b9bcaaa12f74def43e4b33992df1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GymGoal-response)))
  "Returns md5sum for a message object of type 'GymGoal-response"
  "ab94b9bcaaa12f74def43e4b33992df1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GymGoal-response>)))
  "Returns full string definition for message of type '<GymGoal-response>"
  (cl:format cl:nil "float64[] q~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GymGoal-response)))
  "Returns full string definition for message of type 'GymGoal-response"
  (cl:format cl:nil "float64[] q~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GymGoal-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GymGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GymGoal-response
    (cl:cons ':q (q msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GymGoal)))
  'GymGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GymGoal)))
  'GymGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GymGoal)))
  "Returns string type for a service object of type '<GymGoal>"
  "roboy_simulation_msgs/GymGoal")