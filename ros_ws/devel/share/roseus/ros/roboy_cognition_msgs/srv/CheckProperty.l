;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::CheckProperty)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'CheckProperty (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::CHECKPROPERTY")
  (make-package "ROBOY_COGNITION_MSGS::CHECKPROPERTY"))
(unless (find-package "ROBOY_COGNITION_MSGS::CHECKPROPERTYREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::CHECKPROPERTYREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::CHECKPROPERTYRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::CHECKPROPERTYRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::CheckPropertyRequest
  :super ros::object
  :slots (_object _property _instance ))

(defmethod roboy_cognition_msgs::CheckPropertyRequest
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

(defclass roboy_cognition_msgs::CheckPropertyResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_cognition_msgs::CheckPropertyResponse
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

(defclass roboy_cognition_msgs::CheckProperty
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::CheckProperty :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::CheckProperty :datatype-) "roboy_cognition_msgs/CheckProperty")
(setf (get roboy_cognition_msgs::CheckProperty :request) roboy_cognition_msgs::CheckPropertyRequest)
(setf (get roboy_cognition_msgs::CheckProperty :response) roboy_cognition_msgs::CheckPropertyResponse)

(defmethod roboy_cognition_msgs::CheckPropertyRequest
  (:response () (instance roboy_cognition_msgs::CheckPropertyResponse :init)))

(setf (get roboy_cognition_msgs::CheckPropertyRequest :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::CheckPropertyRequest :datatype-) "roboy_cognition_msgs/CheckPropertyRequest")
(setf (get roboy_cognition_msgs::CheckPropertyRequest :definition-)
      "string object
string property
string instance
---
bool result

")

(setf (get roboy_cognition_msgs::CheckPropertyResponse :md5sum-) "096b73ba3a5f0d25198ae92ca0a7239c")
(setf (get roboy_cognition_msgs::CheckPropertyResponse :datatype-) "roboy_cognition_msgs/CheckPropertyResponse")
(setf (get roboy_cognition_msgs::CheckPropertyResponse :definition-)
      "string object
string property
string instance
---
bool result

")



(provide :roboy_cognition_msgs/CheckProperty "096b73ba3a5f0d25198ae92ca0a7239c")


