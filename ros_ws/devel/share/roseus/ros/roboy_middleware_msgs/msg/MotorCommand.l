;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorCommand)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorCommand (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORCOMMAND")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MotorCommand.msg.html


(defclass roboy_middleware_msgs::MotorCommand
  :super ros::object
  :slots (_global_id _setpoint ))

(defmethod roboy_middleware_msgs::MotorCommand
  (:init
   (&key
    ((:global_id __global_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:setpoint __setpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _global_id __global_id)
   (setq _setpoint __setpoint)
   self)
  (:global_id
   (&optional __global_id)
   (if __global_id (setq _global_id __global_id)) _global_id)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:serialization-length
   ()
   (+
    ;; uint8[] _global_id
    (* 1    (length _global_id)) 4
    ;; float32[] _setpoint
    (* 4    (length _setpoint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _global_id
     (write-long (length _global_id) s)
     (princ _global_id s)
     ;; float32[] _setpoint
     (write-long (length _setpoint) s)
     (dotimes (i (length _setpoint))
       (sys::poke (elt _setpoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _global_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _global_id (make-array n :element-type :char))
     (replace _global_id buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _setpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _setpoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::MotorCommand :md5sum-) "eaa17bf08ee721981a6d18f514c6f029")
(setf (get roboy_middleware_msgs::MotorCommand :datatype-) "roboy_middleware_msgs/MotorCommand")
(setf (get roboy_middleware_msgs::MotorCommand :definition-)
      "uint8[] global_id
float32[] setpoint

")



(provide :roboy_middleware_msgs/MotorCommand "eaa17bf08ee721981a6d18f514c6f029")


