; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude CameraPos.msg.html

(cl:defclass <CameraPos> (roslisp-msg-protocol:ros-message)
  ((m00
    :reader m00
    :initarg :m00
    :type cl:float
    :initform 0.0)
   (m01
    :reader m01
    :initarg :m01
    :type cl:float
    :initform 0.0)
   (m02
    :reader m02
    :initarg :m02
    :type cl:float
    :initform 0.0)
   (m03
    :reader m03
    :initarg :m03
    :type cl:float
    :initform 0.0)
   (m10
    :reader m10
    :initarg :m10
    :type cl:float
    :initform 0.0)
   (m11
    :reader m11
    :initarg :m11
    :type cl:float
    :initform 0.0)
   (m12
    :reader m12
    :initarg :m12
    :type cl:float
    :initform 0.0)
   (m13
    :reader m13
    :initarg :m13
    :type cl:float
    :initform 0.0)
   (m20
    :reader m20
    :initarg :m20
    :type cl:float
    :initform 0.0)
   (m21
    :reader m21
    :initarg :m21
    :type cl:float
    :initform 0.0)
   (m22
    :reader m22
    :initarg :m22
    :type cl:float
    :initform 0.0)
   (m23
    :reader m23
    :initarg :m23
    :type cl:float
    :initform 0.0)
   (m30
    :reader m30
    :initarg :m30
    :type cl:float
    :initform 0.0)
   (m31
    :reader m31
    :initarg :m31
    :type cl:float
    :initform 0.0)
   (m32
    :reader m32
    :initarg :m32
    :type cl:float
    :initform 0.0)
   (m33
    :reader m33
    :initarg :m33
    :type cl:float
    :initform 0.0))
)

