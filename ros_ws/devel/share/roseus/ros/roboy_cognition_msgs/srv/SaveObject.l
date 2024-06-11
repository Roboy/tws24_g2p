;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::SaveObject)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'SaveObject (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::SAVEOBJECT")
  (make-package "ROBOY_COGNITION_MSGS::SAVEOBJECT"))
(unless (find-package "ROBOY_COGNITION_MSGS::SAVEOBJECTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::SAVEOBJECTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::SAVEOBJECTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::SAVEOBJECTRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::SaveObjectRequest
  :super ros::object
  :slots (_class_name _id _properties _values ))

(defmethod roboy_cognition_msgs::SaveObjectRequest
  (:init
   (&key
    ((:class_name __class_name) "")
    ((:id __id) 0)
    ((:properties __properties) "")
    ((:values __values) "")
    )
   (send-super :init)
   (setq _class_name (string __class_name))
   (setq _id (round __id))
   (setq _properties (string __properties))
   (setq _values (string __values))
   self)
  (:class_name
   (&optional __class_name)
   (if __class_name (setq _class_name __class_name)) _class_name)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:properties
   (&optional __properties)
   (if __properties (setq _properties __properties)) _properties)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _class_name
    4 (length _class_name)
    ;; int32 _id
    4
    ;; string _properties
    4 (length _properties)
    ;; string _values
    4 (length _values)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _class_name
       (write-long (length _class_name) s) (princ _class_name s)
     ;; int32 _id
       (write-long _id s)
     ;; string _properties
       (write-long (length _properties) s) (princ _properties s)
     ;; string _values
       (write-long (length _values) s) (princ _values s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _class_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _class_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _values
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _values (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::SaveObjectResponse
  :super ros::object
  :slots (_result _instance ))

(defmethod roboy_cognition_msgs::SaveObjectResponse
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

(defclass roboy_cognition_msgs::SaveObject
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::SaveObject :md5sum-) "23e9feb02e011a0c456df65916cb0693")
(setf (get roboy_cognition_msgs::SaveObject :datatype-) "roboy_cognition_msgs/SaveObject")
(setf (get roboy_cognition_msgs::SaveObject :request) roboy_cognition_msgs::SaveObjectRequest)
(setf (get roboy_cognition_msgs::SaveObject :response) roboy_cognition_msgs::SaveObjectResponse)

(defmethod roboy_cognition_msgs::SaveObjectRequest
  (:response () (instance roboy_cognition_msgs::SaveObjectResponse :init)))

(setf (get roboy_cognition_msgs::SaveObjectRequest :md5sum-) "23e9feb02e011a0c456df65916cb0693")
(setf (get roboy_cognition_msgs::SaveObjectRequest :datatype-) "roboy_cognition_msgs/SaveObjectRequest")
(setf (get roboy_cognition_msgs::SaveObjectRequest :definition-)
      "string class_name
int32 id
string properties
string values
---
bool result
string instance
")

(setf (get roboy_cognition_msgs::SaveObjectResponse :md5sum-) "23e9feb02e011a0c456df65916cb0693")
(setf (get roboy_cognition_msgs::SaveObjectResponse :datatype-) "roboy_cognition_msgs/SaveObjectResponse")
(setf (get roboy_cognition_msgs::SaveObjectResponse :definition-)
      "string class_name
int32 id
string properties
string values
---
bool result
string instance
")



(provide :roboy_cognition_msgs/SaveObject "23e9feb02e011a0c456df65916cb0693")


