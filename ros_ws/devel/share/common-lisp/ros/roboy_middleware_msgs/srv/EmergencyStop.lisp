; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude EmergencyStop-request.msg.html

(cl:defclass <EmergencyStop-request> (roslisp-msg-protocol:ros-message)
  ((all
    :reader all
    :initarg :all
    :type cl:boolean
    :initform cl:nil)
   (id_list
    :reader id_list
    :initarg :id_list
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass EmergencyStop-request (<EmergencyStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<EmergencyStop-request> is deprecated: use roboy_middleware_msgs-srv:EmergencyStop-request instead.")))

(cl:ensure-generic-function 'all-val :lambda-list '(m))
(cl:defmethod all-val ((m <EmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:all-val is deprecated.  Use roboy_middleware_msgs-srv:all instead.")
  (all m))

(cl:ensure-generic-function 'id_list-val :lambda-list '(m))
(cl:defmethod id_list-val ((m <EmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:id_list-val is deprecated.  Use roboy_middleware_msgs-srv:id_list instead.")
  (id_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-request>) ostream)
  "Serializes a message object of type '<EmergencyStop-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'all) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-request>) istream)
  "Deserializes a message object of type '<EmergencyStop-request>"
    (cl:setf (cl:slot-value msg 'all) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-request>)))
  "Returns string type for a service object of type '<EmergencyStop-request>"
  "roboy_middleware_msgs/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-request)))
  "Returns string type for a service object of type 'EmergencyStop-request"
  "roboy_middleware_msgs/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-request>)))
  "Returns md5sum for a message object of type '<EmergencyStop-request>"
  "769d67555bcace7e21068dd8a08c7e86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-request)))
  "Returns md5sum for a message object of type 'EmergencyStop-request"
  "769d67555bcace7e21068dd8a08c7e86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-request>)))
  "Returns full string definition for message of type '<EmergencyStop-request>"
  (cl:format cl:nil "bool all~%int8[] id_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-request)))
  "Returns full string definition for message of type 'EmergencyStop-request"
  (cl:format cl:nil "bool all~%int8[] id_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-request
    (cl:cons ':all (all msg))
    (cl:cons ':id_list (id_list msg))
))
;//! \htmlinclude EmergencyStop-response.msg.html

(cl:defclass <EmergencyStop-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector roboy_middleware_msgs-msg:ControllerState)
   :initform (cl:make-array 0 :element-type 'roboy_middleware_msgs-msg:ControllerState :initial-element (cl:make-instance 'roboy_middleware_msgs-msg:ControllerState))))
)

(cl:defclass EmergencyStop-response (<EmergencyStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<EmergencyStop-response> is deprecated: use roboy_middleware_msgs-srv:EmergencyStop-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <EmergencyStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:states-val is deprecated.  Use roboy_middleware_msgs-srv:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-response>) ostream)
  "Serializes a message object of type '<EmergencyStop-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-response>) istream)
  "Deserializes a message object of type '<EmergencyStop-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_middleware_msgs-msg:ControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-response>)))
  "Returns string type for a service object of type '<EmergencyStop-response>"
  "roboy_middleware_msgs/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-response)))
  "Returns string type for a service object of type 'EmergencyStop-response"
  "roboy_middleware_msgs/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-response>)))
  "Returns md5sum for a message object of type '<EmergencyStop-response>"
  "769d67555bcace7e21068dd8a08c7e86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-response)))
  "Returns md5sum for a message object of type 'EmergencyStop-response"
  "769d67555bcace7e21068dd8a08c7e86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-response>)))
  "Returns full string definition for message of type '<EmergencyStop-response>"
  (cl:format cl:nil "ControllerState[] states~%~%~%================================================================================~%MSG: roboy_middleware_msgs/ControllerState~%int32 id~%int8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-response)))
  "Returns full string definition for message of type 'EmergencyStop-response"
  (cl:format cl:nil "ControllerState[] states~%~%~%================================================================================~%MSG: roboy_middleware_msgs/ControllerState~%int32 id~%int8 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-response
    (cl:cons ':states (states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop)))
  "Returns string type for a service object of type '<EmergencyStop>"
  "roboy_middleware_msgs/EmergencyStop")