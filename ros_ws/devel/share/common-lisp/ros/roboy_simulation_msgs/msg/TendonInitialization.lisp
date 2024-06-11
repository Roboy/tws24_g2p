; Auto-generated. Do not edit!


(cl:in-package roboy_simulation_msgs-msg)


;//! \htmlinclude TendonInitialization.msg.html

(cl:defclass <TendonInitialization> (roslisp-msg-protocol:ros-message)
  ((tendon_id
    :reader tendon_id
    :initarg :tendon_id
    :type cl:integer
    :initform 0)
   (max_force
    :reader max_force
    :initarg :max_force
    :type cl:float
    :initform 0.0)
   (wirepoints
    :reader wirepoints
    :initarg :wirepoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roboy_parts
    :reader roboy_parts
    :initarg :roboy_parts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TendonInitialization (<TendonInitialization>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TendonInitialization>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TendonInitialization)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_simulation_msgs-msg:<TendonInitialization> is deprecated: use roboy_simulation_msgs-msg:TendonInitialization instead.")))

(cl:ensure-generic-function 'tendon_id-val :lambda-list '(m))
(cl:defmethod tendon_id-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:tendon_id-val is deprecated.  Use roboy_simulation_msgs-msg:tendon_id instead.")
  (tendon_id m))

(cl:ensure-generic-function 'max_force-val :lambda-list '(m))
(cl:defmethod max_force-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:max_force-val is deprecated.  Use roboy_simulation_msgs-msg:max_force instead.")
  (max_force m))

(cl:ensure-generic-function 'wirepoints-val :lambda-list '(m))
(cl:defmethod wirepoints-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:wirepoints-val is deprecated.  Use roboy_simulation_msgs-msg:wirepoints instead.")
  (wirepoints m))

(cl:ensure-generic-function 'roboy_parts-val :lambda-list '(m))
(cl:defmethod roboy_parts-val ((m <TendonInitialization>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_simulation_msgs-msg:roboy_parts-val is deprecated.  Use roboy_simulation_msgs-msg:roboy_parts instead.")
  (roboy_parts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TendonInitialization>) ostream)
  "Serializes a message object of type '<TendonInitialization>"
  (cl:let* ((signed (cl:slot-value msg 'tendon_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wirepoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wirepoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roboy_parts))))
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
   (cl:slot-value msg 'roboy_parts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TendonInitialization>) istream)
  "Deserializes a message object of type '<TendonInitialization>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tendon_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_force) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wirepoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wirepoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roboy_parts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roboy_parts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TendonInitialization>)))
  "Returns string type for a message object of type '<TendonInitialization>"
  "roboy_simulation_msgs/TendonInitialization")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TendonInitialization)))
  "Returns string type for a message object of type 'TendonInitialization"
  "roboy_simulation_msgs/TendonInitialization")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TendonInitialization>)))
  "Returns md5sum for a message object of type '<TendonInitialization>"
  "f7ee2d602d56209b5a118cdb0a171bf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TendonInitialization)))
  "Returns md5sum for a message object of type 'TendonInitialization"
  "f7ee2d602d56209b5a118cdb0a171bf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TendonInitialization>)))
  "Returns full string definition for message of type '<TendonInitialization>"
  (cl:format cl:nil "int32 tendon_id~%#maximal applicable force	~%float32 max_force~%#world space coord, 3 floats == one coordinate~%float32[] wirepoints~%#names of roboypart each wirepoint is linked to~%string[] roboy_parts~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TendonInitialization)))
  "Returns full string definition for message of type 'TendonInitialization"
  (cl:format cl:nil "int32 tendon_id~%#maximal applicable force	~%float32 max_force~%#world space coord, 3 floats == one coordinate~%float32[] wirepoints~%#names of roboypart each wirepoint is linked to~%string[] roboy_parts~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TendonInitialization>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wirepoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roboy_parts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TendonInitialization>))
  "Converts a ROS message object to a list"
  (cl:list 'TendonInitialization
    (cl:cons ':tendon_id (tendon_id msg))
    (cl:cons ':max_force (max_force msg))
    (cl:cons ':wirepoints (wirepoints msg))
    (cl:cons ':roboy_parts (roboy_parts msg))
))
