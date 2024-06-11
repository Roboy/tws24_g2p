;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::InverseKinematics)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'InverseKinematics (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICS"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roboy_middleware_msgs::InverseKinematicsRequest
  :super ros::object
  :slots (_endeffector _type _target_frame _pose ))

(defmethod roboy_middleware_msgs::InverseKinematicsRequest
  (:init
   (&key
    ((:endeffector __endeffector) "")
    ((:type __type) 0)
    ((:target_frame __target_frame) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _endeffector (string __endeffector))
   (setq _type (round __type))
   (setq _target_frame (string __target_frame))
   (setq _pose __pose)
   self)
  (:endeffector
   (&optional __endeffector)
   (if __endeffector (setq _endeffector __endeffector)) _endeffector)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
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
    ;; string _endeffector
    4 (length _endeffector)
    ;; int8 _type
    1
    ;; string _target_frame
    4 (length _target_frame)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _endeffector
       (write-long (length _endeffector) s) (princ _endeffector s)
     ;; int8 _type
       (write-byte _type s)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _endeffector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endeffector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::InverseKinematicsResponse
  :super ros::object
  :slots (_joint_names _angles ))

(defmethod roboy_middleware_msgs::InverseKinematicsResponse
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _angles __angles)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::InverseKinematics
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::InverseKinematics :md5sum-) "47b09066a434abe0507845e391bb8384")
(setf (get roboy_middleware_msgs::InverseKinematics :datatype-) "roboy_middleware_msgs/InverseKinematics")
(setf (get roboy_middleware_msgs::InverseKinematics :request) roboy_middleware_msgs::InverseKinematicsRequest)
(setf (get roboy_middleware_msgs::InverseKinematics :response) roboy_middleware_msgs::InverseKinematicsResponse)

(defmethod roboy_middleware_msgs::InverseKinematicsRequest
  (:response () (instance roboy_middleware_msgs::InverseKinematicsResponse :init)))

(setf (get roboy_middleware_msgs::InverseKinematicsRequest :md5sum-) "47b09066a434abe0507845e391bb8384")
(setf (get roboy_middleware_msgs::InverseKinematicsRequest :datatype-) "roboy_middleware_msgs/InverseKinematicsRequest")
(setf (get roboy_middleware_msgs::InverseKinematicsRequest :definition-)
      "# name of the endeffector
string endeffector
# 0: position and orientation 1: position only 2: orientation only
int8 type
# the frame of the ik target
string target_frame
# target position/orientation for frame in world coordinates (if applicable)
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
---
# joint names
string[] joint_names
# these are the resulting joint angles from inverse kinematics in radians
float64[] angles

")

(setf (get roboy_middleware_msgs::InverseKinematicsResponse :md5sum-) "47b09066a434abe0507845e391bb8384")
(setf (get roboy_middleware_msgs::InverseKinematicsResponse :datatype-) "roboy_middleware_msgs/InverseKinematicsResponse")
(setf (get roboy_middleware_msgs::InverseKinematicsResponse :definition-)
      "# name of the endeffector
string endeffector
# 0: position and orientation 1: position only 2: orientation only
int8 type
# the frame of the ik target
string target_frame
# target position/orientation for frame in world coordinates (if applicable)
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
---
# joint names
string[] joint_names
# these are the resulting joint angles from inverse kinematics in radians
float64[] angles

")



(provide :roboy_middleware_msgs/InverseKinematics "47b09066a434abe0507845e391bb8384")


