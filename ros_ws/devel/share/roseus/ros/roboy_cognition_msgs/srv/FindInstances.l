;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::FindInstances)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'FindInstances (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::FINDINSTANCES")
  (make-package "ROBOY_COGNITION_MSGS::FINDINSTANCES"))
(unless (find-package "ROBOY_COGNITION_MSGS::FINDINSTANCESREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::FINDINSTANCESREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::FINDINSTANCESRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::FINDINSTANCESRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::FindInstancesRequest
  :super ros::object
  :slots (_property _value ))

(defmethod roboy_cognition_msgs::FindInstancesRequest
  (:init
   (&key
    ((:property __property) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _property (string __property))
   (setq _value (string __value))
   self)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _property
    4 (length _property)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::FindInstancesResponse
  :super ros::object
  :slots (_instances ))

(defmethod roboy_cognition_msgs::FindInstancesResponse
  (:init
   (&key
    ((:instances __instances) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _instances __instances)
   self)
  (:instances
   (&optional __instances)
   (if __instances (setq _instances __instances)) _instances)
  (:serialization-length
   ()
   (+
    ;; string[] _instances
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _instances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _instances
     (write-long (length _instances) s)
     (dolist (elem _instances)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _instances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _instances (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _instances i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::FindInstances
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::FindInstances :md5sum-) "7a424b6de2ab577e112c2faf018865de")
(setf (get roboy_cognition_msgs::FindInstances :datatype-) "roboy_cognition_msgs/FindInstances")
(setf (get roboy_cognition_msgs::FindInstances :request) roboy_cognition_msgs::FindInstancesRequest)
(setf (get roboy_cognition_msgs::FindInstances :response) roboy_cognition_msgs::FindInstancesResponse)

(defmethod roboy_cognition_msgs::FindInstancesRequest
  (:response () (instance roboy_cognition_msgs::FindInstancesResponse :init)))

(setf (get roboy_cognition_msgs::FindInstancesRequest :md5sum-) "7a424b6de2ab577e112c2faf018865de")
(setf (get roboy_cognition_msgs::FindInstancesRequest :datatype-) "roboy_cognition_msgs/FindInstancesRequest")
(setf (get roboy_cognition_msgs::FindInstancesRequest :definition-)
      "string property
string value
---
string[] instances

")

(setf (get roboy_cognition_msgs::FindInstancesResponse :md5sum-) "7a424b6de2ab577e112c2faf018865de")
(setf (get roboy_cognition_msgs::FindInstancesResponse :datatype-) "roboy_cognition_msgs/FindInstancesResponse")
(setf (get roboy_cognition_msgs::FindInstancesResponse :definition-)
      "string property
string value
---
string[] instances

")



(provide :roboy_cognition_msgs/FindInstances "7a424b6de2ab577e112c2faf018865de")


