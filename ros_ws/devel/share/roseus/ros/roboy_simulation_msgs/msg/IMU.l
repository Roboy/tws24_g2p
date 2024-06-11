;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::IMU)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'IMU (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::IMU")
  (make-package "ROBOY_SIMULATION_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude IMU.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::IMU
  :super ros::object
  :slots (_roboy_id _link _lin_accel_world _ang_vel_world ))

(defmethod roboy_simulation_msgs::IMU
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:link __link) "")
    ((:lin_accel_world __lin_accel_world) (instance geometry_msgs::Point :init))
    ((:ang_vel_world __ang_vel_world) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _link (string __link))
   (setq _lin_accel_world __lin_accel_world)
   (setq _ang_vel_world __ang_vel_world)
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:link
   (&optional __link)
   (if __link (setq _link __link)) _link)
  (:lin_accel_world
   (&rest __lin_accel_world)
   (if (keywordp (car __lin_accel_world))
       (send* _lin_accel_world __lin_accel_world)
     (progn
       (if __lin_accel_world (setq _lin_accel_world (car __lin_accel_world)))
       _lin_accel_world)))
  (:ang_vel_world
   (&rest __ang_vel_world)
   (if (keywordp (car __ang_vel_world))
       (send* _ang_vel_world __ang_vel_world)
     (progn
       (if __ang_vel_world (setq _ang_vel_world (car __ang_vel_world)))
       _ang_vel_world)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; string _link
    4 (length _link)
    ;; geometry_msgs/Point _lin_accel_world
    (send _lin_accel_world :serialization-length)
    ;; geometry_msgs/Point _ang_vel_world
    (send _ang_vel_world :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; string _link
       (write-long (length _link) s) (princ _link s)
     ;; geometry_msgs/Point _lin_accel_world
       (send _lin_accel_world :serialize s)
     ;; geometry_msgs/Point _ang_vel_world
       (send _ang_vel_world :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _lin_accel_world
     (send _lin_accel_world :deserialize buf ptr-) (incf ptr- (send _lin_accel_world :serialization-length))
   ;; geometry_msgs/Point _ang_vel_world
     (send _ang_vel_world :deserialize buf ptr-) (incf ptr- (send _ang_vel_world :serialization-length))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::IMU :md5sum-) "43bd0ffc55a345c6db23ba4b7f7d9cbc")
(setf (get roboy_simulation_msgs::IMU :datatype-) "roboy_simulation_msgs/IMU")
(setf (get roboy_simulation_msgs::IMU :definition-)
      "int32 roboy_id
string link
geometry_msgs/Point lin_accel_world
geometry_msgs/Point ang_vel_world

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_simulation_msgs/IMU "43bd0ffc55a345c6db23ba4b7f7d9cbc")


