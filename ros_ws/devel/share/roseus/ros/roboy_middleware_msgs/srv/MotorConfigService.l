;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorConfigService)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorConfigService (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICE"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICEREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICEREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICERESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORCONFIGSERVICERESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::MotorConfigServiceRequest
  :super ros::object
  :slots (_legacy _config ))

(defmethod roboy_middleware_msgs::MotorConfigServiceRequest
  (:init
   (&key
    ((:legacy __legacy) nil)
    ((:config __config) (instance roboy_middleware_msgs::MotorConfig :init))
    )
   (send-super :init)
   (setq _legacy __legacy)
   (setq _config __config)
   self)
  (:legacy
   (&optional (__legacy :null))
   (if (not (eq __legacy :null)) (setq _legacy __legacy)) _legacy)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:serialization-length
   ()
   (+
    ;; bool _legacy
    1
    ;; roboy_middleware_msgs/MotorConfig _config
    (send _config :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _legacy
       (if _legacy (write-byte -1 s) (write-byte 0 s))
     ;; roboy_middleware_msgs/MotorConfig _config
       (send _config :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _legacy
     (setq _legacy (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; roboy_middleware_msgs/MotorConfig _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::MotorConfigServiceResponse
  :super ros::object
  :slots (_mode ))

(defmethod roboy_middleware_msgs::MotorConfigServiceResponse
  (:init
   (&key
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mode __mode)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32[] _mode
    (* 4    (length _mode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _mode
     (write-long (length _mode) s)
     (dotimes (i (length _mode))
       (write-long (elt _mode i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::MotorConfigService
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::MotorConfigService :md5sum-) "c7c106ea6c43e18d48624729d5844f3e")
(setf (get roboy_middleware_msgs::MotorConfigService :datatype-) "roboy_middleware_msgs/MotorConfigService")
(setf (get roboy_middleware_msgs::MotorConfigService :request) roboy_middleware_msgs::MotorConfigServiceRequest)
(setf (get roboy_middleware_msgs::MotorConfigService :response) roboy_middleware_msgs::MotorConfigServiceResponse)

(defmethod roboy_middleware_msgs::MotorConfigServiceRequest
  (:response () (instance roboy_middleware_msgs::MotorConfigServiceResponse :init)))

(setf (get roboy_middleware_msgs::MotorConfigServiceRequest :md5sum-) "c7c106ea6c43e18d48624729d5844f3e")
(setf (get roboy_middleware_msgs::MotorConfigServiceRequest :datatype-) "roboy_middleware_msgs/MotorConfigServiceRequest")
(setf (get roboy_middleware_msgs::MotorConfigServiceRequest :definition-)
      "bool legacy
MotorConfig config

================================================================================
MSG: roboy_middleware_msgs/MotorConfig
int32[] update_frequency
uint8[] global_id
uint8[] control_mode
float32[] PWMLimit
int32[] IntegralLimit
int32[] Kp
int32[] Ki
int32[] Kd
int32[] deadband
float32[] setpoint
---
int32[] mode

")

(setf (get roboy_middleware_msgs::MotorConfigServiceResponse :md5sum-) "c7c106ea6c43e18d48624729d5844f3e")
(setf (get roboy_middleware_msgs::MotorConfigServiceResponse :datatype-) "roboy_middleware_msgs/MotorConfigServiceResponse")
(setf (get roboy_middleware_msgs::MotorConfigServiceResponse :definition-)
      "bool legacy
MotorConfig config

================================================================================
MSG: roboy_middleware_msgs/MotorConfig
int32[] update_frequency
uint8[] global_id
uint8[] control_mode
float32[] PWMLimit
int32[] IntegralLimit
int32[] Kp
int32[] Ki
int32[] Kd
int32[] deadband
float32[] setpoint
---
int32[] mode

")



(provide :roboy_middleware_msgs/MotorConfigService "c7c106ea6c43e18d48624729d5844f3e")


