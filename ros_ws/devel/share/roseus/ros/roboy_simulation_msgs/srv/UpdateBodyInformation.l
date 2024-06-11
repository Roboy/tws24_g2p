;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::UpdateBodyInformation)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'UpdateBodyInformation (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATION")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATION"))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATIONREQUEST")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATIONREQUEST"))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATIONRESPONSE")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATEBODYINFORMATIONRESPONSE"))

(in-package "ROS")





(defclass roboy_simulation_msgs::UpdateBodyInformationRequest
  :super ros::object
  :slots (_body_information ))

(defmethod roboy_simulation_msgs::UpdateBodyInformationRequest
  (:init
   (&key
    ((:body_information __body_information) (instance roboy_simulation_msgs::BodyInformation :init))
    )
   (send-super :init)
   (setq _body_information __body_information)
   self)
  (:body_information
   (&rest __body_information)
   (if (keywordp (car __body_information))
       (send* _body_information __body_information)
     (progn
       (if __body_information (setq _body_information (car __body_information)))
       _body_information)))
  (:serialization-length
   ()
   (+
    ;; roboy_simulation_msgs/BodyInformation _body_information
    (send _body_information :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_simulation_msgs/BodyInformation _body_information
       (send _body_information :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_simulation_msgs/BodyInformation _body_information
     (send _body_information :deserialize buf ptr-) (incf ptr- (send _body_information :serialization-length))
   ;;
   self)
  )

(defclass roboy_simulation_msgs::UpdateBodyInformationResponse
  :super ros::object
  :slots (_ret_code _msg ))

(defmethod roboy_simulation_msgs::UpdateBodyInformationResponse
  (:init
   (&key
    ((:ret_code __ret_code) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _ret_code (round __ret_code))
   (setq _msg (string __msg))
   self)
  (:ret_code
   (&optional __ret_code)
   (if __ret_code (setq _ret_code __ret_code)) _ret_code)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int8 _ret_code
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ret_code
       (write-byte _ret_code s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ret_code
     (setq _ret_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ret_code 127) (setq _ret_code (- _ret_code 256)))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_simulation_msgs::UpdateBodyInformation
  :super ros::object
  :slots ())

(setf (get roboy_simulation_msgs::UpdateBodyInformation :md5sum-) "e428186c93531a8d1164969320286db9")
(setf (get roboy_simulation_msgs::UpdateBodyInformation :datatype-) "roboy_simulation_msgs/UpdateBodyInformation")
(setf (get roboy_simulation_msgs::UpdateBodyInformation :request) roboy_simulation_msgs::UpdateBodyInformationRequest)
(setf (get roboy_simulation_msgs::UpdateBodyInformation :response) roboy_simulation_msgs::UpdateBodyInformationResponse)

(defmethod roboy_simulation_msgs::UpdateBodyInformationRequest
  (:response () (instance roboy_simulation_msgs::UpdateBodyInformationResponse :init)))

(setf (get roboy_simulation_msgs::UpdateBodyInformationRequest :md5sum-) "e428186c93531a8d1164969320286db9")
(setf (get roboy_simulation_msgs::UpdateBodyInformationRequest :datatype-) "roboy_simulation_msgs/UpdateBodyInformationRequest")
(setf (get roboy_simulation_msgs::UpdateBodyInformationRequest :definition-)
      "roboy_simulation_msgs/BodyInformation body_information

================================================================================
MSG: roboy_simulation_msgs/BodyInformation
# list containing all links and some information like name, dimensions etc.
roboy_simulation_msgs/LinkInformation[] link_information
================================================================================
MSG: roboy_simulation_msgs/LinkInformation
# id of the link in the simulation
int32 id
# name of the link in the simulation
string name
# dimentions of the link
geometry_msgs/Vector3 dimensions
# initial pose of the link
geometry_msgs/Pose init_pose
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
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
---
int8 ret_code
string msg
")

(setf (get roboy_simulation_msgs::UpdateBodyInformationResponse :md5sum-) "e428186c93531a8d1164969320286db9")
(setf (get roboy_simulation_msgs::UpdateBodyInformationResponse :datatype-) "roboy_simulation_msgs/UpdateBodyInformationResponse")
(setf (get roboy_simulation_msgs::UpdateBodyInformationResponse :definition-)
      "roboy_simulation_msgs/BodyInformation body_information

================================================================================
MSG: roboy_simulation_msgs/BodyInformation
# list containing all links and some information like name, dimensions etc.
roboy_simulation_msgs/LinkInformation[] link_information
================================================================================
MSG: roboy_simulation_msgs/LinkInformation
# id of the link in the simulation
int32 id
# name of the link in the simulation
string name
# dimentions of the link
geometry_msgs/Vector3 dimensions
# initial pose of the link
geometry_msgs/Pose init_pose
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
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
---
int8 ret_code
string msg
")



(provide :roboy_simulation_msgs/UpdateBodyInformation "e428186c93531a8d1164969320286db9")


