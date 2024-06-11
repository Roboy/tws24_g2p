; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude Babble-request.msg.html

(cl:defclass <Babble-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Babble-request (<Babble-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Babble-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Babble-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Babble-request> is deprecated: use bench_pkg-srv:Babble-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Babble-request>) ostream)
  "Serializes a message object of type '<Babble-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Babble-request>) istream)
  "Deserializes a message object of type '<Babble-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Babble-request>)))
  "Returns string type for a service object of type '<Babble-request>"
  "bench_pkg/BabbleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Babble-request)))
  "Returns string type for a service object of type 'Babble-request"
  "bench_pkg/BabbleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Babble-request>)))
  "Returns md5sum for a message object of type '<Babble-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Babble-request)))
  "Returns md5sum for a message object of type 'Babble-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Babble-request>)))
  "Returns full string definition for message of type '<Babble-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Babble-request)))
  "Returns full string definition for message of type 'Babble-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Babble-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Babble-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Babble-request
))
;//! \htmlinclude Babble-response.msg.html

(cl:defclass <Babble-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Babble-response (<Babble-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Babble-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Babble-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Babble-response> is deprecated: use bench_pkg-srv:Babble-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Babble-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:success-val is deprecated.  Use bench_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Babble-response>) ostream)
  "Serializes a message object of type '<Babble-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Babble-response>) istream)
  "Deserializes a message object of type '<Babble-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Babble-response>)))
  "Returns string type for a service object of type '<Babble-response>"
  "bench_pkg/BabbleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Babble-response)))
  "Returns string type for a service object of type 'Babble-response"
  "bench_pkg/BabbleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Babble-response>)))
  "Returns md5sum for a message object of type '<Babble-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Babble-response)))
  "Returns md5sum for a message object of type 'Babble-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Babble-response>)))
  "Returns full string definition for message of type '<Babble-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Babble-response)))
  "Returns full string definition for message of type 'Babble-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Babble-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Babble-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Babble-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Babble)))
  'Babble-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Babble)))
  'Babble-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Babble)))
  "Returns string type for a service object of type '<Babble>"
  "bench_pkg/Babble")