;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::QualityOfTones)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'QualityOfTones (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONES")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONES"))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONESREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONESREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::QUALITYOFTONESRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::QUALITYOFTONESRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::QualityOfTonesRequest
  :super ros::object
  :slots (_time_in_milliseconds _major_only ))

(defmethod roboy_cognition_msgs::QualityOfTonesRequest
  (:init
   (&key
    ((:time_in_milliseconds __time_in_milliseconds) 0.0)
    ((:major_only __major_only) nil)
    )
   (send-super :init)
   (setq _time_in_milliseconds (float __time_in_milliseconds))
   (setq _major_only __major_only)
   self)
  (:time_in_milliseconds
   (&optional __time_in_milliseconds)
   (if __time_in_milliseconds (setq _time_in_milliseconds __time_in_milliseconds)) _time_in_milliseconds)
  (:major_only
   (&optional (__major_only :null))
   (if (not (eq __major_only :null)) (setq _major_only __major_only)) _major_only)
  (:serialization-length
   ()
   (+
    ;; float32 _time_in_milliseconds
    4
    ;; bool _major_only
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time_in_milliseconds
       (sys::poke _time_in_milliseconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _major_only
       (if _major_only (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time_in_milliseconds
     (setq _time_in_milliseconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _major_only
     (setq _major_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::QualityOfTonesResponse
  :super ros::object
  :slots (_quality _purity _direction_z _direction_y _hit_pin ))

(defmethod roboy_cognition_msgs::QualityOfTonesResponse
  (:init
   (&key
    ((:quality __quality) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:purity __purity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:direction_z __direction_z) 0.0)
    ((:direction_y __direction_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hit_pin __hit_pin) nil)
    )
   (send-super :init)
   (setq _quality __quality)
   (setq _purity __purity)
   (setq _direction_z (float __direction_z))
   (setq _direction_y __direction_y)
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
    ;; float32[] _quality
    (* 4    (length _quality)) 4
    ;; float32[] _purity
    (* 4    (length _purity)) 4
    ;; float32 _direction_z
    4
    ;; float32[] _direction_y
    (* 4    (length _direction_y)) 4
    ;; bool _hit_pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _quality
     (write-long (length _quality) s)
     (dotimes (i (length _quality))
       (sys::poke (elt _quality i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _purity
     (write-long (length _purity) s)
     (dotimes (i (length _purity))
       (sys::poke (elt _purity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _direction_z
       (sys::poke _direction_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _direction_y
     (write-long (length _direction_y) s)
     (dotimes (i (length _direction_y))
       (sys::poke (elt _direction_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _hit_pin
       (if _hit_pin (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _quality
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quality (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quality i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _purity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _purity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _purity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _direction_z
     (setq _direction_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _direction_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _direction_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _hit_pin
     (setq _hit_pin (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::QualityOfTones
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::QualityOfTones :md5sum-) "fc70456230b8a068be395f059adcde0e")
(setf (get roboy_cognition_msgs::QualityOfTones :datatype-) "roboy_cognition_msgs/QualityOfTones")
(setf (get roboy_cognition_msgs::QualityOfTones :request) roboy_cognition_msgs::QualityOfTonesRequest)
(setf (get roboy_cognition_msgs::QualityOfTones :response) roboy_cognition_msgs::QualityOfTonesResponse)

(defmethod roboy_cognition_msgs::QualityOfTonesRequest
  (:response () (instance roboy_cognition_msgs::QualityOfTonesResponse :init)))

(setf (get roboy_cognition_msgs::QualityOfTonesRequest :md5sum-) "fc70456230b8a068be395f059adcde0e")
(setf (get roboy_cognition_msgs::QualityOfTonesRequest :datatype-) "roboy_cognition_msgs/QualityOfTonesRequest")
(setf (get roboy_cognition_msgs::QualityOfTonesRequest :definition-)
      "float32 time_in_milliseconds
bool major_only
---
float32[] quality
float32[] purity
float32 direction_z
float32[] direction_y
bool hit_pin

")

(setf (get roboy_cognition_msgs::QualityOfTonesResponse :md5sum-) "fc70456230b8a068be395f059adcde0e")
(setf (get roboy_cognition_msgs::QualityOfTonesResponse :datatype-) "roboy_cognition_msgs/QualityOfTonesResponse")
(setf (get roboy_cognition_msgs::QualityOfTonesResponse :definition-)
      "float32 time_in_milliseconds
bool major_only
---
float32[] quality
float32[] purity
float32 direction_z
float32[] direction_y
bool hit_pin

")



(provide :roboy_cognition_msgs/QualityOfTones "fc70456230b8a068be395f059adcde0e")


