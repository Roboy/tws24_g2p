; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude BodyInformation.msg.html

(cl:defclass <BodyInformation> (roslisp-msg-protocol:ros-message)
  ((link_information
    :reader link_information
    :initarg :link_information
    :type (cl:vector roboy_simulation_msgs-msg:LinkInformation)
   :initform (cl:make-array 0 :element-type 'roboy_simulation_msgs-msg:LinkInformation :initial-element (cl:make-instance 'roboy_simulation_msgs-msg:LinkInformation))))
)

(cl:defclass BodyInformation (<BodyInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<BodyInformation> is deprecated: use roboy_simulation_msgs-msg:BodyInformation instead.")))

(cl:ensure-generic-function 'link_information-val :lambda-list '(m))
(cl:defmethod link_information-val ((m <BodyInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:link_information-val is deprecated.  Use roboy_simulation_msgs-msg:link_information instead.")
  (link_information m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyInformation>) ostream)
  "Serializes a message object of type '<BodyInformation>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_information))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'link_information))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyInformation>) istream)
  "Deserializes a message object of type '<BodyInformation>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_information) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_information)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roboy_simulation_msgs-msg:LinkInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyInformation>)))
  "Returns string type for a message object of type '<BodyInformation>"
  "roboy_simulation_msgs/BodyInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyInformation)))
  "Returns string type for a message object of type 'BodyInformation"
  "roboy_simulation_msgs/BodyInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyInformation>)))
  "Returns md5sum for a message object of type '<BodyInformation>"
  "9273ff30caabd7d7a45c37f2cda988ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyInformation)))
  "Returns md5sum for a message object of type 'BodyInformation"
  "9273ff30caabd7d7a45c37f2cda988ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyInformation>)))
  "Returns full string definition for message of type '<BodyInformation>"
  (cl:format cl:nil "# list containing all links and some information like name, dimensions etc.~%roboy_simulation_msgs/LinkInformation[] link_information~%================================================================================~%MSG: roboy_simulation_msgs/LinkInformation~%# id of the link in the simulation~%int32 id~%# name of the link in the simulation~%string name~%# dimentions of the link~%geometry_msgs/Vector3 dimensions~%# initial pose of the link~%geometry_msgs/Pose init_pose~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyInformation)))
  "Returns full string definition for message of type 'BodyInformation"
  (cl:format cl:nil "# list containing all links and some information like name, dimensions etc.~%roboy_simulation_msgs/LinkInformation[] link_information~%================================================================================~%MSG: roboy_simulation_msgs/LinkInformation~%# id of the link in the simulation~%int32 id~%# name of the link in the simulation~%string name~%# dimentions of the link~%geometry_msgs/Vector3 dimensions~%# initial pose of the link~%geometry_msgs/Pose init_pose~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyInformation>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_information) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyInformation
    (cl:cons ':link_information (link_information msg))
))
