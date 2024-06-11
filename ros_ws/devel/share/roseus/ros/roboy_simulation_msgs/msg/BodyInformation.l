;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::BodyInformation)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'BodyInformation (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::BODYINFORMATION")
  (make-package "ROBOY_SIMULATION_MSGS::BODYINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude BodyInformation.msg.html


(defclass roboy_simulation_msgs::BodyInformation
  :super ros::object
  :slots (_link_information ))

(defmethod roboy_simulation_msgs::BodyInformation
  (:init
   (&key
    ((:link_information __link_information) ())
    )
   (send-super :init)
   (setq _link_information __link_information)
   self)
  (:link_information
   (&rest __link_information)
   (if (keywordp (car __link_information))
       (send* _link_information __link_information)
     (progn
       (if __link_information (setq _link_information (car __link_information)))
       _link_information)))
  (:serialization-length
   ()
   (+
    ;; roboy_simulation_msgs/LinkInformation[] _link_information
    (apply #'+ (send-all _link_information :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_simulation_msgs/LinkInformation[] _link_information
     (write-long (length _link_information) s)
     (dolist (elem _link_information)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_simulation_msgs/LinkInformation[] _link_information
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_information (let (r) (dotimes (i n) (push (instance roboy_simulation_msgs::LinkInformation :init) r)) r))
     (dolist (elem- _link_information)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::BodyInformation :md5sum-) "9273ff30caabd7d7a45c37f2cda988ff")
(setf (get roboy_simulation_msgs::BodyInformation :datatype-) "roboy_simulation_msgs/BodyInformation")
(setf (get roboy_simulation_msgs::BodyInformation :definition-)
      "# list containing all links and some information like name, dimensions etc.
roboy_simulation_msgs/LinkInformation[] link_information
================================================================================
MSG: roboy_simulation_msgs/LinkInformation
# id of the link in the simulation
int32 id
# name of the link in the simulation
string name
# dimentions of the link
geometry_msgs/Vector3 dimensions
# initial pose of the link
geometry_msgs/Pose init_pose
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
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :roboy_simulation_msgs/BodyInformation "9273ff30caabd7d7a45c37f2cda988ff")


