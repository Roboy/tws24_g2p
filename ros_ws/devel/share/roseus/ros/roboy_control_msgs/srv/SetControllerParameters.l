;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::SetControllerParameters)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'SetControllerParameters (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERS")
  (make-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERS"))
(unless (find-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERSREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERSREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERSRESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::SETCONTROLLERPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass roboy_control_msgs::SetControllerParametersRequest
  :super ros::object
  :slots (_kp _kd ))

(defmethod roboy_control_msgs::SetControllerParametersRequest
  (:init
   (&key
    ((:kp __kp) 0.0)
    ((:kd __kd) 0.0)
    )
   (send-super :init)
   (setq _kp (float __kp))
   (setq _kd (float __kd))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; float64 _kp
    8
    ;; float64 _kd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kp
     (setq _kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kd
     (setq _kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roboy_control_msgs::SetControllerParametersResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_control_msgs::SetControllerParametersResponse
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

(defclass roboy_control_msgs::SetControllerParameters
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::SetControllerParameters :md5sum-) "9f574aefbd146010c8b1b88ba0c9d622")
(setf (get roboy_control_msgs::SetControllerParameters :datatype-) "roboy_control_msgs/SetControllerParameters")
(setf (get roboy_control_msgs::SetControllerParameters :request) roboy_control_msgs::SetControllerParametersRequest)
(setf (get roboy_control_msgs::SetControllerParameters :response) roboy_control_msgs::SetControllerParametersResponse)

(defmethod roboy_control_msgs::SetControllerParametersRequest
  (:response () (instance roboy_control_msgs::SetControllerParametersResponse :init)))

(setf (get roboy_control_msgs::SetControllerParametersRequest :md5sum-) "9f574aefbd146010c8b1b88ba0c9d622")
(setf (get roboy_control_msgs::SetControllerParametersRequest :datatype-) "roboy_control_msgs/SetControllerParametersRequest")
(setf (get roboy_control_msgs::SetControllerParametersRequest :definition-)
      "float64 kp
float64 kd
---
bool success

")

(setf (get roboy_control_msgs::SetControllerParametersResponse :md5sum-) "9f574aefbd146010c8b1b88ba0c9d622")
(setf (get roboy_control_msgs::SetControllerParametersResponse :datatype-) "roboy_control_msgs/SetControllerParametersResponse")
(setf (get roboy_control_msgs::SetControllerParametersResponse :definition-)
      "float64 kp
float64 kd
---
bool success

")



(provide :roboy_control_msgs/SetControllerParameters "9f574aefbd146010c8b1b88ba0c9d622")


