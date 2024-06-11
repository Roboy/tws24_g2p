;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::ShowInstances)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'ShowInstances (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWINSTANCES")
  (make-package "ROBOY_COGNITION_MSGS::SHOWINSTANCES"))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWINSTANCESREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::SHOWINSTANCESREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWINSTANCESRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::SHOWINSTANCESRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::ShowInstancesRequest
  :super ros::object
  :slots (_object_class ))

(defmethod roboy_cognition_msgs::ShowInstancesRequest
  (:init
   (&key
    ((:object_class __object_class) "")
    )
   (send-super :init)
   (setq _object_class (string __object_class))
   self)
  (:object_class
   (&optional __object_class)
   (if __object_class (setq _object_class __object_class)) _object_class)
  (:serialization-length
   ()
   (+
    ;; string _object_class
    4 (length _object_class)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_class
       (write-long (length _object_class) s) (princ _object_class s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::ShowInstancesResponse
  :super ros::object
  :slots (_instances ))

(defmethod roboy_cognition_msgs::ShowInstancesResponse
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

(defclass roboy_cognition_msgs::ShowInstances
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::ShowInstances :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_cognition_msgs::ShowInstances :datatype-) "roboy_cognition_msgs/ShowInstances")
(setf (get roboy_cognition_msgs::ShowInstances :request) roboy_cognition_msgs::ShowInstancesRequest)
(setf (get roboy_cognition_msgs::ShowInstances :response) roboy_cognition_msgs::ShowInstancesResponse)

(defmethod roboy_cognition_msgs::ShowInstancesRequest
  (:response () (instance roboy_cognition_msgs::ShowInstancesResponse :init)))

(setf (get roboy_cognition_msgs::ShowInstancesRequest :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_cognition_msgs::ShowInstancesRequest :datatype-) "roboy_cognition_msgs/ShowInstancesRequest")
(setf (get roboy_cognition_msgs::ShowInstancesRequest :definition-)
      "string object_class
---
string[] instances

")

(setf (get roboy_cognition_msgs::ShowInstancesResponse :md5sum-) "cdb5eab71cb46cce11dc358585f13c8e")
(setf (get roboy_cognition_msgs::ShowInstancesResponse :datatype-) "roboy_cognition_msgs/ShowInstancesResponse")
(setf (get roboy_cognition_msgs::ShowInstancesResponse :definition-)
      "string object_class
---
string[] instances

")



(provide :roboy_cognition_msgs/ShowInstances "cdb5eab71cb46cce11dc358585f13c8e")


