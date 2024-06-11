;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::BodyPart)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'BodyPart (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART")
  (make-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))

(in-package "ROS")
;;//! \htmlinclude BodyPart.msg.html


(intern "*ENABLED*" (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(shadow '*ENABLED* (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(defconstant roboy_middleware_msgs::BodyPart::*ENABLED* 0)
(intern "*DISABLED*" (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(shadow '*DISABLED* (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(defconstant roboy_middleware_msgs::BodyPart::*DISABLED* 1)
(intern "*ERROR_CONDITION_A*" (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(shadow '*ERROR_CONDITION_A* (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(defconstant roboy_middleware_msgs::BodyPart::*ERROR_CONDITION_A* 2)
(intern "*ERROR_CONDITION_B*" (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(shadow '*ERROR_CONDITION_B* (find-package "ROBOY_MIDDLEWARE_MSGS::BODYPART"))
(defconstant roboy_middleware_msgs::BodyPart::*ERROR_CONDITION_B* 3)

(defun roboy_middleware_msgs::BodyPart-to-symbol (const)
  (cond
        ((= const 0) 'roboy_middleware_msgs::BodyPart::*ENABLED*)
        ((= const 1) 'roboy_middleware_msgs::BodyPart::*DISABLED*)
        ((= const 2) 'roboy_middleware_msgs::BodyPart::*ERROR_CONDITION_A*)
        ((= const 3) 'roboy_middleware_msgs::BodyPart::*ERROR_CONDITION_B*)
        (t nil)))

(defclass roboy_middleware_msgs::BodyPart
  :super ros::object
  :slots (_name _status ))

(defmethod roboy_middleware_msgs::BodyPart
  (:init
   (&key
    ((:name __name) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _status (round __status))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::BodyPart :md5sum-) "7244bd0a66f4dc551fcf27198addf4f4")
(setf (get roboy_middleware_msgs::BodyPart :datatype-) "roboy_middleware_msgs/BodyPart")
(setf (get roboy_middleware_msgs::BodyPart :definition-)
      "# Sample values
uint8 ENABLED=0
uint8 DISABLED=1
uint8 ERROR_CONDITION_A=2
uint8 ERROR_CONDITION_B=3

# Body part designator
string name

# Status byte implemented like Unix return codes:
# 0: All OK / Ready
# 1: Function disabled
# 2-100: Custom error codes indicating different stop conditions or
# malfunctions.
# 100-255: Custom readiness states. Some functionality still online / waiting
# for something.
#
uint8 status

")



(provide :roboy_middleware_msgs/BodyPart "7244bd0a66f4dc551fcf27198addf4f4")


