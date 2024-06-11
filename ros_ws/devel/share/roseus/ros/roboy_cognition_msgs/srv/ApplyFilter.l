;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::ApplyFilter)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'ApplyFilter (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::APPLYFILTER")
  (make-package "ROBOY_COGNITION_MSGS::APPLYFILTER"))
(unless (find-package "ROBOY_COGNITION_MSGS::APPLYFILTERREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::APPLYFILTERREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::APPLYFILTERRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::APPLYFILTERRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::ApplyFilterRequest
  :super ros::object
  :slots (_name ))

(defmethod roboy_cognition_msgs::ApplyFilterRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::ApplyFilterResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_cognition_msgs::ApplyFilterResponse
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

(defclass roboy_cognition_msgs::ApplyFilter
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::ApplyFilter :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get roboy_cognition_msgs::ApplyFilter :datatype-) "roboy_cognition_msgs/ApplyFilter")
(setf (get roboy_cognition_msgs::ApplyFilter :request) roboy_cognition_msgs::ApplyFilterRequest)
(setf (get roboy_cognition_msgs::ApplyFilter :response) roboy_cognition_msgs::ApplyFilterResponse)

(defmethod roboy_cognition_msgs::ApplyFilterRequest
  (:response () (instance roboy_cognition_msgs::ApplyFilterResponse :init)))

(setf (get roboy_cognition_msgs::ApplyFilterRequest :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get roboy_cognition_msgs::ApplyFilterRequest :datatype-) "roboy_cognition_msgs/ApplyFilterRequest")
(setf (get roboy_cognition_msgs::ApplyFilterRequest :definition-)
      "string name
---
bool success

")

(setf (get roboy_cognition_msgs::ApplyFilterResponse :md5sum-) "d08a3b641c2f8680fbdfb1ea2e17a3e1")
(setf (get roboy_cognition_msgs::ApplyFilterResponse :datatype-) "roboy_cognition_msgs/ApplyFilterResponse")
(setf (get roboy_cognition_msgs::ApplyFilterResponse :definition-)
      "string name
---
bool success

")



(provide :roboy_cognition_msgs/ApplyFilter "d08a3b641c2f8680fbdfb1ea2e17a3e1")


