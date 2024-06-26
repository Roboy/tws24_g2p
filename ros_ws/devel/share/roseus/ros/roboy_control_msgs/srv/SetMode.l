;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::SetMode)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'SetMode (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::SETMODE")
  (make-package "ROBOY_CONTROL_MSGS::SETMODE"))
(unless (find-package "ROBOY_CONTROL_MSGS::SETMODEREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::SETMODEREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::SETMODERESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::SETMODERESPONSE"))

(in-package "ROS")





(defclass roboy_control_msgs::SetModeRequest
  :super ros::object
  :slots (_id _mode ))

(defmethod roboy_control_msgs::SetModeRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _mode (round __mode))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass roboy_control_msgs::SetModeResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_control_msgs::SetModeResponse
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

(defclass roboy_control_msgs::SetMode
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::SetMode :md5sum-) "16becad94c6302504e3fb238db13fc32")
(setf (get roboy_control_msgs::SetMode :datatype-) "roboy_control_msgs/SetMode")
(setf (get roboy_control_msgs::SetMode :request) roboy_control_msgs::SetModeRequest)
(setf (get roboy_control_msgs::SetMode :response) roboy_control_msgs::SetModeResponse)

(defmethod roboy_control_msgs::SetModeRequest
  (:response () (instance roboy_control_msgs::SetModeResponse :init)))

(setf (get roboy_control_msgs::SetModeRequest :md5sum-) "16becad94c6302504e3fb238db13fc32")
(setf (get roboy_control_msgs::SetModeRequest :datatype-) "roboy_control_msgs/SetModeRequest")
(setf (get roboy_control_msgs::SetModeRequest :definition-)
      "int8 id
int8 mode
---
bool success

")

(setf (get roboy_control_msgs::SetModeResponse :md5sum-) "16becad94c6302504e3fb238db13fc32")
(setf (get roboy_control_msgs::SetModeResponse :datatype-) "roboy_control_msgs/SetModeResponse")
(setf (get roboy_control_msgs::SetModeResponse :definition-)
      "int8 id
int8 mode
---
bool success

")



(provide :roboy_control_msgs/SetMode "16becad94c6302504e3fb238db13fc32")


