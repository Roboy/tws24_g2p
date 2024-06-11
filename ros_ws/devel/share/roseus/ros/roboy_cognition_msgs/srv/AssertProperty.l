;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::AssertProperty)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'AssertProperty (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTY")
  (make-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTY"))
(unless (find-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTYREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTYREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTYRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::ASSERTPROPERTYRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::AssertPropertyRequest
  :super ros::object
  :slots (_object _property _instance ))

(defmethod roboy_cognition_msgs::AssertPropertyRequest
  (:init
   (&key
    ((:object __object) "")
    ((:property __property) "")
    ((:instance __instance) "")
    )
   (send-super :init)
   (setq _object (string __object))
   (setq _property (string __property))
   (setq _instance (string __instance))
   self)
  (:object
   (&optional __object)
   (if __object (setq _object __object)) _object)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:instance
   (&optional __instance)
   (if __instance (setq _instance __instance)) _instance)
  (:serialization-length
   ()
   (+
    ;; string _object
    4 (length _object)
    ;; string _property
    4 (length _property)
    ;; string _instance
    4 (length _instance)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object
       (write-long (length _object) s) (princ _object s)
     ;; string _property
       (write-long (length _property) s) (princ _property s)
     ;; string _instance
       (write-long (length _instance) s) (princ _instance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _property
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _property (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _instance
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _instance (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::AssertPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_cognition_msgs::AssertPropertyResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::AssertProperty
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::AssertProperty :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::AssertProperty :datatype-) "roboy_cognition_msgs/AssertProperty")
(setf (get roboy_cognition_msgs::AssertProperty :request) roboy_cognition_msgs::AssertPropertyRequest)
(setf (get roboy_cognition_msgs::AssertProperty :response) roboy_cognition_msgs::AssertPropertyResponse)

(defmethod roboy_cognition_msgs::AssertPropertyRequest
  (:response () (instance roboy_cognition_msgs::AssertPropertyResponse :init)))

(setf (get roboy_cognition_msgs::AssertPropertyRequest :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::AssertPropertyRequest :datatype-) "roboy_cognition_msgs/AssertPropertyRequest")
(setf (get roboy_cognition_msgs::AssertPropertyRequest :definition-)
      "string object
string property
string instance
---
bool result

")

(setf (get roboy_cognition_msgs::AssertPropertyResponse :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::AssertPropertyResponse :datatype-) "roboy_cognition_msgs/AssertPropertyResponse")
(setf (get roboy_cognition_msgs::AssertPropertyResponse :definition-)
      "string object
string property
string instance
---
bool result

")



(provide :roboy_cognition_msgs/AssertProperty "096b73ba3a5f0d25198ae92ca0a7239c")


