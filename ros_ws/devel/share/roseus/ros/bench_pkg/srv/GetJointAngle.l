;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::GetJointAngle)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'GetJointAngle (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::GETJOINTANGLE")
  (make-package "BENCH_PKG::GETJOINTANGLE"))
(unless (find-package "BENCH_PKG::GETJOINTANGLEREQUEST")
  (make-package "BENCH_PKG::GETJOINTANGLEREQUEST"))
(unless (find-package "BENCH_PKG::GETJOINTANGLERESPONSE")
  (make-package "BENCH_PKG::GETJOINTANGLERESPONSE"))

(in-package "ROS")





(defclass bench_pkg::GetJointAngleRequest
  :super ros::object
  :slots (_joint_name ))

(defmethod bench_pkg::GetJointAngleRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass bench_pkg::GetJointAngleResponse
  :super ros::object
  :slots (_joint_angle ))

(defmethod bench_pkg::GetJointAngleResponse
  (:init
   (&key
    ((:joint_angle __joint_angle) 0.0)
    )
   (send-super :init)
   (setq _joint_angle (float __joint_angle))
   self)
  (:joint_angle
   (&optional __joint_angle)
   (if __joint_angle (setq _joint_angle __joint_angle)) _joint_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _joint_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint_angle
       (sys::poke _joint_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint_angle
     (setq _joint_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::GetJointAngle
  :super ros::object
  :slots ())

(setf (get bench_pkg::GetJointAngle :md5sum-) "856421520b8199e4bd5f30cae2b9f0bb")
(setf (get bench_pkg::GetJointAngle :datatype-) "bench_pkg/GetJointAngle")
(setf (get bench_pkg::GetJointAngle :request) bench_pkg::GetJointAngleRequest)
(setf (get bench_pkg::GetJointAngle :response) bench_pkg::GetJointAngleResponse)

(defmethod bench_pkg::GetJointAngleRequest
  (:response () (instance bench_pkg::GetJointAngleResponse :init)))

(setf (get bench_pkg::GetJointAngleRequest :md5sum-) "856421520b8199e4bd5f30cae2b9f0bb")
(setf (get bench_pkg::GetJointAngleRequest :datatype-) "bench_pkg/GetJointAngleRequest")
(setf (get bench_pkg::GetJointAngleRequest :definition-)
      "string joint_name
---
float32 joint_angle
")

(setf (get bench_pkg::GetJointAngleResponse :md5sum-) "856421520b8199e4bd5f30cae2b9f0bb")
(setf (get bench_pkg::GetJointAngleResponse :datatype-) "bench_pkg/GetJointAngleResponse")
(setf (get bench_pkg::GetJointAngleResponse :definition-)
      "string joint_name
---
float32 joint_angle
")



(provide :bench_pkg/GetJointAngle "856421520b8199e4bd5f30cae2b9f0bb")


