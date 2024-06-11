;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorInfo)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorInfo (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORINFO")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORINFO"))

(in-package "ROS")
;;//! \htmlinclude MotorInfo.msg.html


(defclass roboy_middleware_msgs::MotorInfo
  :super ros::object
  :slots (_global_id _setpoint _control_mode _Kp _Ki _Kd _deadband _IntegralLimit _PWMLimit _pwm _current_limit _communication_quality _error_code _neopixelColor ))

(defmethod roboy_middleware_msgs::MotorInfo
  (:init
   (&key
    ((:global_id __global_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:setpoint __setpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:control_mode __control_mode) (make-array 0 :initial-element 0 :element-type :char))
    ((:Kp __Kp) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Ki __Ki) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Kd __Kd) (make-array 0 :initial-element 0 :element-type :integer))
    ((:deadband __deadband) (make-array 0 :initial-element 0 :element-type :integer))
    ((:IntegralLimit __IntegralLimit) (make-array 0 :initial-element 0 :element-type :integer))
    ((:PWMLimit __PWMLimit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pwm __pwm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_limit __current_limit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:communication_quality __communication_quality) (make-array 0 :initial-element 0 :element-type :integer))
    ((:error_code __error_code) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:neopixelColor __neopixelColor) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _global_id __global_id)
   (setq _setpoint __setpoint)
   (setq _control_mode __control_mode)
   (setq _Kp __Kp)
   (setq _Ki __Ki)
   (setq _Kd __Kd)
   (setq _deadband __deadband)
   (setq _IntegralLimit __IntegralLimit)
   (setq _PWMLimit __PWMLimit)
   (setq _pwm __pwm)
   (setq _current_limit __current_limit)
   (setq _communication_quality __communication_quality)
   (setq _error_code __error_code)
   (setq _neopixelColor __neopixelColor)
   self)
  (:global_id
   (&optional __global_id)
   (if __global_id (setq _global_id __global_id)) _global_id)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Ki
   (&optional __Ki)
   (if __Ki (setq _Ki __Ki)) _Ki)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:deadband
   (&optional __deadband)
   (if __deadband (setq _deadband __deadband)) _deadband)
  (:IntegralLimit
   (&optional __IntegralLimit)
   (if __IntegralLimit (setq _IntegralLimit __IntegralLimit)) _IntegralLimit)
  (:PWMLimit
   (&optional __PWMLimit)
   (if __PWMLimit (setq _PWMLimit __PWMLimit)) _PWMLimit)
  (:pwm
   (&optional __pwm)
   (if __pwm (setq _pwm __pwm)) _pwm)
  (:current_limit
   (&optional __current_limit)
   (if __current_limit (setq _current_limit __current_limit)) _current_limit)
  (:communication_quality
   (&optional __communication_quality)
   (if __communication_quality (setq _communication_quality __communication_quality)) _communication_quality)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:neopixelColor
   (&optional __neopixelColor)
   (if __neopixelColor (setq _neopixelColor __neopixelColor)) _neopixelColor)
  (:serialization-length
   ()
   (+
    ;; uint8[] _global_id
    (* 1    (length _global_id)) 4
    ;; float32[] _setpoint
    (* 4    (length _setpoint)) 4
    ;; uint8[] _control_mode
    (* 1    (length _control_mode)) 4
    ;; int16[] _Kp
    (* 2    (length _Kp)) 4
    ;; int16[] _Ki
    (* 2    (length _Ki)) 4
    ;; int16[] _Kd
    (* 2    (length _Kd)) 4
    ;; int32[] _deadband
    (* 4    (length _deadband)) 4
    ;; int32[] _IntegralLimit
    (* 4    (length _IntegralLimit)) 4
    ;; float32[] _PWMLimit
    (* 4    (length _PWMLimit)) 4
    ;; float32[] _pwm
    (* 4    (length _pwm)) 4
    ;; float32[] _current_limit
    (* 4    (length _current_limit)) 4
    ;; int32[] _communication_quality
    (* 4    (length _communication_quality)) 4
    ;; string[] _error_code
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _error_code)) 4
    ;; uint32[] _neopixelColor
    (* 4    (length _neopixelColor)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _global_id
     (write-long (length _global_id) s)
     (princ _global_id s)
     ;; float32[] _setpoint
     (write-long (length _setpoint) s)
     (dotimes (i (length _setpoint))
       (sys::poke (elt _setpoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _control_mode
     (write-long (length _control_mode) s)
     (princ _control_mode s)
     ;; int16[] _Kp
     (write-long (length _Kp) s)
     (dotimes (i (length _Kp))
       (write-word (elt _Kp i) s)
       )
     ;; int16[] _Ki
     (write-long (length _Ki) s)
     (dotimes (i (length _Ki))
       (write-word (elt _Ki i) s)
       )
     ;; int16[] _Kd
     (write-long (length _Kd) s)
     (dotimes (i (length _Kd))
       (write-word (elt _Kd i) s)
       )
     ;; int32[] _deadband
     (write-long (length _deadband) s)
     (dotimes (i (length _deadband))
       (write-long (elt _deadband i) s)
       )
     ;; int32[] _IntegralLimit
     (write-long (length _IntegralLimit) s)
     (dotimes (i (length _IntegralLimit))
       (write-long (elt _IntegralLimit i) s)
       )
     ;; float32[] _PWMLimit
     (write-long (length _PWMLimit) s)
     (dotimes (i (length _PWMLimit))
       (sys::poke (elt _PWMLimit i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pwm
     (write-long (length _pwm) s)
     (dotimes (i (length _pwm))
       (sys::poke (elt _pwm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _current_limit
     (write-long (length _current_limit) s)
     (dotimes (i (length _current_limit))
       (sys::poke (elt _current_limit i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _communication_quality
     (write-long (length _communication_quality) s)
     (dotimes (i (length _communication_quality))
       (write-long (elt _communication_quality i) s)
       )
     ;; string[] _error_code
     (write-long (length _error_code) s)
     (dolist (elem _error_code)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32[] _neopixelColor
     (write-long (length _neopixelColor) s)
     (dotimes (i (length _neopixelColor))
       (write-long (elt _neopixelColor i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _global_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _global_id (make-array n :element-type :char))
     (replace _global_id buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _setpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _setpoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _control_mode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _control_mode (make-array n :element-type :char))
     (replace _control_mode buf :start2 ptr-) (incf ptr- n))
   ;; int16[] _Kp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Kp (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Kp i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _Ki
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Ki (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Ki i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _Kd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Kd (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Kd i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int32[] _deadband
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deadband (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _deadband i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _IntegralLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _IntegralLimit (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _IntegralLimit i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _PWMLimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _PWMLimit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _PWMLimit i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pwm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pwm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pwm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _current_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_limit i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _communication_quality
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _communication_quality (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _communication_quality i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _error_code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_code (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error_code i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32[] _neopixelColor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _neopixelColor (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _neopixelColor i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::MotorInfo :md5sum-) "1887edfb7a6740fa9c91d740a81944fd")
(setf (get roboy_middleware_msgs::MotorInfo :datatype-) "roboy_middleware_msgs/MotorInfo")
(setf (get roboy_middleware_msgs::MotorInfo :definition-)
      "uint8[] global_id
float32[] setpoint
uint8[] control_mode
int16[] Kp
int16[] Ki
int16[] Kd
int32[] deadband
int32[] IntegralLimit
float32[] PWMLimit
float32[] pwm
float32[] current_limit
int32[] communication_quality
string[] error_code
uint32[] neopixelColor

")



(provide :roboy_middleware_msgs/MotorInfo "1887edfb7a6740fa9c91d740a81944fd")


