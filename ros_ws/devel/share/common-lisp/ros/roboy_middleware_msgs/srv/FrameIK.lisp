; Auto-generated. Do not edit!


(cl:in-package roboy_middleware_msgs-srv)


;//! \htmlinclude FrameIK-request.msg.html

(cl:defclass <FrameIK-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (offset
    :reader offset
    :initarg :offset
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass FrameIK-request (<FrameIK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameIK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameIK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<FrameIK-request> is deprecated: use roboy_middleware_msgs-srv:FrameIK-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <FrameIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:frame_id-val is deprecated.  Use roboy_middleware_msgs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <FrameIK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_middleware_msgs-srv:offset-val is deprecated.  Use roboy_middleware_msgs-srv:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameIK-request>) ostream)
  "Serializes a message object of type '<FrameIK-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameIK-request>) istream)
  "Deserializes a message object of type '<FrameIK-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameIK-request>)))
  "Returns string type for a service object of type '<FrameIK-request>"
  "roboy_middleware_msgs/FrameIKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameIK-request)))
  "Returns string type for a service object of type 'FrameIK-request"
  "roboy_middleware_msgs/FrameIKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameIK-request>)))
  "Returns md5sum for a message object of type '<FrameIK-request>"
  "7ff103dade78fd11c8e1db06d8b04430")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameIK-request)))
  "Returns md5sum for a message object of type 'FrameIK-request"
  "7ff103dade78fd11c8e1db06d8b04430")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameIK-request>)))
  "Returns full string definition for message of type '<FrameIK-request>"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameIK-request)))
  "Returns full string definition for message of type 'FrameIK-request"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Vector3 offset~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameIK-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameIK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameIK-request
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':offset (offset msg))
))
;//! \htmlinclude FrameIK-response.msg.html

(cl:defclass <FrameIK-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FrameIK-response (<FrameIK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameIK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameIK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_middleware_msgs-srv:<FrameIK-response> is deprecated: use roboy_middleware_msgs-srv:FrameIK-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameIK-response>) ostream)
  "Serializes a message object of type '<FrameIK-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameIK-response>) istream)
  "Deserializes a message object of type '<FrameIK-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameIK-response>)))
  "Returns string type for a service object of type '<FrameIK-response>"
  "roboy_middleware_msgs/FrameIKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameIK-response)))
  "Returns string type for a service object of type 'FrameIK-response"
  "roboy_middleware_msgs/FrameIKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameIK-response>)))
  "Returns md5sum for a message object of type '<FrameIK-response>"
  "7ff103dade78fd11c8e1db06d8b04430")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameIK-response)))
  "Returns md5sum for a message object of type 'FrameIK-response"
  "7ff103dade78fd11c8e1db06d8b04430")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameIK-response>)))
  "Returns full string definition for message of type '<FrameIK-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameIK-response)))
  "Returns full string definition for message of type 'FrameIK-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameIK-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameIK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameIK-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FrameIK)))
  'FrameIK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FrameIK)))
  'FrameIK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameIK)))
  "Returns string type for a service object of type '<FrameIK>"
  "roboy_middleware_msgs/FrameIK")