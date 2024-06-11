;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::JointAngleData)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'JointAngleData (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::JOINTANGLEDATA")
  (make-package "BENCH_PKG::JOINTANGLEDATA"))

(in-package "ROS")
;;//! \htmlinclude JointAngleData.msg.html


(defclass bench_pkg::JointAngleData
  :super ros::object
  :slots (_joint_name _joint_angle ))

(defmethod bench_pkg::JointAngleData
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:joint_angle __joint_angle) 0.0)
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _joint_angle (float __joint_angle))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:joint_angle
   (&optional __joint_angle)
   (if __joint_angle (setq _joint_angle __joint_angle)) _joint_angle)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; float32 _joint_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; float32 _joint_angle
       (sys::poke _joint_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _joint_angle
     (setq _joint_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bench_pkg::JointAngleData :md5sum-) "7c148065b218648de52ffe266f4fc08a")
(setf (get bench_pkg::JointAngleData :datatype-) "bench_pkg/JointAngleData")
(setf (get bench_pkg::JointAngleData :definition-)
      "string joint_name
float32 joint_angle
")



(provide :bench_pkg/JointAngleData "7c148065b218648de52ffe266f4fc08a")


