;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::GetObject)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'GetObject (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::GETOBJECT")
  (make-package "ROBOY_COGNITION_MSGS::GETOBJECT"))
(unless (find-package "ROBOY_COGNITION_MSGS::GETOBJECTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::GETOBJECTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::GETOBJECTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::GETOBJECTRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::GetObjectRequest
  :super ros::object
  :slots (_properties _values ))

(defmethod roboy_cognition_msgs::GetObjectRequest
  (:init
   (&key
    ((:properties __properties) "")
    ((:values __values) "")
    )
   (send-super :init)
   (setq _properties (string __properties))
   (setq _values (string __values))
   self)
  (:properties
   (&optional __properties)
   (if __properties (setq _properties __properties)) _properties)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _properties
    4 (length _properties)
    ;; string _values
    4 (length _values)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _properties
       (write-long (length _properties) s) (princ _properties s)
     ;; string _values
       (write-long (length _values) s) (princ _values s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _values
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _values (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::GetObjectResponse
  :super ros::object
  :slots (_result _instance ))

(defmethod roboy_cognition_msgs::GetObjectResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:instance __instance) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _instance (string __instance))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:instance
   (&optional __instance)
   (if __instance (setq _instance __instance)) _instance)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _instance
    4 (length _instance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _instance
       (write-long (length _instance) s) (princ _instance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _instance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::GetObject
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::GetObject :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_cognition_msgs::GetObject :datatype-) "roboy_cognition_msgs/GetObject")
(setf (get roboy_cognition_msgs::GetObject :request) roboy_cognition_msgs::GetObjectRequest)
(setf (get roboy_cognition_msgs::GetObject :response) roboy_cognition_msgs::GetObjectResponse)

(defmethod roboy_cognition_msgs::GetObjectRequest
  (:response () (instance roboy_cognition_msgs::GetObjectResponse :init)))

(setf (get roboy_cognition_msgs::GetObjectRequest :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_cognition_msgs::GetObjectRequest :datatype-) "roboy_cognition_msgs/GetObjectRequest")
(setf (get roboy_cognition_msgs::GetObjectRequest :definition-)
      "string properties
string values
---
bool result
string instance
")

(setf (get roboy_cognition_msgs::GetObjectResponse :md5sum-) "5371b92e5e40731a7295d51663dd7780")
(setf (get roboy_cognition_msgs::GetObjectResponse :datatype-) "roboy_cognition_msgs/GetObjectResponse")
(setf (get roboy_cognition_msgs::GetObjectResponse :definition-)
      "string properties
string values
---
bool result
string instance
")



(provide :roboy_cognition_msgs/GetObject "5371b92e5e40731a7295d51663dd7780")


