;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::QueryInput)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'QueryInput (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::QUERYINPUT")
  (make-package "BENCH_PKG::QUERYINPUT"))
(unless (find-package "BENCH_PKG::QUERYINPUTREQUEST")
  (make-package "BENCH_PKG::QUERYINPUTREQUEST"))
(unless (find-package "BENCH_PKG::QUERYINPUTRESPONSE")
  (make-package "BENCH_PKG::QUERYINPUTRESPONSE"))

(in-package "ROS")





(defclass bench_pkg::QueryInputRequest
  :super ros::object
  :slots ())

(defmethod bench_pkg::QueryInputRequest
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

(defclass bench_pkg::QueryInputResponse
  :super ros::object
  :slots ())

(defmethod bench_pkg::QueryInputResponse
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

(defclass bench_pkg::QueryInput
  :super ros::object
  :slots ())

(setf (get bench_pkg::QueryInput :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get bench_pkg::QueryInput :datatype-) "bench_pkg/QueryInput")
(setf (get bench_pkg::QueryInput :request) bench_pkg::QueryInputRequest)
(setf (get bench_pkg::QueryInput :response) bench_pkg::QueryInputResponse)

(defmethod bench_pkg::QueryInputRequest
  (:response () (instance bench_pkg::QueryInputResponse :init)))

(setf (get bench_pkg::QueryInputRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get bench_pkg::QueryInputRequest :datatype-) "bench_pkg/QueryInputRequest")
(setf (get bench_pkg::QueryInputRequest :definition-)
      "
---
")

(setf (get bench_pkg::QueryInputResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get bench_pkg::QueryInputResponse :datatype-) "bench_pkg/QueryInputResponse")
(setf (get bench_pkg::QueryInputResponse :definition-)
      "
---
")



(provide :bench_pkg/QueryInput "d41d8cd98f00b204e9800998ecf8427e")


