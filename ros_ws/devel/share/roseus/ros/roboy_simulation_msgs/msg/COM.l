;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::COM)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'COM (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::COM")
  (make-package "ROBOY_SIMULATION_MSGS::COM"))

(in-package "ROS")
;;//! \htmlinclude COM.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::COM
  :super ros::object
  :slots (_roboy_id _position _velocity ))

(defmethod roboy_simulation_msgs::COM
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _position __position)
   (setq _velocity __velocity)
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::COM :md5sum-) "c72538e6ca61afbf4602096e5a19746b")
(setf (get roboy_simulation_msgs::COM :datatype-) "roboy_simulation_msgs/COM")
(setf (get roboy_simulation_msgs::COM :definition-)
      "int32 roboy_id
geometry_msgs/Point position
geometry_msgs/Point velocity

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_simulation_msgs/COM "c72538e6ca61afbf4602096e5a19746b")


