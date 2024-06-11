;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::ShowProperty)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'ShowProperty (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWPROPERTY")
  (make-package "ROBOY_COGNITION_MSGS::SHOWPROPERTY"))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWPROPERTYREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::SHOWPROPERTYREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::SHOWPROPERTYRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::SHOWPROPERTYRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::ShowPropertyRequest
  :super ros::object
  :slots (_object ))

(defmethod roboy_cognition_msgs::ShowPropertyRequest
  (:init
   (&key
    ((:object __object) "")
    )
   (send-super :init)
   (setq _object (string __object))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::ShowPropertyResponse
  :super ros::object
  :slots (_property ))

(defmethod roboy_cognition_msgs::ShowPropertyResponse
  (:init
   (&key
    ((:property __property) "")
    )
   (send-super :init)
   (setq _property (string __property))
   self)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:serialization-length
   ()
   (+
    ;; string _property
    4 (length _property)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::ShowProperty
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::ShowProperty :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_cognition_msgs::ShowProperty :datatype-) "roboy_cognition_msgs/ShowProperty")
(setf (get roboy_cognition_msgs::ShowProperty :request) roboy_cognition_msgs::ShowPropertyRequest)
(setf (get roboy_cognition_msgs::ShowProperty :response) roboy_cognition_msgs::ShowPropertyResponse)

(defmethod roboy_cognition_msgs::ShowPropertyRequest
  (:response () (instance roboy_cognition_msgs::ShowPropertyResponse :init)))

(setf (get roboy_cognition_msgs::ShowPropertyRequest :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_cognition_msgs::ShowPropertyRequest :datatype-) "roboy_cognition_msgs/ShowPropertyRequest")
(setf (get roboy_cognition_msgs::ShowPropertyRequest :definition-)
      "string object
---
string property

")

(setf (get roboy_cognition_msgs::ShowPropertyResponse :md5sum-) "dc601e0fdf79ede7c0526ff3f333e5b2")
(setf (get roboy_cognition_msgs::ShowPropertyResponse :datatype-) "roboy_cognition_msgs/ShowPropertyResponse")
(setf (get roboy_cognition_msgs::ShowPropertyResponse :definition-)
      "string object
---
string property

")



(provide :roboy_cognition_msgs/ShowProperty "dc601e0fdf79ede7c0526ff3f333e5b2")


