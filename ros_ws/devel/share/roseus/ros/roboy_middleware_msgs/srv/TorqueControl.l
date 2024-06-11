;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::TorqueControl)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'TorqueControl (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROL")
  (make-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROL"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROLREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROLREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROLRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::TORQUECONTROLRESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::TorqueControlRequest
  :super ros::object
  :slots (_joint_names _torque ))

(defmethod roboy_middleware_msgs::TorqueControlRequest
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _torque __torque)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float32[] _torque
    (* 4    (length _torque)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _torque
     (write-long (length _torque) s)
     (dotimes (i (length _torque))
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torque i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::TorqueControlResponse
  :super ros::object
  :slots ())

(defmethod roboy_middleware_msgs::TorqueControlResponse
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

(defclass roboy_middleware_msgs::TorqueControl
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::TorqueControl :md5sum-) "41b1f656e77197c6e815a8a1ff7ad441")
(setf (get roboy_middleware_msgs::TorqueControl :datatype-) "roboy_middleware_msgs/TorqueControl")
(setf (get roboy_middleware_msgs::TorqueControl :request) roboy_middleware_msgs::TorqueControlRequest)
(setf (get roboy_middleware_msgs::TorqueControl :response) roboy_middleware_msgs::TorqueControlResponse)

(defmethod roboy_middleware_msgs::TorqueControlRequest
  (:response () (instance roboy_middleware_msgs::TorqueControlResponse :init)))

(setf (get roboy_middleware_msgs::TorqueControlRequest :md5sum-) "41b1f656e77197c6e815a8a1ff7ad441")
(setf (get roboy_middleware_msgs::TorqueControlRequest :datatype-) "roboy_middleware_msgs/TorqueControlRequest")
(setf (get roboy_middleware_msgs::TorqueControlRequest :definition-)
      "string[] joint_names
float32[] torque
---

")

(setf (get roboy_middleware_msgs::TorqueControlResponse :md5sum-) "41b1f656e77197c6e815a8a1ff7ad441")
(setf (get roboy_middleware_msgs::TorqueControlResponse :datatype-) "roboy_middleware_msgs/TorqueControlResponse")
(setf (get roboy_middleware_msgs::TorqueControlResponse :definition-)
      "string[] joint_names
float32[] torque
---

")



(provide :roboy_middleware_msgs/TorqueControl "41b1f656e77197c6e815a8a1ff7ad441")


