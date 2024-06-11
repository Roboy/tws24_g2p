;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::Move)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'Move (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::MOVE")
  (make-package "BENCH_PKG::MOVE"))
(unless (find-package "BENCH_PKG::MOVEREQUEST")
  (make-package "BENCH_PKG::MOVEREQUEST"))
(unless (find-package "BENCH_PKG::MOVERESPONSE")
  (make-package "BENCH_PKG::MOVERESPONSE"))

(in-package "ROS")





(defclass bench_pkg::MoveRequest
  :super ros::object
  :slots (_current_angle _current_angular_velocity _current_angular_acceleration _desired_angle _desired_angular_velocity _desired_angular_acceleration ))

(defmethod bench_pkg::MoveRequest
  (:init
   (&key
    ((:current_angle __current_angle) 0.0)
    ((:current_angular_velocity __current_angular_velocity) 0.0)
    ((:current_angular_acceleration __current_angular_acceleration) 0.0)
    ((:desired_angle __desired_angle) 0.0)
    ((:desired_angular_velocity __desired_angular_velocity) 0.0)
    ((:desired_angular_acceleration __desired_angular_acceleration) 0.0)
    )
   (send-super :init)
   (setq _current_angle (float __current_angle))
   (setq _current_angular_velocity (float __current_angular_velocity))
   (setq _current_angular_acceleration (float __current_angular_acceleration))
   (setq _desired_angle (float __desired_angle))
   (setq _desired_angular_velocity (float __desired_angular_velocity))
   (setq _desired_angular_acceleration (float __desired_angular_acceleration))
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
  (:desired_angle
   (&optional __desired_angle)
   (if __desired_angle (setq _desired_angle __desired_angle)) _desired_angle)
  (:desired_angular_velocity
   (&optional __desired_angular_velocity)
   (if __desired_angular_velocity (setq _desired_angular_velocity __desired_angular_velocity)) _desired_angular_velocity)
  (:desired_angular_acceleration
   (&optional __desired_angular_acceleration)
   (if __desired_angular_acceleration (setq _desired_angular_acceleration __desired_angular_acceleration)) _desired_angular_acceleration)
  (:serialization-length
   ()
   (+
    ;; float32 _current_angle
    4
    ;; float32 _current_angular_velocity
    4
    ;; float32 _current_angular_acceleration
    4
    ;; float32 _desired_angle
    4
    ;; float32 _desired_angular_velocity
    4
    ;; float32 _desired_angular_acceleration
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
     ;; float32 _desired_angle
       (sys::poke _desired_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desired_angular_velocity
       (sys::poke _desired_angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _desired_angular_acceleration
       (sys::poke _desired_angular_acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _desired_angle
     (setq _desired_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_angular_velocity
     (setq _desired_angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_angular_acceleration
     (setq _desired_angular_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::MoveResponse
  :super ros::object
  :slots (_flex_myobrick_pwm _extend_myobrick_pwm ))

(defmethod bench_pkg::MoveResponse
  (:init
   (&key
    ((:flex_myobrick_pwm __flex_myobrick_pwm) 0.0)
    ((:extend_myobrick_pwm __extend_myobrick_pwm) 0.0)
    )
   (send-super :init)
   (setq _flex_myobrick_pwm (float __flex_myobrick_pwm))
   (setq _extend_myobrick_pwm (float __extend_myobrick_pwm))
   self)
  (:flex_myobrick_pwm
   (&optional __flex_myobrick_pwm)
   (if __flex_myobrick_pwm (setq _flex_myobrick_pwm __flex_myobrick_pwm)) _flex_myobrick_pwm)
  (:extend_myobrick_pwm
   (&optional __extend_myobrick_pwm)
   (if __extend_myobrick_pwm (setq _extend_myobrick_pwm __extend_myobrick_pwm)) _extend_myobrick_pwm)
  (:serialization-length
   ()
   (+
    ;; float32 _flex_myobrick_pwm
    4
    ;; float32 _extend_myobrick_pwm
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _flex_myobrick_pwm
     (setq _flex_myobrick_pwm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _extend_myobrick_pwm
     (setq _extend_myobrick_pwm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::Move
  :super ros::object
  :slots ())

(setf (get bench_pkg::Move :md5sum-) "998958e5a974f5bf0d304c6972634d0d")
(setf (get bench_pkg::Move :datatype-) "bench_pkg/Move")
(setf (get bench_pkg::Move :request) bench_pkg::MoveRequest)
(setf (get bench_pkg::Move :response) bench_pkg::MoveResponse)

(defmethod bench_pkg::MoveRequest
  (:response () (instance bench_pkg::MoveResponse :init)))

(setf (get bench_pkg::MoveRequest :md5sum-) "998958e5a974f5bf0d304c6972634d0d")
(setf (get bench_pkg::MoveRequest :datatype-) "bench_pkg/MoveRequest")
(setf (get bench_pkg::MoveRequest :definition-)
      "float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
float32 desired_angle
float32 desired_angular_velocity
float32 desired_angular_acceleration
---
float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
")

(setf (get bench_pkg::MoveResponse :md5sum-) "998958e5a974f5bf0d304c6972634d0d")
(setf (get bench_pkg::MoveResponse :datatype-) "bench_pkg/MoveResponse")
(setf (get bench_pkg::MoveResponse :definition-)
      "float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
float32 desired_angle
float32 desired_angular_velocity
float32 desired_angular_acceleration
---
float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
")



(provide :bench_pkg/Move "998958e5a974f5bf0d304c6972634d0d")


