;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::DesiredKinematicsInput)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'DesiredKinematicsInput (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::DESIREDKINEMATICSINPUT")
  (make-package "BENCH_PKG::DESIREDKINEMATICSINPUT"))
(unless (find-package "BENCH_PKG::DESIREDKINEMATICSINPUTREQUEST")
  (make-package "BENCH_PKG::DESIREDKINEMATICSINPUTREQUEST"))
(unless (find-package "BENCH_PKG::DESIREDKINEMATICSINPUTRESPONSE")
  (make-package "BENCH_PKG::DESIREDKINEMATICSINPUTRESPONSE"))

(in-package "ROS")





(defclass bench_pkg::DesiredKinematicsInputRequest
  :super ros::object
  :slots ())

(defmethod bench_pkg::DesiredKinematicsInputRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bench_pkg::DesiredKinematicsInputResponse
  :super ros::object
  :slots (_desired_angle _desired_angular_velocity _desired_angular_acceleration ))

(defmethod bench_pkg::DesiredKinematicsInputResponse
  (:init
   (&key
    ((:desired_angle __desired_angle) 0.0)
    ((:desired_angular_velocity __desired_angular_velocity) 0.0)
    ((:desired_angular_acceleration __desired_angular_acceleration) 0.0)
    )
   (send-super :init)
   (setq _desired_angle (float __desired_angle))
   (setq _desired_angular_velocity (float __desired_angular_velocity))
   (setq _desired_angular_acceleration (float __desired_angular_acceleration))
   self)
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
   ;; float32 _desired_angle
     (setq _desired_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_angular_velocity
     (setq _desired_angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _desired_angular_acceleration
     (setq _desired_angular_acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::DesiredKinematicsInput
  :super ros::object
  :slots ())

(setf (get bench_pkg::DesiredKinematicsInput :md5sum-) "df533ed2fd99d430c4c78a9486207074")
(setf (get bench_pkg::DesiredKinematicsInput :datatype-) "bench_pkg/DesiredKinematicsInput")
(setf (get bench_pkg::DesiredKinematicsInput :request) bench_pkg::DesiredKinematicsInputRequest)
(setf (get bench_pkg::DesiredKinematicsInput :response) bench_pkg::DesiredKinematicsInputResponse)

(defmethod bench_pkg::DesiredKinematicsInputRequest
  (:response () (instance bench_pkg::DesiredKinematicsInputResponse :init)))

(setf (get bench_pkg::DesiredKinematicsInputRequest :md5sum-) "df533ed2fd99d430c4c78a9486207074")
(setf (get bench_pkg::DesiredKinematicsInputRequest :datatype-) "bench_pkg/DesiredKinematicsInputRequest")
(setf (get bench_pkg::DesiredKinematicsInputRequest :definition-)
      "
---
float32 desired_angle
float32 desired_angular_velocity
float32 desired_angular_acceleration
")

(setf (get bench_pkg::DesiredKinematicsInputResponse :md5sum-) "df533ed2fd99d430c4c78a9486207074")
(setf (get bench_pkg::DesiredKinematicsInputResponse :datatype-) "bench_pkg/DesiredKinematicsInputResponse")
(setf (get bench_pkg::DesiredKinematicsInputResponse :definition-)
      "
---
float32 desired_angle
float32 desired_angular_velocity
float32 desired_angular_acceleration
")



(provide :bench_pkg/DesiredKinematicsInput "df533ed2fd99d430c4c78a9486207074")


