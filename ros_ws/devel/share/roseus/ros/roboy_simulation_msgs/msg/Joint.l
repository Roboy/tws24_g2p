;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::Joint)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'Joint (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::JOINT")
  (make-package "ROBOY_SIMULATION_MSGS::JOINT"))

(in-package "ROS")
;;//! \htmlinclude Joint.msg.html


(defclass roboy_simulation_msgs::Joint
  :super ros::object
  :slots (_roboy_id _name _radian ))

(defmethod roboy_simulation_msgs::Joint
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:name __name) "")
    ((:radian __radian) 0.0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _name (string __name))
   (setq _radian (float __radian))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:radian
   (&optional __radian)
   (if __radian (setq _radian __radian)) _radian)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; string _name
    4 (length _name)
    ;; float32 _radian
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _radian
       (sys::poke _radian (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _radian
     (setq _radian (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::Joint :md5sum-) "4e0a5af89536f542bc2bec2bf5a7b8de")
(setf (get roboy_simulation_msgs::Joint :datatype-) "roboy_simulation_msgs/Joint")
(setf (get roboy_simulation_msgs::Joint :definition-)
      "int32 roboy_id
string name
float32 radian

")



(provide :roboy_simulation_msgs/Joint "4e0a5af89536f542bc2bec2bf5a7b8de")


