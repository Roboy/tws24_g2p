;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::ForceTorque)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'ForceTorque (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::FORCETORQUE")
  (make-package "ROBOY_SIMULATION_MSGS::FORCETORQUE"))

(in-package "ROS")
;;//! \htmlinclude ForceTorque.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::ForceTorque
  :super ros::object
  :slots (_roboy_id _leg _joint _force _torque ))

(defmethod roboy_simulation_msgs::ForceTorque
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:leg __leg) 0)
    ((:joint __joint) "")
    ((:force __force) (instance geometry_msgs::Point :init))
    ((:torque __torque) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _leg (round __leg))
   (setq _joint (string __joint))
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:leg
   (&optional __leg)
   (if __leg (setq _leg __leg)) _leg)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; int32 _leg
    4
    ;; string _joint
    4 (length _joint)
    ;; geometry_msgs/Point _force
    (send _force :serialization-length)
    ;; geometry_msgs/Point _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; int32 _leg
       (write-long _leg s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; geometry_msgs/Point _force
       (send _force :serialize s)
     ;; geometry_msgs/Point _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _leg
     (setq _leg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; geometry_msgs/Point _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::ForceTorque :md5sum-) "b319cd6b955ae951e9c17fbe4b6dde5b")
(setf (get roboy_simulation_msgs::ForceTorque :datatype-) "roboy_simulation_msgs/ForceTorque")
(setf (get roboy_simulation_msgs::ForceTorque :definition-)
      "int32 roboy_id
int32 leg
string joint
geometry_msgs/Point force
geometry_msgs/Point torque
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_simulation_msgs/ForceTorque "b319cd6b955ae951e9c17fbe4b6dde5b")


