;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::Babble)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'Babble (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::BABBLE")
  (make-package "BENCH_PKG::BABBLE"))
(unless (find-package "BENCH_PKG::BABBLEREQUEST")
  (make-package "BENCH_PKG::BABBLEREQUEST"))
(unless (find-package "BENCH_PKG::BABBLERESPONSE")
  (make-package "BENCH_PKG::BABBLERESPONSE"))

(in-package "ROS")





(defclass bench_pkg::BabbleRequest
  :super ros::object
  :slots ())

(defmethod bench_pkg::BabbleRequest
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

(defclass bench_pkg::BabbleResponse
  :super ros::object
  :slots (_success ))

(defmethod bench_pkg::BabbleResponse
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

(defclass bench_pkg::Babble
  :super ros::object
  :slots ())

(setf (get bench_pkg::Babble :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::Babble :datatype-) "bench_pkg/Babble")
(setf (get bench_pkg::Babble :request) bench_pkg::BabbleRequest)
(setf (get bench_pkg::Babble :response) bench_pkg::BabbleResponse)

(defmethod bench_pkg::BabbleRequest
  (:response () (instance bench_pkg::BabbleResponse :init)))

(setf (get bench_pkg::BabbleRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::BabbleRequest :datatype-) "bench_pkg/BabbleRequest")
(setf (get bench_pkg::BabbleRequest :definition-)
      "
---
bool success
")

(setf (get bench_pkg::BabbleResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get bench_pkg::BabbleResponse :datatype-) "bench_pkg/BabbleResponse")
(setf (get bench_pkg::BabbleResponse :definition-)
      "
---
bool success
")



(provide :bench_pkg/Babble "358e233cde0c8a8bcfea4ce193f8fc15")


