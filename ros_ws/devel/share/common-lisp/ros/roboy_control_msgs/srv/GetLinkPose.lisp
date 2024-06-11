; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-srv)


;//! \htmlinclude GetLinkPose-request.msg.html

(cl:defclass <GetLinkPose-request> (roslisp-msg-protocol:ros-message)
  ((link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetLinkPose-request (<GetLinkPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLinkPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLinkPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<GetLinkPose-request> is deprecated: use roboy_control_msgs-srv:GetLinkPose-request instead.")))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <GetLinkPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:link_name-val is deprecated.  Use roboy_control_msgs-srv:link_name instead.")
  (link_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLinkPose-request>) ostream)
  "Serializes a message object of type '<GetLinkPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLinkPose-request>) istream)
  "Deserializes a message object of type '<GetLinkPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLinkPose-request>)))
  "Returns string type for a service object of type '<GetLinkPose-request>"
  "roboy_control_msgs/GetLinkPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkPose-request)))
  "Returns string type for a service object of type 'GetLinkPose-request"
  "roboy_control_msgs/GetLinkPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLinkPose-request>)))
  "Returns md5sum for a message object of type '<GetLinkPose-request>"
  "2e5fd53ebd98cb5347be4c4321e60048")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLinkPose-request)))
  "Returns md5sum for a message object of type 'GetLinkPose-request"
  "2e5fd53ebd98cb5347be4c4321e60048")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLinkPose-request>)))
  "Returns full string definition for message of type '<GetLinkPose-request>"
  (cl:format cl:nil "string link_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLinkPose-request)))
  "Returns full string definition for message of type 'GetLinkPose-request"
  (cl:format cl:nil "string link_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLinkPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'link_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLinkPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLinkPose-request
    (cl:cons ':link_name (link_name msg))
))
;//! \htmlinclude GetLinkPose-response.msg.html

(cl:defclass <GetLinkPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass GetLinkPose-response (<GetLinkPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLinkPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLinkPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-srv:<GetLinkPose-response> is deprecated: use roboy_control_msgs-srv:GetLinkPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetLinkPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-srv:pose-val is deprecated.  Use roboy_control_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLinkPose-response>) ostream)
  "Serializes a message object of type '<GetLinkPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLinkPose-response>) istream)
  "Deserializes a message object of type '<GetLinkPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLinkPose-response>)))
  "Returns string type for a service object of type '<GetLinkPose-response>"
  "roboy_control_msgs/GetLinkPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkPose-response)))
  "Returns string type for a service object of type 'GetLinkPose-response"
  "roboy_control_msgs/GetLinkPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLinkPose-response>)))
  "Returns md5sum for a message object of type '<GetLinkPose-response>"
  "2e5fd53ebd98cb5347be4c4321e60048")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLinkPose-response)))
  "Returns md5sum for a message object of type 'GetLinkPose-response"
  "2e5fd53ebd98cb5347be4c4321e60048")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLinkPose-response>)))
  "Returns full string definition for message of type '<GetLinkPose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLinkPose-response)))
  "Returns full string definition for message of type 'GetLinkPose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLinkPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLinkPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLinkPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLinkPose)))
  'GetLinkPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLinkPose)))
  'GetLinkPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLinkPose)))
  "Returns string type for a service object of type '<GetLinkPose>"
  "roboy_control_msgs/GetLinkPose")