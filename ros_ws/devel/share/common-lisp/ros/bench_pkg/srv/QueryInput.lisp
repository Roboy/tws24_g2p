; Auto-generated. Do not edit!


(cl:in-package bench_pkg-srv)


;//! \htmlinclude QueryInput-request.msg.html

(cl:defclass <QueryInput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass QueryInput-request (<QueryInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<QueryInput-request> is deprecated: use bench_pkg-srv:QueryInput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryInput-request>) ostream)
  "Serializes a message object of type '<QueryInput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryInput-request>) istream)
  "Deserializes a message object of type '<QueryInput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryInput-request>)))
  "Returns string type for a service object of type '<QueryInput-request>"
  "bench_pkg/QueryInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryInput-request)))
  "Returns string type for a service object of type 'QueryInput-request"
  "bench_pkg/QueryInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryInput-request>)))
  "Returns md5sum for a message object of type '<QueryInput-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryInput-request)))
  "Returns md5sum for a message object of type 'QueryInput-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryInput-request>)))
  "Returns full string definition for message of type '<QueryInput-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryInput-request)))
  "Returns full string definition for message of type 'QueryInput-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryInput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryInput-request
))
;//! \htmlinclude QueryInput-response.msg.html

(cl:defclass <QueryInput-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass QueryInput-response (<QueryInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bench_pkg-srv:<QueryInput-response> is deprecated: use bench_pkg-srv:QueryInput-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryInput-response>) ostream)
  "Serializes a message object of type '<QueryInput-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryInput-response>) istream)
  "Deserializes a message object of type '<QueryInput-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryInput-response>)))
  "Returns string type for a service object of type '<QueryInput-response>"
  "bench_pkg/QueryInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryInput-response)))
  "Returns string type for a service object of type 'QueryInput-response"
  "bench_pkg/QueryInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryInput-response>)))
  "Returns md5sum for a message object of type '<QueryInput-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryInput-response)))
  "Returns md5sum for a message object of type 'QueryInput-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryInput-response>)))
  "Returns full string definition for message of type '<QueryInput-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryInput-response)))
  "Returns full string definition for message of type 'QueryInput-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryInput-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryInput-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryInput)))
  'QueryInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryInput)))
  'QueryInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryInput)))
  "Returns string type for a service object of type '<QueryInput>"
  "bench_pkg/QueryInput")