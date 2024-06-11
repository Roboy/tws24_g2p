;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::DanceCommand)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'DanceCommand (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::DANCECOMMAND")
  (make-package "ROBOY_MIDDLEWARE_MSGS::DANCECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DanceCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_middleware_msgs::DanceCommand
  :super ros::object
  :slots (_sensor_id _pos ))

(defmethod roboy_middleware_msgs::DanceCommand
  (:init
   (&key
    ((:sensor_id __sensor_id) 0)
    ((:pos __pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _sensor_id (round __sensor_id))
   (setq _pos __pos)
   self)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; int32 _sensor_id
    4
    ;; geometry_msgs/Vector3 _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; geometry_msgs/Vector3 _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::DanceCommand :md5sum-) "72a157af84f4f4cbc154d8d824d39082")
(setf (get roboy_middleware_msgs::DanceCommand :datatype-) "roboy_middleware_msgs/DanceCommand")
(setf (get roboy_middleware_msgs::DanceCommand :definition-)
      "int32 sensor_id
geometry_msgs/Vector3 pos
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



(provide :roboy_middleware_msgs/DanceCommand "72a157af84f4f4cbc154d8d824d39082")


