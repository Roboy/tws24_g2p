;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::GetLinkPose)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'GetLinkPose (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::GETLINKPOSE")
  (make-package "ROBOY_CONTROL_MSGS::GETLINKPOSE"))
(unless (find-package "ROBOY_CONTROL_MSGS::GETLINKPOSEREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::GETLINKPOSEREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::GETLINKPOSERESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::GETLINKPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_control_msgs::GetLinkPoseRequest
  :super ros::object
  :slots (_link_name ))

(defmethod roboy_control_msgs::GetLinkPoseRequest
  (:init
   (&key
    ((:link_name __link_name) "")
    )
   (send-super :init)
   (setq _link_name (string __link_name))
   self)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:serialization-length
   ()
   (+
    ;; string _link_name
    4 (length _link_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_control_msgs::GetLinkPoseResponse
  :super ros::object
  :slots (_pose ))

(defmethod roboy_control_msgs::GetLinkPoseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass roboy_control_msgs::GetLinkPose
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::GetLinkPose :md5sum-) "2e5fd53ebd98cb5347be4c4321e60048")
(setf (get roboy_control_msgs::GetLinkPose :datatype-) "roboy_control_msgs/GetLinkPose")
(setf (get roboy_control_msgs::GetLinkPose :request) roboy_control_msgs::GetLinkPoseRequest)
(setf (get roboy_control_msgs::GetLinkPose :response) roboy_control_msgs::GetLinkPoseResponse)

(defmethod roboy_control_msgs::GetLinkPoseRequest
  (:response () (instance roboy_control_msgs::GetLinkPoseResponse :init)))

(setf (get roboy_control_msgs::GetLinkPoseRequest :md5sum-) "2e5fd53ebd98cb5347be4c4321e60048")
(setf (get roboy_control_msgs::GetLinkPoseRequest :datatype-) "roboy_control_msgs/GetLinkPoseRequest")
(setf (get roboy_control_msgs::GetLinkPoseRequest :definition-)
      "string link_name
---
geometry_msgs/Pose pose

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

(setf (get roboy_control_msgs::GetLinkPoseResponse :md5sum-) "2e5fd53ebd98cb5347be4c4321e60048")
(setf (get roboy_control_msgs::GetLinkPoseResponse :datatype-) "roboy_control_msgs/GetLinkPoseResponse")
(setf (get roboy_control_msgs::GetLinkPoseResponse :definition-)
      "string link_name
---
geometry_msgs/Pose pose

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



(provide :roboy_control_msgs/GetLinkPose "2e5fd53ebd98cb5347be4c4321e60048")


