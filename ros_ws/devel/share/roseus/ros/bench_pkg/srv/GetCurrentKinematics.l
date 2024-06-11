;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::GetCurrentKinematics)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'GetCurrentKinematics (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::GETCURRENTKINEMATICS")
  (make-package "BENCH_PKG::GETCURRENTKINEMATICS"))
(unless (find-package "BENCH_PKG::GETCURRENTKINEMATICSREQUEST")
  (make-package "BENCH_PKG::GETCURRENTKINEMATICSREQUEST"))
(unless (find-package "BENCH_PKG::GETCURRENTKINEMATICSRESPONSE")
  (make-package "BENCH_PKG::GETCURRENTKINEMATICSRESPONSE"))

(in-package "ROS")





(defclass bench_pkg::GetCurrentKinematicsRequest
  :super ros::object
  :slots ())

(defmethod bench_pkg::GetCurrentKinematicsRequest
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

(defclass bench_pkg::GetCurrentKinematicsResponse
  :super ros::object
  :slots (_current_angle _current_angular_velocity _current_angular_acceleration ))

(defmethod bench_pkg::GetCurrentKinematicsResponse
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

(defclass bench_pkg::GetCurrentKinematics
  :super ros::object
  :slots ())

(setf (get bench_pkg::GetCurrentKinematics :md5sum-) "94213a82b2b3ecbefd3ad0c853a1bfcf")
(setf (get bench_pkg::GetCurrentKinematics :datatype-) "bench_pkg/GetCurrentKinematics")
(setf (get bench_pkg::GetCurrentKinematics :request) bench_pkg::GetCurrentKinematicsRequest)
(setf (get bench_pkg::GetCurrentKinematics :response) bench_pkg::GetCurrentKinematicsResponse)

(defmethod bench_pkg::GetCurrentKinematicsRequest
  (:response () (instance bench_pkg::GetCurrentKinematicsResponse :init)))

(setf (get bench_pkg::GetCurrentKinematicsRequest :md5sum-) "94213a82b2b3ecbefd3ad0c853a1bfcf")
(setf (get bench_pkg::GetCurrentKinematicsRequest :datatype-) "bench_pkg/GetCurrentKinematicsRequest")
(setf (get bench_pkg::GetCurrentKinematicsRequest :definition-)
      "
---
float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
")

(setf (get bench_pkg::GetCurrentKinematicsResponse :md5sum-) "94213a82b2b3ecbefd3ad0c853a1bfcf")
(setf (get bench_pkg::GetCurrentKinematicsResponse :datatype-) "bench_pkg/GetCurrentKinematicsResponse")
(setf (get bench_pkg::GetCurrentKinematicsResponse :definition-)
      "
---
float32 current_angle
float32 current_angular_velocity
float32 current_angular_acceleration
")



(provide :bench_pkg/GetCurrentKinematics "94213a82b2b3ecbefd3ad0c853a1bfcf")


