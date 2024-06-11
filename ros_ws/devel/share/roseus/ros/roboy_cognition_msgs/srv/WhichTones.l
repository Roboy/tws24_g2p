;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::WhichTones)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'WhichTones (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::WHICHTONES")
  (make-package "ROBOY_COGNITION_MSGS::WHICHTONES"))
(unless (find-package "ROBOY_COGNITION_MSGS::WHICHTONESREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::WHICHTONESREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::WHICHTONESRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::WHICHTONESRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::WhichTonesRequest
  :super ros::object
  :slots (_time_in_milliseconds ))

(defmethod roboy_cognition_msgs::WhichTonesRequest
  (:init
   (&key
    ((:time_in_milliseconds __time_in_milliseconds) 0.0)
    )
   (send-super :init)
   (setq _time_in_milliseconds (float __time_in_milliseconds))
   self)
  (:time_in_milliseconds
   (&optional __time_in_milliseconds)
   (if __time_in_milliseconds (setq _time_in_milliseconds __time_in_milliseconds)) _time_in_milliseconds)
  (:serialization-length
   ()
   (+
    ;; float32 _time_in_milliseconds
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time_in_milliseconds
       (sys::poke _time_in_milliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time_in_milliseconds
     (setq _time_in_milliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::WhichTonesResponse
  :super ros::object
  :slots (_tones _timestamps ))

(defmethod roboy_cognition_msgs::WhichTonesResponse
  (:init
   (&key
    ((:tones __tones) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timestamps __timestamps) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _tones __tones)
   (setq _timestamps __timestamps)
   self)
  (:tones
   (&optional __tones)
   (if __tones (setq _tones __tones)) _tones)
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:serialization-length
   ()
   (+
    ;; uint16[] _tones
    (* 2    (length _tones)) 4
    ;; float32[] _timestamps
    (* 4    (length _timestamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _tones
     (write-long (length _tones) s)
     (dotimes (i (length _tones))
       (write-word (elt _tones i) s)
       )
     ;; float32[] _timestamps
     (write-long (length _timestamps) s)
     (dotimes (i (length _timestamps))
       (sys::poke (elt _timestamps i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _tones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tones (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tones i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _timestamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timestamps i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::WhichTones
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::WhichTones :md5sum-) "7f84d4f68a15e7b68416ee4eb41d9000")
(setf (get roboy_cognition_msgs::WhichTones :datatype-) "roboy_cognition_msgs/WhichTones")
(setf (get roboy_cognition_msgs::WhichTones :request) roboy_cognition_msgs::WhichTonesRequest)
(setf (get roboy_cognition_msgs::WhichTones :response) roboy_cognition_msgs::WhichTonesResponse)

(defmethod roboy_cognition_msgs::WhichTonesRequest
  (:response () (instance roboy_cognition_msgs::WhichTonesResponse :init)))

(setf (get roboy_cognition_msgs::WhichTonesRequest :md5sum-) "7f84d4f68a15e7b68416ee4eb41d9000")
(setf (get roboy_cognition_msgs::WhichTonesRequest :datatype-) "roboy_cognition_msgs/WhichTonesRequest")
(setf (get roboy_cognition_msgs::WhichTonesRequest :definition-)
      "float32 time_in_milliseconds
---
uint16[] tones
float32[] timestamps

")

(setf (get roboy_cognition_msgs::WhichTonesResponse :md5sum-) "7f84d4f68a15e7b68416ee4eb41d9000")
(setf (get roboy_cognition_msgs::WhichTonesResponse :datatype-) "roboy_cognition_msgs/WhichTonesResponse")
(setf (get roboy_cognition_msgs::WhichTonesResponse :definition-)
      "float32 time_in_milliseconds
---
uint16[] tones
float32[] timestamps

")



(provide :roboy_cognition_msgs/WhichTones "7f84d4f68a15e7b68416ee4eb41d9000")


