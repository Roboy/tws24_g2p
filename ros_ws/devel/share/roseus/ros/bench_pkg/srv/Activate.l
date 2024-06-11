;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::Activate)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'Activate (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::ACTIVATE")
  (make-package "BENCH_PKG::ACTIVATE"))
(unless (find-package "BENCH_PKG::ACTIVATEREQUEST")
  (make-package "BENCH_PKG::ACTIVATEREQUEST"))
(unless (find-package "BENCH_PKG::ACTIVATERESPONSE")
  (make-package "BENCH_PKG::ACTIVATERESPONSE"))

(in-package "ROS")





(defclass bench_pkg::ActivateRequest
  :super ros::object
  :slots (_flex_myobrick_pwm _extend_myobrick_pwm _duration ))

(defmethod bench_pkg::ActivateRequest
  (:init
   (&key
    ((:flex_myobrick_pwm __flex_myobrick_pwm) 0.0)
    ((:extend_myobrick_pwm __extend_myobrick_pwm) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _flex_myobrick_pwm (float __flex_myobrick_pwm))
   (setq _extend_myobrick_pwm (float __extend_myobrick_pwm))
   (setq _duration (float __duration))
   self)
  (:flex_myobrick_pwm
   (&optional __flex_myobrick_pwm)
   (if __flex_myobrick_pwm (setq _flex_myobrick_pwm __flex_myobrick_pwm)) _flex_myobrick_pwm)
  (:extend_myobrick_pwm
   (&optional __extend_myobrick_pwm)
   (if __extend_myobrick_pwm (setq _extend_myobrick_pwm __extend_myobrick_pwm)) _extend_myobrick_pwm)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float32 _flex_myobrick_pwm
    4
    ;; float32 _extend_myobrick_pwm
    4
    ;; float32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _flex_myobrick_pwm
       (sys::poke _flex_myobrick_pwm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _extend_myobrick_pwm
       (sys::poke _extend_myobrick_pwm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _flex_myobrick_pwm
     (setq _flex_myobrick_pwm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _extend_myobrick_pwm
     (setq _extend_myobrick_pwm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::ActivateResponse
  :super ros::object
  :slots (_current_angle _current_angular_velocity _current_angular_acceleration ))

(defmethod bench_pkg::ActivateResponse
  (:init
   (&key
    ((:current_angle __current_angle) 0.0)
    ((:current_angular_velocity __current_angular_velocity) 0.0)
    ((:current_angular_acceleration __current_angular_acceleration) 0.0)
    )
   (send-super :init)
   (setq _current_angle (float __current_angle))
   (setq _current_angular_velocity (float __current_angular_velocity))
   (setq _current_angular_acceleration (float __current_angular_acceleration))
   self)
  (:current_angle
   (&optional __current_angle)
   (if __current_angle (setq _current_angle __current_angle)) _current_angle)
  (:current_angular_velocity
   (&optional __current_angular_velocity)
   (if __current_angular_velocity (setq _current_angular_velocity __current_angular_velocity)) _current_angular_velocity)
  (:current_angular_acceleration
   (&optional __current_angular_acceleration)
   (if __current_angular_acceleration (setq _current_angular_acceleration __current_angular_acceleration)) _current_angular_acceleration)
  (:serialization-length
   ()
   (+
    ;; float32 _current_angle
    4
    ;; float32 _current_angular_velocity
    4
    ;; float32 _current_angular_acceleration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_angle
       (sys::poke _current_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angular_velocity
       (sys::poke _current_angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_angular_acceleration
       (sys::poke _current_angular_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_angle
     (setq _current_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angular_velocity
     (setq _current_angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_angular_acceleration
     (setq _current_angular_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::Activate
  :super ros::object
  :slots ())

(setf (get bench_pkg::Activate :md5sum-) "251c4a167cb335bc980389871f0bb7af")
(setf (get bench_pkg::Activate :datatype-) "bench_pkg/Activate")
(setf (get bench_pkg::Activate :request) bench_pkg::ActivateRequest)
(setf (get bench_pkg::Activate :response) bench_pkg::ActivateResponse)

(defmethod bench_pkg::ActivateRequest
  (:response () (instance bench_pkg::ActivateResponse :init)))

(setf (get bench_pkg::ActivateRequest :md5sum-) "251c4a167cb335bc980389871f0bb7af")
(setf (get bench_pkg::ActivateRequest :datatype-) "bench_pkg/ActivateRequest")
(setf (get bench_pkg::ActivateRequest :definition-)
      "float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
float32 duration
---
float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
")

(setf (get bench_pkg::ActivateResponse :md5sum-) "251c4a167cb335bc980389871f0bb7af")
(setf (get bench_pkg::ActivateResponse :datatype-) "bench_pkg/ActivateResponse")
(setf (get bench_pkg::ActivateResponse :definition-)
      "float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
float32 duration
---
float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
")



(provide :bench_pkg/Activate "251c4a167cb335bc980389871f0bb7af")


