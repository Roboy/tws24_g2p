;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::RecordingControl)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'RecordingControl (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::RECORDINGCONTROL")
  (make-package "ROBOY_SIMULATION_MSGS::RECORDINGCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RecordingControl.msg.html


(defclass roboy_simulation_msgs::RecordingControl
  :super ros::object
  :slots (_roboy_id _start_time _stop_time ))

(defmethod roboy_simulation_msgs::RecordingControl
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:start_time __start_time) 0)
    ((:stop_time __stop_time) 0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _start_time (round __start_time))
   (setq _stop_time (round __stop_time))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:stop_time
   (&optional __stop_time)
   (if __stop_time (setq _stop_time __stop_time)) _stop_time)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; uint32 _start_time
    4
    ;; uint32 _stop_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; uint32 _start_time
       (write-long _start_time s)
     ;; uint32 _stop_time
       (write-long _stop_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _start_time
     (setq _start_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _stop_time
     (setq _stop_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::RecordingControl :md5sum-) "38d3d1699f1a558cbba880a0ee7ca55e")
(setf (get roboy_simulation_msgs::RecordingControl :datatype-) "roboy_simulation_msgs/RecordingControl")
(setf (get roboy_simulation_msgs::RecordingControl :definition-)
      "int32 roboy_id
uint32 start_time
uint32 stop_time

")



(provide :roboy_simulation_msgs/RecordingControl "38d3d1699f1a558cbba880a0ee7ca55e")


