;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::BodyPart)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'BodyPart (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::BODYPART")
  (make-package "ROBOY_SIMULATION_MSGS::BODYPART"))

(in-package "ROS")
;;//! \htmlinclude BodyPart.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::BodyPart
  :super ros::object
  :slots (_roboy_id _link _position _mass ))

(defmethod roboy_simulation_msgs::BodyPart
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:link __link) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:mass __mass) 0.0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _link (string __link))
   (setq _position __position)
   (setq _mass (float __mass))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:link
   (&optional __link)
   (if __link (setq _link __link)) _link)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; string _link
    4 (length _link)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _mass
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; string _link
       (write-long (length _link) s) (princ _link s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::BodyPart :md5sum-) "7ea6a0636760eaf5fe7e84691fe02368")
(setf (get roboy_simulation_msgs::BodyPart :datatype-) "roboy_simulation_msgs/BodyPart")
(setf (get roboy_simulation_msgs::BodyPart :definition-)
      "int32 roboy_id
string link
geometry_msgs/Point position
float64 mass

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :roboy_simulation_msgs/BodyPart "7ea6a0636760eaf5fe7e84691fe02368")


