;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::LinkInformation)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'LinkInformation (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::LINKINFORMATION")
  (make-package "ROBOY_SIMULATION_MSGS::LINKINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude LinkInformation.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::LinkInformation
  :super ros::object
  :slots (_id _name _dimensions _init_pose ))

(defmethod roboy_simulation_msgs::LinkInformation
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:init_pose __init_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _dimensions __dimensions)
   (setq _init_pose __init_pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:init_pose
   (&rest __init_pose)
   (if (keywordp (car __init_pose))
       (send* _init_pose __init_pose)
     (progn
       (if __init_pose (setq _init_pose (car __init_pose)))
       _init_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Pose _init_pose
    (send _init_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Pose _init_pose
       (send _init_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Pose _init_pose
     (send _init_pose :deserialize buf ptr-) (incf ptr- (send _init_pose :serialization-length))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::LinkInformation :md5sum-) "da41a99dfc52d4f683b6fe3c478f8696")
(setf (get roboy_simulation_msgs::LinkInformation :datatype-) "roboy_simulation_msgs/LinkInformation")
(setf (get roboy_simulation_msgs::LinkInformation :definition-)
      "# id of the link in the simulation
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



(provide :roboy_simulation_msgs/LinkInformation "da41a99dfc52d4f683b6fe3c478f8696")


