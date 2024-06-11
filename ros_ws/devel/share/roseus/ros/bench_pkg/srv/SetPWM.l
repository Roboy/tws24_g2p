;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::SetPWM)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'SetPWM (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::SETPWM")
  (make-package "BENCH_PKG::SETPWM"))
(unless (find-package "BENCH_PKG::SETPWMREQUEST")
  (make-package "BENCH_PKG::SETPWMREQUEST"))
(unless (find-package "BENCH_PKG::SETPWMRESPONSE")
  (make-package "BENCH_PKG::SETPWMRESPONSE"))

(in-package "ROS")





(defclass bench_pkg::SetPWMRequest
  :super ros::object
  :slots (_flex_myobrick_pwm _extend_myobrick_pwm ))

(defmethod bench_pkg::SetPWMRequest
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

(defclass bench_pkg::SetPWMResponse
  :super ros::object
  :slots (_success ))

(defmethod bench_pkg::SetPWMResponse
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

(defclass bench_pkg::SetPWM
  :super ros::object
  :slots ())

(setf (get bench_pkg::SetPWM :md5sum-) "20d18a942afc8e121fb01cf2222fde88")
(setf (get bench_pkg::SetPWM :datatype-) "bench_pkg/SetPWM")
(setf (get bench_pkg::SetPWM :request) bench_pkg::SetPWMRequest)
(setf (get bench_pkg::SetPWM :response) bench_pkg::SetPWMResponse)

(defmethod bench_pkg::SetPWMRequest
  (:response () (instance bench_pkg::SetPWMResponse :init)))

(setf (get bench_pkg::SetPWMRequest :md5sum-) "20d18a942afc8e121fb01cf2222fde88")
(setf (get bench_pkg::SetPWMRequest :datatype-) "bench_pkg/SetPWMRequest")
(setf (get bench_pkg::SetPWMRequest :definition-)
      "float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
---
bool success
")

(setf (get bench_pkg::SetPWMResponse :md5sum-) "20d18a942afc8e121fb01cf2222fde88")
(setf (get bench_pkg::SetPWMResponse :datatype-) "bench_pkg/SetPWMResponse")
(setf (get bench_pkg::SetPWMResponse :definition-)
      "float32 flex_myobrick_pwm
float32 extend_myobrick_pwm
---
bool success
")



(provide :bench_pkg/SetPWM "20d18a942afc8e121fb01cf2222fde88")


