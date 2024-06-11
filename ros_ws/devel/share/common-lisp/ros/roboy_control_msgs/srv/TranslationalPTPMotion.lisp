; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-srv)


;//! \htmlinclude TranslationalPTPMotion-request.msg.html

(cl:defclass <TranslationalPTPMotion-request> (roslisp-msg-protocol:ros-message)
  ((start_point
    :reader start_point
    :initarg :start_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end_point
    :reader end_point
    :initarg :end_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass TranslationalPTPMotion-request (<TranslationalPTPMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TranslationalPTPMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TranslationalPTPMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<TranslationalPTPMotion-request> is deprecated: use roboy_control_msgs-srv:TranslationalPTPMotion-request instead.")))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <TranslationalPTPMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:start_point-val is deprecated.  Use roboy_control_msgs-srv:start_point instead.")
  (start_point m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <TranslationalPTPMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:end_point-val is deprecated.  Use roboy_control_msgs-srv:end_point instead.")
  (end_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TranslationalPTPMotion-request>) ostream)
  "Serializes a message object of type '<TranslationalPTPMotion-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TranslationalPTPMotion-request>) istream)
  "Deserializes a message object of type '<TranslationalPTPMotion-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TranslationalPTPMotion-request>)))
  "Returns string type for a service object of type '<TranslationalPTPMotion-request>"
  "roboy_control_msgs/TranslationalPTPMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslationalPTPMotion-request)))
  "Returns string type for a service object of type 'TranslationalPTPMotion-request"
  "roboy_control_msgs/TranslationalPTPMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TranslationalPTPMotion-request>)))
  "Returns md5sum for a message object of type '<TranslationalPTPMotion-request>"
  "98431afc4e02d00f0c1c221ab989e445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TranslationalPTPMotion-request)))
  "Returns md5sum for a message object of type 'TranslationalPTPMotion-request"
  "98431afc4e02d00f0c1c221ab989e445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TranslationalPTPMotion-request>)))
  "Returns full string definition for message of type '<TranslationalPTPMotion-request>"
  (cl:format cl:nil "geometry_msgs/Point start_point~%geometry_msgs/Point end_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TranslationalPTPMotion-request)))
  "Returns full string definition for message of type 'TranslationalPTPMotion-request"
  (cl:format cl:nil "geometry_msgs/Point start_point~%geometry_msgs/Point end_point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TranslationalPTPMotion-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TranslationalPTPMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TranslationalPTPMotion-request
    (cl:cons ':start_point (start_point msg))
    (cl:cons ':end_point (end_point msg))
))
;//! \htmlinclude TranslationalPTPMotion-response.msg.html

(cl:defclass <TranslationalPTPMotion-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TranslationalPTPMotion-response (<TranslationalPTPMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TranslationalPTPMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TranslationalPTPMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<TranslationalPTPMotion-response> is deprecated: use roboy_control_msgs-srv:TranslationalPTPMotion-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TranslationalPTPMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:success-val is deprecated.  Use roboy_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TranslationalPTPMotion-response>) ostream)
  "Serializes a message object of type '<TranslationalPTPMotion-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TranslationalPTPMotion-response>) istream)
  "Deserializes a message object of type '<TranslationalPTPMotion-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TranslationalPTPMotion-response>)))
  "Returns string type for a service object of type '<TranslationalPTPMotion-response>"
  "roboy_control_msgs/TranslationalPTPMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslationalPTPMotion-response)))
  "Returns string type for a service object of type 'TranslationalPTPMotion-response"
  "roboy_control_msgs/TranslationalPTPMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TranslationalPTPMotion-response>)))
  "Returns md5sum for a message object of type '<TranslationalPTPMotion-response>"
  "98431afc4e02d00f0c1c221ab989e445")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TranslationalPTPMotion-response)))
  "Returns md5sum for a message object of type 'TranslationalPTPMotion-response"
  "98431afc4e02d00f0c1c221ab989e445")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TranslationalPTPMotion-response>)))
  "Returns full string definition for message of type '<TranslationalPTPMotion-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TranslationalPTPMotion-response)))
  "Returns full string definition for message of type 'TranslationalPTPMotion-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TranslationalPTPMotion-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TranslationalPTPMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TranslationalPTPMotion-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TranslationalPTPMotion)))
  'TranslationalPTPMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TranslationalPTPMotion)))
  'TranslationalPTPMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TranslationalPTPMotion)))
  "Returns string type for a service object of type '<TranslationalPTPMotion>"
  "roboy_control_msgs/TranslationalPTPMotion")