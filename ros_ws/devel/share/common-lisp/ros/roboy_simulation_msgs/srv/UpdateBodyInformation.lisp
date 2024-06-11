; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-srv)


;//! \htmlinclude UpdateBodyInformation-request.msg.html

(cl:defclass <UpdateBodyInformation-request> (roslisp-msg-protocol:ros-message)
  ((body_information
    :reader body_information
    :initarg :body_information
    :type roboy_simulation_msgs-msg:BodyInformation
    :initform (cl:make-instance 'roboy_simulation_msgs-msg:BodyInformation)))
)

(cl:defclass UpdateBodyInformation-request (<UpdateBodyInformation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateBodyInformation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateBodyInformation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<UpdateBodyInformation-request> is deprecated: use roboy_simulation_msgs-srv:UpdateBodyInformation-request instead.")))

(cl:ensure-generic-function 'body_information-val :lambda-list '(m))
(cl:defmethod body_information-val ((m <UpdateBodyInformation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:body_information-val is deprecated.  Use roboy_simulation_msgs-srv:body_information instead.")
  (body_information m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateBodyInformation-request>) ostream)
  "Serializes a message object of type '<UpdateBodyInformation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_information) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateBodyInformation-request>) istream)
  "Deserializes a message object of type '<UpdateBodyInformation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_information) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateBodyInformation-request>)))
  "Returns string type for a service object of type '<UpdateBodyInformation-request>"
  "roboy_simulation_msgs/UpdateBodyInformationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBodyInformation-request)))
  "Returns string type for a service object of type 'UpdateBodyInformation-request"
  "roboy_simulation_msgs/UpdateBodyInformationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateBodyInformation-request>)))
  "Returns md5sum for a message object of type '<UpdateBodyInformation-request>"
  "e428186c93531a8d1164969320286db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateBodyInformation-request)))
  "Returns md5sum for a message object of type 'UpdateBodyInformation-request"
  "e428186c93531a8d1164969320286db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateBodyInformation-request>)))
  "Returns full string definition for message of type '<UpdateBodyInformation-request>"
  (cl:format cl:nil "roboy_simulation_msgs/BodyInformation body_information~%~%================================================================================~%MSG: roboy_simulation_msgs/BodyInformation~%# list containing all links and some information like name, dimensions etc.~%roboy_simulation_msgs/LinkInformation[] link_information~%================================================================================~%MSG: roboy_simulation_msgs/LinkInformation~%# id of the link in the simulation~%int32 id~%# name of the link in the simulation~%string name~%# dimentions of the link~%geometry_msgs/Vector3 dimensions~%# initial pose of the link~%geometry_msgs/Pose init_pose~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateBodyInformation-request)))
  "Returns full string definition for message of type 'UpdateBodyInformation-request"
  (cl:format cl:nil "roboy_simulation_msgs/BodyInformation body_information~%~%================================================================================~%MSG: roboy_simulation_msgs/BodyInformation~%# list containing all links and some information like name, dimensions etc.~%roboy_simulation_msgs/LinkInformation[] link_information~%================================================================================~%MSG: roboy_simulation_msgs/LinkInformation~%# id of the link in the simulation~%int32 id~%# name of the link in the simulation~%string name~%# dimentions of the link~%geometry_msgs/Vector3 dimensions~%# initial pose of the link~%geometry_msgs/Pose init_pose~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateBodyInformation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_information))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateBodyInformation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateBodyInformation-request
    (cl:cons ':body_information (body_information msg))
))
;//! \htmlinclude UpdateBodyInformation-response.msg.html

(cl:defclass <UpdateBodyInformation-response> (roslisp-msg-protocol:ros-message)
  ((ret_code
    :reader ret_code
    :initarg :ret_code
    :type cl:fixnum
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateBodyInformation-response (<UpdateBodyInformation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateBodyInformation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateBodyInformation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-srv:<UpdateBodyInformation-response> is deprecated: use roboy_simulation_msgs-srv:UpdateBodyInformation-response instead.")))

(cl:ensure-generic-function 'ret_code-val :lambda-list '(m))
(cl:defmethod ret_code-val ((m <UpdateBodyInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:ret_code-val is deprecated.  Use roboy_simulation_msgs-srv:ret_code instead.")
  (ret_code m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <UpdateBodyInformation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-srv:msg-val is deprecated.  Use roboy_simulation_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateBodyInformation-response>) ostream)
  "Serializes a message object of type '<UpdateBodyInformation-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateBodyInformation-response>) istream)
  "Deserializes a message object of type '<UpdateBodyInformation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateBodyInformation-response>)))
  "Returns string type for a service object of type '<UpdateBodyInformation-response>"
  "roboy_simulation_msgs/UpdateBodyInformationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBodyInformation-response)))
  "Returns string type for a service object of type 'UpdateBodyInformation-response"
  "roboy_simulation_msgs/UpdateBodyInformationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateBodyInformation-response>)))
  "Returns md5sum for a message object of type '<UpdateBodyInformation-response>"
  "e428186c93531a8d1164969320286db9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateBodyInformation-response)))
  "Returns md5sum for a message object of type 'UpdateBodyInformation-response"
  "e428186c93531a8d1164969320286db9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateBodyInformation-response>)))
  "Returns full string definition for message of type '<UpdateBodyInformation-response>"
  (cl:format cl:nil "int8 ret_code~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateBodyInformation-response)))
  "Returns full string definition for message of type 'UpdateBodyInformation-response"
  (cl:format cl:nil "int8 ret_code~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateBodyInformation-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateBodyInformation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateBodyInformation-response
    (cl:cons ':ret_code (ret_code msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateBodyInformation)))
  'UpdateBodyInformation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateBodyInformation)))
  'UpdateBodyInformation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateBodyInformation)))
  "Returns string type for a service object of type '<UpdateBodyInformation>"
  "roboy_simulation_msgs/UpdateBodyInformation")