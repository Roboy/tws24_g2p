;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::Force)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'Force (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FORCE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FORCE"))

(in-package "ROS")
;;//! \htmlinclude Force.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_middleware_msgs::Force
  :super ros::object
  :slots (_header _force ))

(defmethod roboy_middleware_msgs::Force
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _force (float __force))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::Force :md5sum-) "4e8a0d16f70403113ba697791517e538")
(setf (get roboy_middleware_msgs::Force :datatype-) "roboy_middleware_msgs/Force")
(setf (get roboy_middleware_msgs::Force :definition-)
      "Header header
float32 force
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

")



(provide :roboy_middleware_msgs/Force "4e8a0d16f70403113ba697791517e538")


