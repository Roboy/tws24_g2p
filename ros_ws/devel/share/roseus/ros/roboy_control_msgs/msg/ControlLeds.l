;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::ControlLeds)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'ControlLeds (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::CONTROLLEDS")
  (make-package "ROBOY_CONTROL_MSGS::CONTROLLEDS"))

(in-package "ROS")
;;//! \htmlinclude ControlLeds.msg.html


(defclass roboy_control_msgs::ControlLeds
  :super ros::object
  :slots (_mode _duration ))

(defmethod roboy_control_msgs::ControlLeds
  (:init
   (&key
    ((:mode __mode) 0)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _duration (round __duration))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int16 _mode
    2
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _mode
       (write-word _mode s)
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _mode
     (setq _mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_control_msgs::ControlLeds :md5sum-) "cbdf6d76365c7274e13bc5d8007f65ca")
(setf (get roboy_control_msgs::ControlLeds :datatype-) "roboy_control_msgs/ControlLeds")
(setf (get roboy_control_msgs::ControlLeds :definition-)
      "int16 mode
int32 duration #seconds

")



(provide :roboy_control_msgs/ControlLeds "cbdf6d76365c7274e13bc5d8007f65ca")


