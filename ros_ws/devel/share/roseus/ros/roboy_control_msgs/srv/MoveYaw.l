;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::MoveYaw)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'MoveYaw (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::MOVEYAW")
  (make-package "ROBOY_CONTROL_MSGS::MOVEYAW"))
(unless (find-package "ROBOY_CONTROL_MSGS::MOVEYAWREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::MOVEYAWREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::MOVEYAWRESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::MOVEYAWRESPONSE"))

(in-package "ROS")





(defclass roboy_control_msgs::MoveYawRequest
  :super ros::object
  :slots (_value ))

(defmethod roboy_control_msgs::MoveYawRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_control_msgs::MoveYawResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_control_msgs::MoveYawResponse
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

(defclass roboy_control_msgs::MoveYaw
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::MoveYaw :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_control_msgs::MoveYaw :datatype-) "roboy_control_msgs/MoveYaw")
(setf (get roboy_control_msgs::MoveYaw :request) roboy_control_msgs::MoveYawRequest)
(setf (get roboy_control_msgs::MoveYaw :response) roboy_control_msgs::MoveYawResponse)

(defmethod roboy_control_msgs::MoveYawRequest
  (:response () (instance roboy_control_msgs::MoveYawResponse :init)))

(setf (get roboy_control_msgs::MoveYawRequest :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_control_msgs::MoveYawRequest :datatype-) "roboy_control_msgs/MoveYawRequest")
(setf (get roboy_control_msgs::MoveYawRequest :definition-)
      "int32 value
---
bool success
")

(setf (get roboy_control_msgs::MoveYawResponse :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get roboy_control_msgs::MoveYawResponse :datatype-) "roboy_control_msgs/MoveYawResponse")
(setf (get roboy_control_msgs::MoveYawResponse :definition-)
      "int32 value
---
bool success
")



(provide :roboy_control_msgs/MoveYaw "bc437afb45673379bdb9f299f9cbbc9e")


