;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::AudioInfo)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'AudioInfo (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::AUDIOINFO")
  (make-package "ROBOY_COGNITION_MSGS::AUDIOINFO"))

(in-package "ROS")
;;//! \htmlinclude AudioInfo.msg.html


(defclass roboy_cognition_msgs::AudioInfo
  :super ros::object
  :slots (_frequency _average_power ))

(defmethod roboy_cognition_msgs::AudioInfo
  (:init
   (&key
    ((:frequency __frequency) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:average_power __average_power) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _frequency __frequency)
   (setq _average_power __average_power)
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:average_power
   (&optional __average_power)
   (if __average_power (setq _average_power __average_power)) _average_power)
  (:serialization-length
   ()
   (+
    ;; float32[] _frequency
    (* 4    (length _frequency)) 4
    ;; float32[] _average_power
    (* 4    (length _average_power)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _frequency
     (write-long (length _frequency) s)
     (dotimes (i (length _frequency))
       (sys::poke (elt _frequency i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _average_power
     (write-long (length _average_power) s)
     (dotimes (i (length _average_power))
       (sys::poke (elt _average_power i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _frequency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frequency (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frequency i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _average_power
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _average_power (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _average_power i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_cognition_msgs::AudioInfo :md5sum-) "b06171fe54f2668f04382a9767d00dfe")
(setf (get roboy_cognition_msgs::AudioInfo :datatype-) "roboy_cognition_msgs/AudioInfo")
(setf (get roboy_cognition_msgs::AudioInfo :definition-)
      "float32[] frequency
float32[] average_power

")



(provide :roboy_cognition_msgs/AudioInfo "b06171fe54f2668f04382a9767d00dfe")


