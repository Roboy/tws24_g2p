;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::Collision)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'Collision (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::COLLISION")
  (make-package "ROBOY_SIMULATION_MSGS::COLLISION"))

(in-package "ROS")
;;//! \htmlinclude Collision.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_simulation_msgs::Collision
  :super ros::object
  :slots (_header _contact_points ))

(defmethod roboy_simulation_msgs::Collision
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:contact_points __contact_points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _contact_points __contact_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:contact_points
   (&rest __contact_points)
   (if (keywordp (car __contact_points))
       (send* _contact_points __contact_points)
     (progn
       (if __contact_points (setq _contact_points (car __contact_points)))
       _contact_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; roboy_simulation_msgs/ContactPoint[] _contact_points
    (apply #'+ (send-all _contact_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; roboy_simulation_msgs/ContactPoint[] _contact_points
     (write-long (length _contact_points) s)
     (dolist (elem _contact_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; roboy_simulation_msgs/ContactPoint[] _contact_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contact_points (let (r) (dotimes (i n) (push (instance roboy_simulation_msgs::ContactPoint :init) r)) r))
     (dolist (elem- _contact_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::Collision :md5sum-) "2a6f8784cdbd2284b14765b033c69396")
(setf (get roboy_simulation_msgs::Collision :datatype-) "roboy_simulation_msgs/Collision")
(setf (get roboy_simulation_msgs::Collision :definition-)
      "Header header
# contact points of the body with any other object
ContactPoint[] contact_points
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
MSG: roboy_simulation_msgs/ContactPoint
#id of roboy link in which a collision happened
int64 linkid
#position of contact point on roboy in link frame
geometry_msgs/Vector3 position
#contact normal on external body, pointing towards roboy
geometry_msgs/Vector3 contactnormal
#contact distance, positive for separation, negative for penetration
float64 contactdistance
#normal force applied during the last 'stepSimulation'
float64 normalforce
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :roboy_simulation_msgs/Collision "2a6f8784cdbd2284b14765b033c69396")


