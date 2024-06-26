;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::RecognizeObject)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'RecognizeObject (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECT")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECT"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEOBJECTRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::RecognizeObjectRequest
  :super ros::object
  :slots (_object_id ))

(defmethod roboy_cognition_msgs::RecognizeObjectRequest
  (:init
   (&key
    ((:object_id __object_id) 0)
    )
   (send-super :init)
   (setq _object_id (round __object_id))
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _object_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _object_id
       (write-long _object_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::RecognizeObjectResponse
  :super ros::object
  :slots (_object_name ))

(defmethod roboy_cognition_msgs::RecognizeObjectResponse
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::RecognizeObject
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::RecognizeObject :md5sum-) "258a9296e168e47170c83d2bf19a1ae6")
(setf (get roboy_cognition_msgs::RecognizeObject :datatype-) "roboy_cognition_msgs/RecognizeObject")
(setf (get roboy_cognition_msgs::RecognizeObject :request) roboy_cognition_msgs::RecognizeObjectRequest)
(setf (get roboy_cognition_msgs::RecognizeObject :response) roboy_cognition_msgs::RecognizeObjectResponse)

(defmethod roboy_cognition_msgs::RecognizeObjectRequest
  (:response () (instance roboy_cognition_msgs::RecognizeObjectResponse :init)))

(setf (get roboy_cognition_msgs::RecognizeObjectRequest :md5sum-) "258a9296e168e47170c83d2bf19a1ae6")
(setf (get roboy_cognition_msgs::RecognizeObjectRequest :datatype-) "roboy_cognition_msgs/RecognizeObjectRequest")
(setf (get roboy_cognition_msgs::RecognizeObjectRequest :definition-)
      "uint32 object_id
---
string object_name
")

(setf (get roboy_cognition_msgs::RecognizeObjectResponse :md5sum-) "258a9296e168e47170c83d2bf19a1ae6")
(setf (get roboy_cognition_msgs::RecognizeObjectResponse :datatype-) "roboy_cognition_msgs/RecognizeObjectResponse")
(setf (get roboy_cognition_msgs::RecognizeObjectResponse :definition-)
      "uint32 object_id
---
string object_name
")



(provide :roboy_cognition_msgs/RecognizeObject "258a9296e168e47170c83d2bf19a1ae6")


