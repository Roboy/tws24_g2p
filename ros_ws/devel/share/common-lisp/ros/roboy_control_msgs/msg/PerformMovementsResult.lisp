; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude PerformMovementsResult.msg.html

(cl:defclass <PerformMovementsResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PerformMovementsResult (<PerformMovementsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformMovementsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformMovementsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<PerformMovementsResult> is deprecated: use roboy_control_msgs-msg:PerformMovementsResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PerformMovementsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:success-val is deprecated.  Use roboy_control_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformMovementsResult>) ostream)
  "Serializes a message object of type '<PerformMovementsResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformMovementsResult>) istream)
  "Deserializes a message object of type '<PerformMovementsResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformMovementsResult>)))
  "Returns string type for a message object of type '<PerformMovementsResult>"
  "roboy_control_msgs/PerformMovementsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformMovementsResult)))
  "Returns string type for a message object of type 'PerformMovementsResult"
  "roboy_control_msgs/PerformMovementsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformMovementsResult>)))
  "Returns md5sum for a message object of type '<PerformMovementsResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformMovementsResult)))
  "Returns md5sum for a message object of type 'PerformMovementsResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformMovementsResult>)))
  "Returns full string definition for message of type '<PerformMovementsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformMovementsResult)))
  "Returns full string definition for message of type 'PerformMovementsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformMovementsResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformMovementsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformMovementsResult
    (cl:cons ':success (success msg))
))
