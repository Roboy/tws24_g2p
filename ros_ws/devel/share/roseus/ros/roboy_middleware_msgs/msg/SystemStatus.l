;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::SystemStatus)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'SystemStatus (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMSTATUS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SystemStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_middleware_msgs::SystemStatus
  :super ros::object
  :slots (_header _body_parts ))

(defmethod roboy_middleware_msgs::SystemStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:body_parts __body_parts) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _body_parts __body_parts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:body_parts
   (&rest __body_parts)
   (if (keywordp (car __body_parts))
       (send* _body_parts __body_parts)
     (progn
       (if __body_parts (setq _body_parts (car __body_parts)))
       _body_parts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; roboy_middleware_msgs/BodyPart[] _body_parts
    (apply #'+ (send-all _body_parts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; roboy_middleware_msgs/BodyPart[] _body_parts
     (write-long (length _body_parts) s)
     (dolist (elem _body_parts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; roboy_middleware_msgs/BodyPart[] _body_parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_parts (let (r) (dotimes (i n) (push (instance roboy_middleware_msgs::BodyPart :init) r)) r))
     (dolist (elem- _body_parts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::SystemStatus :md5sum-) "a154f05d39fafbb9bb8a98f0b5bb4351")
(setf (get roboy_middleware_msgs::SystemStatus :datatype-) "roboy_middleware_msgs/SystemStatus")
(setf (get roboy_middleware_msgs::SystemStatus :definition-)
      "Header header
BodyPart[] body_parts
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: roboy_middleware_msgs/BodyPart
# Sample values
uint8 ENABLED=0
uint8 DISABLED=1
uint8 ERROR_CONDITION_A=2
uint8 ERROR_CONDITION_B=3

# Body part designator
string name

# Status byte implemented like Unix return codes:
# 0: All OK / Ready
# 1: Function disabled
# 2-100: Custom error codes indicating different stop conditions or
# malfunctions.
# 100-255: Custom readiness states. Some functionality still online / waiting
# for something.
#
uint8 status

")



(provide :roboy_middleware_msgs/SystemStatus "a154f05d39fafbb9bb8a98f0b5bb4351")