(cl:defclass CameraPos (<CameraPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<CameraPos> is deprecated: use roboy_control_msgs-msg:CameraPos instead.")))

(cl:ensure-generic-function 'm00-val :lambda-list '(m))
(cl:defmethod m00-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m00-val is deprecated.  Use roboy_control_msgs-msg:m00 instead.")
  (m00 m))

(cl:ensure-generic-function 'm01-val :lambda-list '(m))
(cl:defmethod m01-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m01-val is deprecated.  Use roboy_control_msgs-msg:m01 instead.")
  (m01 m))

(cl:ensure-generic-function 'm02-val :lambda-list '(m))
(cl:defmethod m02-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m02-val is deprecated.  Use roboy_control_msgs-msg:m02 instead.")
  (m02 m))

(cl:ensure-generic-function 'm03-val :lambda-list '(m))
(cl:defmethod m03-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m03-val is deprecated.  Use roboy_control_msgs-msg:m03 instead.")
  (m03 m))

(cl:ensure-generic-function 'm10-val :lambda-list '(m))
(cl:defmethod m10-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m10-val is deprecated.  Use roboy_control_msgs-msg:m10 instead.")
  (m10 m))

(cl:ensure-generic-function 'm11-val :lambda-list '(m))
(cl:defmethod m11-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m11-val is deprecated.  Use roboy_control_msgs-msg:m11 instead.")
  (m11 m))

(cl:ensure-generic-function 'm12-val :lambda-list '(m))
(cl:defmethod m12-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m12-val is deprecated.  Use roboy_control_msgs-msg:m12 instead.")
  (m12 m))

(cl:ensure-generic-function 'm13-val :lambda-list '(m))
(cl:defmethod m13-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m13-val is deprecated.  Use roboy_control_msgs-msg:m13 instead.")
  (m13 m))

(cl:ensure-generic-function 'm20-val :lambda-list '(m))
(cl:defmethod m20-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m20-val is deprecated.  Use roboy_control_msgs-msg:m20 instead.")
  (m20 m))

(cl:ensure-generic-function 'm21-val :lambda-list '(m))
(cl:defmethod m21-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m21-val is deprecated.  Use roboy_control_msgs-msg:m21 instead.")
  (m21 m))

(cl:ensure-generic-function 'm22-val :lambda-list '(m))
(cl:defmethod m22-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m22-val is deprecated.  Use roboy_control_msgs-msg:m22 instead.")
  (m22 m))

(cl:ensure-generic-function 'm23-val :lambda-list '(m))
(cl:defmethod m23-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m23-val is deprecated.  Use roboy_control_msgs-msg:m23 instead.")
  (m23 m))

(cl:ensure-generic-function 'm30-val :lambda-list '(m))
(cl:defmethod m30-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m30-val is deprecated.  Use roboy_control_msgs-msg:m30 instead.")
  (m30 m))

(cl:ensure-generic-function 'm31-val :lambda-list '(m))
(cl:defmethod m31-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m31-val is deprecated.  Use roboy_control_msgs-msg:m31 instead.")
  (m31 m))

(cl:ensure-generic-function 'm32-val :lambda-list '(m))
(cl:defmethod m32-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m32-val is deprecated.  Use roboy_control_msgs-msg:m32 instead.")
  (m32 m))

(cl:ensure-generic-function 'm33-val :lambda-list '(m))
(cl:defmethod m33-val ((m <CameraPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:m33-val is deprecated.  Use roboy_control_msgs-msg:m33 instead.")
  (m33 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraPos>) ostream)
  "Serializes a message object of type '<CameraPos>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm00))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm01))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm02))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm03))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm10))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm11))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm12))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm13))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm20))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm21))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm22))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm23))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm30))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm31))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm32))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'm33))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraPos>) istream)
  "Deserializes a message object of type '<CameraPos>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm00) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm01) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm02) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm03) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm10) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm11) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm12) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm13) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm20) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm21) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm22) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm23) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm30) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm31) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm32) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm33) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraPos>)))
  "Returns string type for a message object of type '<CameraPos>"
  "roboy_control_msgs/CameraPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraPos)))
  "Returns string type for a message object of type 'CameraPos"
  "roboy_control_msgs/CameraPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraPos>)))
  "Returns md5sum for a message object of type '<CameraPos>"
  "8903cef6b8f5901e6c1b1feeb6a5a6d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraPos)))
  "Returns md5sum for a message object of type 'CameraPos"
  "8903cef6b8f5901e6c1b1feeb6a5a6d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraPos>)))
  "Returns full string definition for message of type '<CameraPos>"
  (cl:format cl:nil "float32 m00~%float32 m01~%float32 m02~%float32 m03~%~%float32 m10~%float32 m11~%float32 m12~%float32 m13~%~%float32 m20~%float32 m21~%float32 m22~%float32 m23~%~%float32 m30~%float32 m31~%float32 m32~%float32 m33~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraPos)))
  "Returns full string definition for message of type 'CameraPos"
  (cl:format cl:nil "float32 m00~%float32 m01~%float32 m02~%float32 m03~%~%float32 m10~%float32 m11~%float32 m12~%float32 m13~%~%float32 m20~%float32 m21~%float32 m22~%float32 m23~%~%float32 m30~%float32 m31~%float32 m32~%float32 m33~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraPos>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraPos>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraPos
    (cl:cons ':m00 (m00 msg))
    (cl:cons ':m01 (m01 msg))
    (cl:cons ':m02 (m02 msg))
    (cl:cons ':m03 (m03 msg))
    (cl:cons ':m10 (m10 msg))
    (cl:cons ':m11 (m11 msg))
    (cl:cons ':m12 (m12 msg))
    (cl:cons ':m13 (m13 msg))
    (cl:cons ':m20 (m20 msg))
    (cl:cons ':m21 (m21 msg))
    (cl:cons ':m22 (m22 msg))
    (cl:cons ':m23 (m23 msg))
    (cl:cons ':m30 (m30 msg))
    (cl:cons ':m31 (m31 msg))
    (cl:cons ':m32 (m32 msg))
    (cl:cons ':m33 (m33 msg))
))
