; Auto-generated. Do not edit!


(cl:in-package roboy_cognition_msgs-msg)


;//! \htmlinclude IceCream.msg.html

(cl:defclass <IceCream> (roslisp-msg-protocol:ros-message)
  ((flavor
    :reader flavor
    :initarg :flavor
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass IceCream (<IceCream>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IceCream>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IceCream)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_cognition_msgs-msg:<IceCream> is deprecated: use roboy_cognition_msgs-msg:IceCream instead.")))

(cl:ensure-generic-function 'flavor-val :lambda-list '(m))
(cl:defmethod flavor-val ((m <IceCream>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:flavor-val is deprecated.  Use roboy_cognition_msgs-msg:flavor instead.")
  (flavor m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <IceCream>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:pose-val is deprecated.  Use roboy_cognition_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <IceCream>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_cognition_msgs-msg:point_cloud-val is deprecated.  Use roboy_cognition_msgs-msg:point_cloud instead.")
  (point_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IceCream>) ostream)
  "Serializes a message object of type '<IceCream>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flavor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flavor))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IceCream>) istream)
  "Deserializes a message object of type '<IceCream>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flavor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flavor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IceCream>)))
  "Returns string type for a message object of type '<IceCream>"
  "roboy_cognition_msgs/IceCream")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IceCream)))
  "Returns string type for a message object of type 'IceCream"
  "roboy_cognition_msgs/IceCream")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IceCream>)))
  "Returns md5sum for a message object of type '<IceCream>"
  "f78ad258d37a364dba8db47ff14117ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IceCream)))
  "Returns md5sum for a message object of type 'IceCream"
  "f78ad258d37a364dba8db47ff14117ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IceCream>)))
  "Returns full string definition for message of type '<IceCream>"
  (cl:format cl:nil "string flavor~%geometry_msgs/Pose pose~%std_msgs/Float32MultiArray point_cloud~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IceCream)))
  "Returns full string definition for message of type 'IceCream"
  (cl:format cl:nil "string flavor~%geometry_msgs/Pose pose~%std_msgs/Float32MultiArray point_cloud~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IceCream>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'flavor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IceCream>))
  "Converts a ROS message object to a list"
  (cl:list 'IceCream
    (cl:cons ':flavor (flavor msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':point_cloud (point_cloud msg))
))
