;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::SetInt16)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'SetInt16 (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETINT16")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETINT16"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETINT16REQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETINT16REQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETINT16RESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETINT16RESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::SetInt16Request
  :super ros::object
  :slots (_setpoint _motors ))

(defmethod roboy_middleware_msgs::SetInt16Request
  (:init
   (&key
    ((:setpoint __setpoint) 0)
    ((:motors __motors) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _setpoint (round __setpoint))
   (setq _motors __motors)
   self)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:motors
   (&optional __motors)
   (if __motors (setq _motors __motors)) _motors)
  (:serialization-length
   ()
   (+
    ;; int16 _setpoint
    2
    ;; int16[] _motors
    (* 2    (length _motors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _setpoint
       (write-word _setpoint s)
     ;; int16[] _motors
     (write-long (length _motors) s)
     (dotimes (i (length _motors))
       (write-word (elt _motors i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _setpoint
     (setq _setpoint (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _motors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motors i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::SetInt16Response
  :super ros::object
  :slots ())

(defmethod roboy_middleware_msgs::SetInt16Response
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

(defclass roboy_middleware_msgs::SetInt16
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::SetInt16 :md5sum-) "a4f5a371b10fcd86f80b17a170c1ba59")
(setf (get roboy_middleware_msgs::SetInt16 :datatype-) "roboy_middleware_msgs/SetInt16")
(setf (get roboy_middleware_msgs::SetInt16 :request) roboy_middleware_msgs::SetInt16Request)
(setf (get roboy_middleware_msgs::SetInt16 :response) roboy_middleware_msgs::SetInt16Response)

(defmethod roboy_middleware_msgs::SetInt16Request
  (:response () (instance roboy_middleware_msgs::SetInt16Response :init)))

(setf (get roboy_middleware_msgs::SetInt16Request :md5sum-) "a4f5a371b10fcd86f80b17a170c1ba59")
(setf (get roboy_middleware_msgs::SetInt16Request :datatype-) "roboy_middleware_msgs/SetInt16Request")
(setf (get roboy_middleware_msgs::SetInt16Request :definition-)
      "int16 setpoint
int16[] motors
---

")

(setf (get roboy_middleware_msgs::SetInt16Response :md5sum-) "a4f5a371b10fcd86f80b17a170c1ba59")
(setf (get roboy_middleware_msgs::SetInt16Response :datatype-) "roboy_middleware_msgs/SetInt16Response")
(setf (get roboy_middleware_msgs::SetInt16Response :definition-)
      "int16 setpoint
int16[] motors
---

")



(provide :roboy_middleware_msgs/SetInt16 "a4f5a371b10fcd86f80b17a170c1ba59")


