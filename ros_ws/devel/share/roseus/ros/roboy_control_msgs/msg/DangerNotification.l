;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::DangerNotification)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'DangerNotification (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::DANGERNOTIFICATION")
  (make-package "ROBOY_CONTROL_MSGS::DANGERNOTIFICATION"))

(in-package "ROS")
;;//! \htmlinclude DangerNotification.msg.html


(defclass roboy_control_msgs::DangerNotification
  :super ros::object
  :slots (_code _object _msg _extra _validity_duration ))

(defmethod roboy_control_msgs::DangerNotification
  (:init
   (&key
    ((:code __code) 0)
    ((:object __object) "")
    ((:msg __msg) "")
    ((:extra __extra) "")
    ((:validity_duration __validity_duration) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _object (string __object))
   (setq _msg (string __msg))
   (setq _extra (string __extra))
   (setq _validity_duration (round __validity_duration))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:extra
   (&optional __extra)
   (if __extra (setq _extra __extra)) _extra)
  (:validity_duration
   (&optional __validity_duration)
   (if __validity_duration (setq _validity_duration __validity_duration)) _validity_duration)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ;; string _object
    4 (length _object)
    ;; string _msg
    4 (length _msg)
    ;; string _extra
    4 (length _extra)
    ;; int32 _validity_duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; string _extra
       (write-long (length _extra) s) (princ _extra s)
     ;; int32 _validity_duration
       (write-long _validity_duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _extra
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _validity_duration
     (setq _validity_duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_control_msgs::DangerNotification :md5sum-) "f9b10763b06033e440cfab3c2b143fa6")
(setf (get roboy_control_msgs::DangerNotification :datatype-) "roboy_control_msgs/DangerNotification")
(setf (get roboy_control_msgs::DangerNotification :definition-)
      "int32 code
string object
string msg
string extra
int32 validity_duration
")



(provide :roboy_control_msgs/DangerNotification "f9b10763b06033e440cfab3c2b143fa6")


