;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DriveToLocation)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DriveToLocation (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATION")
  (make-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATION"))
(unless (find-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATIONREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATIONREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATIONRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DRIVETOLOCATIONRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::DriveToLocationRequest
  :super ros::object
  :slots (_destination ))

(defmethod roboy_cognition_msgs::DriveToLocationRequest
  (:init
   (&key
    ((:destination __destination) "")
    )
   (send-super :init)
   (setq _destination (string __destination))
   self)
  (:destination
   (&optional __destination)
   (if __destination (setq _destination __destination)) _destination)
  (:serialization-length
   ()
   (+
    ;; string _destination
    4 (length _destination)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination
       (write-long (length _destination) s) (princ _destination s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DriveToLocationResponse
  :super ros::object
  :slots (_eta _path_found _error_message ))

(defmethod roboy_cognition_msgs::DriveToLocationResponse
  (:init
   (&key
    ((:eta __eta) 0)
    ((:path_found __path_found) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _eta (round __eta))
   (setq _path_found __path_found)
   (setq _error_message (string __error_message))
   self)
  (:eta
   (&optional __eta)
   (if __eta (setq _eta __eta)) _eta)
  (:path_found
   (&optional (__path_found :null))
   (if (not (eq __path_found :null)) (setq _path_found __path_found)) _path_found)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; int16 _eta
    2
    ;; bool _path_found
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _eta
       (write-word _eta s)
     ;; bool _path_found
       (if _path_found (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _eta
     (setq _eta (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _path_found
     (setq _path_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DriveToLocation
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DriveToLocation :md5sum-) "7577d7b5d3f8964faf8902041a36d0b1")
(setf (get roboy_cognition_msgs::DriveToLocation :datatype-) "roboy_cognition_msgs/DriveToLocation")
(setf (get roboy_cognition_msgs::DriveToLocation :request) roboy_cognition_msgs::DriveToLocationRequest)
(setf (get roboy_cognition_msgs::DriveToLocation :response) roboy_cognition_msgs::DriveToLocationResponse)

(defmethod roboy_cognition_msgs::DriveToLocationRequest
  (:response () (instance roboy_cognition_msgs::DriveToLocationResponse :init)))

(setf (get roboy_cognition_msgs::DriveToLocationRequest :md5sum-) "7577d7b5d3f8964faf8902041a36d0b1")
(setf (get roboy_cognition_msgs::DriveToLocationRequest :datatype-) "roboy_cognition_msgs/DriveToLocationRequest")
(setf (get roboy_cognition_msgs::DriveToLocationRequest :definition-)
      "string destination 
---
int16 eta
bool path_found
string error_message

")

(setf (get roboy_cognition_msgs::DriveToLocationResponse :md5sum-) "7577d7b5d3f8964faf8902041a36d0b1")
(setf (get roboy_cognition_msgs::DriveToLocationResponse :datatype-) "roboy_cognition_msgs/DriveToLocationResponse")
(setf (get roboy_cognition_msgs::DriveToLocationResponse :definition-)
      "string destination 
---
int16 eta
bool path_found
string error_message

")



(provide :roboy_cognition_msgs/DriveToLocation "7577d7b5d3f8964faf8902041a36d0b1")


