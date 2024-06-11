;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::MotorControl)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'MotorControl (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::MOTORCONTROL")
  (make-package "ROBOY_SIMULATION_MSGS::MOTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MotorControl.msg.html


(defclass roboy_simulation_msgs::MotorControl
  :super ros::object
  :slots (_roboy_id _voltage ))

(defmethod roboy_simulation_msgs::MotorControl
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:voltage __voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _voltage __voltage)
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; float32[] _voltage
    (* 4    (length _voltage)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; float32[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (sys::poke (elt _voltage i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::MotorControl :md5sum-) "4caa04c8853715c70c56574cffce69ce")
(setf (get roboy_simulation_msgs::MotorControl :datatype-) "roboy_simulation_msgs/MotorControl")
(setf (get roboy_simulation_msgs::MotorControl :definition-)
      "int32 roboy_id
float32[] voltage
")



(provide :roboy_simulation_msgs/MotorControl "4caa04c8853715c70c56574cffce69ce")


