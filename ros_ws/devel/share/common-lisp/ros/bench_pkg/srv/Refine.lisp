; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude Refine-request.msg.html

(cl:defclass <Refine-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Refine-request (<Refine-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Refine-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Refine-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Refine-request> is deprecated: use bench_pkg-srv:Refine-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Refine-request>) ostream)
  "Serializes a message object of type '<Refine-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Refine-request>) istream)
  "Deserializes a message object of type '<Refine-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Refine-request>)))
  "Returns string type for a service object of type '<Refine-request>"
  "bench_pkg/RefineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Refine-request)))
  "Returns string type for a service object of type 'Refine-request"
  "bench_pkg/RefineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Refine-request>)))
  "Returns md5sum for a message object of type '<Refine-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Refine-request)))
  "Returns md5sum for a message object of type 'Refine-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Refine-request>)))
  "Returns full string definition for message of type '<Refine-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Refine-request)))
  "Returns full string definition for message of type 'Refine-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Refine-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Refine-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Refine-request
))
;//! \htmlinclude Refine-response.msg.html

(cl:defclass <Refine-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Refine-response (<Refine-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Refine-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Refine-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<Refine-response> is deprecated: use bench_pkg-srv:Refine-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Refine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bench_pkg-srv:success-val is deprecated.  Use bench_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Refine-response>) ostream)
  "Serializes a message object of type '<Refine-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Refine-response>) istream)
  "Deserializes a message object of type '<Refine-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Refine-response>)))
  "Returns string type for a service object of type '<Refine-response>"
  "bench_pkg/RefineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Refine-response)))
  "Returns string type for a service object of type 'Refine-response"
  "bench_pkg/RefineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Refine-response>)))
  "Returns md5sum for a message object of type '<Refine-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Refine-response)))
  "Returns md5sum for a message object of type 'Refine-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Refine-response>)))
  "Returns full string definition for message of type '<Refine-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Refine-response)))
  "Returns full string definition for message of type 'Refine-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Refine-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Refine-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Refine-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Refine)))
  'Refine-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Refine)))
  'Refine-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Refine)))
  "Returns string type for a service object of type '<Refine>"
  "bench_pkg/Refine")