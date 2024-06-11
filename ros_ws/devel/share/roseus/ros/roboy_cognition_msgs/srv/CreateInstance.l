;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::CreateInstance)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'CreateInstance (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::CREATEINSTANCE")
  (make-package "ROBOY_COGNITION_MSGS::CREATEINSTANCE"))
(unless (find-package "ROBOY_COGNITION_MSGS::CREATEINSTANCEREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::CREATEINSTANCEREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::CREATEINSTANCERESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::CREATEINSTANCERESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::CreateInstanceRequest
  :super ros::object
  :slots (_object_class _id ))

(defmethod roboy_cognition_msgs::CreateInstanceRequest
  (:init
   (&key
    ((:object_class __object_class) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _object_class (string __object_class))
   (setq _id (round __id))
   self)
  (:object_class
   (&optional __object_class)
   (if __object_class (setq _object_class __object_class)) _object_class)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _object_class
    4 (length _object_class)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_class
       (write-long (length _object_class) s) (princ _object_class s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::CreateInstanceResponse
  :super ros::object
  :slots (_instance ))

(defmethod roboy_cognition_msgs::CreateInstanceResponse
  (:init
   (&key
    ((:instance __instance) "")
    )
   (send-super :init)
   (setq _instance (string __instance))
   self)
  (:instance
   (&optional __instance)
   (if __instance (setq _instance __instance)) _instance)
  (:serialization-length
   ()
   (+
    ;; string _instance
    4 (length _instance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _instance
       (write-long (length _instance) s) (princ _instance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _instance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::CreateInstance
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::CreateInstance :md5sum-) "257cb06b1a8f1794705928d0364b72b0")
(setf (get roboy_cognition_msgs::CreateInstance :datatype-) "roboy_cognition_msgs/CreateInstance")
(setf (get roboy_cognition_msgs::CreateInstance :request) roboy_cognition_msgs::CreateInstanceRequest)
(setf (get roboy_cognition_msgs::CreateInstance :response) roboy_cognition_msgs::CreateInstanceResponse)

(defmethod roboy_cognition_msgs::CreateInstanceRequest
  (:response () (instance roboy_cognition_msgs::CreateInstanceResponse :init)))

(setf (get roboy_cognition_msgs::CreateInstanceRequest :md5sum-) "257cb06b1a8f1794705928d0364b72b0")
(setf (get roboy_cognition_msgs::CreateInstanceRequest :datatype-) "roboy_cognition_msgs/CreateInstanceRequest")
(setf (get roboy_cognition_msgs::CreateInstanceRequest :definition-)
      "string object_class
int32 id
---
string instance

")

(setf (get roboy_cognition_msgs::CreateInstanceResponse :md5sum-) "257cb06b1a8f1794705928d0364b72b0")
(setf (get roboy_cognition_msgs::CreateInstanceResponse :datatype-) "roboy_cognition_msgs/CreateInstanceResponse")
(setf (get roboy_cognition_msgs::CreateInstanceResponse :definition-)
      "string object_class
int32 id
---
string instance

")



(provide :roboy_cognition_msgs/CreateInstance "257cb06b1a8f1794705928d0364b72b0")


