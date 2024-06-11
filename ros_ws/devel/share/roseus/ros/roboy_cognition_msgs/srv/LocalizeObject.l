;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::LocalizeObject)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'LocalizeObject (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECT")
  (make-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECT"))
(unless (find-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::LOCALIZEOBJECTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_cognition_msgs::LocalizeObjectRequest
  :super ros::object
  :slots (_object ))

(defmethod roboy_cognition_msgs::LocalizeObjectRequest
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

(defclass roboy_cognition_msgs::LocalizeObjectResponse
  :super ros::object
  :slots (_pose _error_message ))

(defmethod roboy_cognition_msgs::LocalizeObjectResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _error_message (string __error_message))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::LocalizeObject
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::LocalizeObject :md5sum-) "5d8b7cfb672222382cf4ae6d569bb15e")
(setf (get roboy_cognition_msgs::LocalizeObject :datatype-) "roboy_cognition_msgs/LocalizeObject")
(setf (get roboy_cognition_msgs::LocalizeObject :request) roboy_cognition_msgs::LocalizeObjectRequest)
(setf (get roboy_cognition_msgs::LocalizeObject :response) roboy_cognition_msgs::LocalizeObjectResponse)

(defmethod roboy_cognition_msgs::LocalizeObjectRequest
  (:response () (instance roboy_cognition_msgs::LocalizeObjectResponse :init)))

(setf (get roboy_cognition_msgs::LocalizeObjectRequest :md5sum-) "5d8b7cfb672222382cf4ae6d569bb15e")
(setf (get roboy_cognition_msgs::LocalizeObjectRequest :datatype-) "roboy_cognition_msgs/LocalizeObjectRequest")
(setf (get roboy_cognition_msgs::LocalizeObjectRequest :definition-)
      "string object
---
geometry_msgs/Pose pose
string error_message

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get roboy_cognition_msgs::LocalizeObjectResponse :md5sum-) "5d8b7cfb672222382cf4ae6d569bb15e")
(setf (get roboy_cognition_msgs::LocalizeObjectResponse :datatype-) "roboy_cognition_msgs/LocalizeObjectResponse")
(setf (get roboy_cognition_msgs::LocalizeObjectResponse :definition-)
      "string object
---
geometry_msgs/Pose pose
string error_message

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :roboy_cognition_msgs/LocalizeObject "5d8b7cfb672222382cf4ae6d569bb15e")


