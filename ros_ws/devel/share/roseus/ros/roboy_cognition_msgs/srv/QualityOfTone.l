;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::QualityOfTone)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'QualityOfTone (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONE")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONE"))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONEREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONEREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONERESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONERESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::QualityOfToneRequest
  :super ros::object
  :slots (_tone _time_in_milliseconds _major_only ))

(defmethod roboy_cognition_msgs::QualityOfToneRequest
  (:init
   (&key
    ((:tone __tone) "")
    ((:time_in_milliseconds __time_in_milliseconds) 0.0)
    ((:major_only __major_only) nil)
    )
   (send-super :init)
   (setq _tone (string __tone))
   (setq _time_in_milliseconds (float __time_in_milliseconds))
   (setq _major_only __major_only)
   self)
  (:tone
   (&optional __tone)
   (if __tone (setq _tone __tone)) _tone)
  (:time_in_milliseconds
   (&optional __time_in_milliseconds)
   (if __time_in_milliseconds (setq _time_in_milliseconds __time_in_milliseconds)) _time_in_milliseconds)
  (:major_only
   (&optional (__major_only :null))
   (if (not (eq __major_only :null)) (setq _major_only __major_only)) _major_only)
  (:serialization-length
   ()
   (+
    ;; string _tone
    4 (length _tone)
    ;; float32 _time_in_milliseconds
    4
    ;; bool _major_only
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tone
       (write-long (length _tone) s) (princ _tone s)
     ;; float32 _time_in_milliseconds
       (sys::poke _time_in_milliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _major_only
       (if _major_only (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _time_in_milliseconds
     (setq _time_in_milliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _major_only
     (setq _major_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::QualityOfToneResponse
  :super ros::object
  :slots (_quality _purity _direction_z _direction_y _hit_pin ))

(defmethod roboy_cognition_msgs::QualityOfToneResponse
  (:init
   (&key
    ((:quality __quality) 0.0)
    ((:purity __purity) 0.0)
    ((:direction_z __direction_z) 0.0)
    ((:direction_y __direction_y) 0.0)
    ((:hit_pin __hit_pin) nil)
    )
   (send-super :init)
   (setq _quality (float __quality))
   (setq _purity (float __purity))
   (setq _direction_z (float __direction_z))
   (setq _direction_y (float __direction_y))
   (setq _hit_pin __hit_pin)
   self)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:purity
   (&optional __purity)
   (if __purity (setq _purity __purity)) _purity)
  (:direction_z
   (&optional __direction_z)
   (if __direction_z (setq _direction_z __direction_z)) _direction_z)
  (:direction_y
   (&optional __direction_y)
   (if __direction_y (setq _direction_y __direction_y)) _direction_y)
  (:hit_pin
   (&optional (__hit_pin :null))
   (if (not (eq __hit_pin :null)) (setq _hit_pin __hit_pin)) _hit_pin)
  (:serialization-length
   ()
   (+
    ;; float32 _quality
    4
    ;; float32 _purity
    4
    ;; float32 _direction_z
    4
    ;; float32 _direction_y
    4
    ;; bool _hit_pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _purity
       (sys::poke _purity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction_z
       (sys::poke _direction_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction_y
       (sys::poke _direction_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _hit_pin
       (if _hit_pin (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _purity
     (setq _purity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction_z
     (setq _direction_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction_y
     (setq _direction_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _hit_pin
     (setq _hit_pin (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::QualityOfTone
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::QualityOfTone :md5sum-) "eeaf952b12443d5b5a1e7a092753228a")
(setf (get roboy_cognition_msgs::QualityOfTone :datatype-) "roboy_cognition_msgs/QualityOfTone")
(setf (get roboy_cognition_msgs::QualityOfTone :request) roboy_cognition_msgs::QualityOfToneRequest)
(setf (get roboy_cognition_msgs::QualityOfTone :response) roboy_cognition_msgs::QualityOfToneResponse)

(defmethod roboy_cognition_msgs::QualityOfToneRequest
  (:response () (instance roboy_cognition_msgs::QualityOfToneResponse :init)))

(setf (get roboy_cognition_msgs::QualityOfToneRequest :md5sum-) "eeaf952b12443d5b5a1e7a092753228a")
(setf (get roboy_cognition_msgs::QualityOfToneRequest :datatype-) "roboy_cognition_msgs/QualityOfToneRequest")
(setf (get roboy_cognition_msgs::QualityOfToneRequest :definition-)
      "string tone
float32 time_in_milliseconds
bool major_only
---
float32 quality
float32 purity
float32 direction_z
float32 direction_y
bool hit_pin

")

(setf (get roboy_cognition_msgs::QualityOfToneResponse :md5sum-) "eeaf952b12443d5b5a1e7a092753228a")
(setf (get roboy_cognition_msgs::QualityOfToneResponse :datatype-) "roboy_cognition_msgs/QualityOfToneResponse")
(setf (get roboy_cognition_msgs::QualityOfToneResponse :definition-)
      "string tone
float32 time_in_milliseconds
bool major_only
---
float32 quality
float32 purity
float32 direction_z
float32 direction_y
bool hit_pin

")



(provide :roboy_cognition_msgs/QualityOfTone "eeaf952b12443d5b5a1e7a092753228a")


