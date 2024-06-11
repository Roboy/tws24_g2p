;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::Refine)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'Refine (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::REFINE")
  (make-package "BENCH_PKG::REFINE"))
(unless (find-package "BENCH_PKG::REFINEREQUEST")
  (make-package "BENCH_PKG::REFINEREQUEST"))
(unless (find-package "BENCH_PKG::REFINERESPONSE")
  (make-package "BENCH_PKG::REFINERESPONSE"))

(in-package "ROS")





(defclass bench_pkg::RefineRequest
  :super ros::object
  :slots ())

(defmethod bench_pkg::RefineRequest
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

(defclass bench_pkg::RefineResponse
  :super ros::object
  :slots (_success ))

(defmethod bench_pkg::RefineResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bench_pkg::Refine
  :super ros::object
  :slots ())

(setf (get bench_pkg::Refine :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::Refine :datatype-) "bench_pkg/Refine")
(setf (get bench_pkg::Refine :request) bench_pkg::RefineRequest)
(setf (get bench_pkg::Refine :response) bench_pkg::RefineResponse)

(defmethod bench_pkg::RefineRequest
  (:response () (instance bench_pkg::RefineResponse :init)))

(setf (get bench_pkg::RefineRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::RefineRequest :datatype-) "bench_pkg/RefineRequest")
(setf (get bench_pkg::RefineRequest :definition-)
      "
---
bool success
")

(setf (get bench_pkg::RefineResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::RefineResponse :datatype-) "bench_pkg/RefineResponse")
(setf (get bench_pkg::RefineResponse :definition-)
      "
---
bool success
")



(provide :bench_pkg/Refine "358e233cde0c8a8bcfea4ce193f8fc15")


