;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::Input)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'Input (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::INPUT")
  (make-package "ROBOY_SIMULATION_MSGS::INPUT"))

(in-package "ROS")
;;//! \htmlinclude Input.msg.html


(defclass roboy_simulation_msgs::Input
  :super ros::object
  :slots (_roboy_id _name _input_voltage ))

(defmethod roboy_simulation_msgs::Input
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:name __name) "")
    ((:input_voltage __input_voltage) 0.0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _name (string __name))
   (setq _input_voltage (float __input_voltage))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:input_voltage
   (&optional __input_voltage)
   (if __input_voltage (setq _input_voltage __input_voltage)) _input_voltage)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; string _name
    4 (length _name)
    ;; float32 _input_voltage
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
     ;; float32 _input_voltage
       (sys::poke _input_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _input_voltage
     (setq _input_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::Input :md5sum-) "d8cd56c18e35268c1e5cd4abb835e711")
(setf (get roboy_simulation_msgs::Input :datatype-) "roboy_simulation_msgs/Input")
(setf (get roboy_simulation_msgs::Input :definition-)
      "int32 roboy_id
string name
float32 input_voltage

")



(provide :roboy_simulation_msgs/Input "d8cd56c18e35268c1e5cd4abb835e711")


