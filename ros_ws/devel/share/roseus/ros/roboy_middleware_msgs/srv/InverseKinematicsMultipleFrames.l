;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::InverseKinematicsMultipleFrames)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'InverseKinematicsMultipleFrames (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMES")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMES"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMESREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMESREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMESRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::INVERSEKINEMATICSMULTIPLEFRAMESRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest
  :super ros::object
  :slots (_endeffector _type _target_frames _poses _weights ))

(defmethod roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest
  (:init
   (&key
    ((:endeffector __endeffector) "")
    ((:type __type) 0)
    ((:target_frames __target_frames) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:poses __poses) ())
    ((:weights __weights) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _endeffector (string __endeffector))
   (setq _type (round __type))
   (setq _target_frames __target_frames)
   (setq _poses __poses)
   (setq _weights __weights)
   self)
  (:endeffector
   (&optional __endeffector)
   (if __endeffector (setq _endeffector __endeffector)) _endeffector)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:target_frames
   (&optional __target_frames)
   (if __target_frames (setq _target_frames __target_frames)) _target_frames)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:serialization-length
   ()
   (+
    ;; string _endeffector
    4 (length _endeffector)
    ;; int8 _type
    1
    ;; string[] _target_frames
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _target_frames)) 4
    ;; geometry_msgs/Pose[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; int8[] _weights
    (* 1    (length _weights)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _endeffector
       (write-long (length _endeffector) s) (princ _endeffector s)
     ;; int8 _type
       (write-byte _type s)
     ;; string[] _target_frames
     (write-long (length _target_frames) s)
     (dolist (elem _target_frames)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; int8[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (write-byte (elt _weights i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _endeffector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endeffector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; string[] _target_frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_frames (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _target_frames i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _weights i) 127) (setf (elt _weights i) (- (elt _weights i) 256)))
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse
  :super ros::object
  :slots (_joint_names _angles ))

(defmethod roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse
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

(defclass roboy_middleware_msgs::InverseKinematicsMultipleFrames
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFrames :md5sum-) "107f632de622d50f348636c2127cece2")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFrames :datatype-) "roboy_middleware_msgs/InverseKinematicsMultipleFrames")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFrames :request) roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest)
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFrames :response) roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse)

(defmethod roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest
  (:response () (instance roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse :init)))

(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest :md5sum-) "107f632de622d50f348636c2127cece2")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest :datatype-) "roboy_middleware_msgs/InverseKinematicsMultipleFramesRequest")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesRequest :definition-)
      "# names of the endeffectors
string endeffector
# 0: position and orientation 1: position only 2: orientation only
int8 type
# the frames of the ik targets
string[] target_frames
# target position/orientation for frame in world coordinates (if applicable)
geometry_msgs/Pose[] poses
# position weights of the ik targets
int8[] weights


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

(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse :md5sum-) "107f632de622d50f348636c2127cece2")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse :datatype-) "roboy_middleware_msgs/InverseKinematicsMultipleFramesResponse")
(setf (get roboy_middleware_msgs::InverseKinematicsMultipleFramesResponse :definition-)
      "# names of the endeffectors
string endeffector
# 0: position and orientation 1: position only 2: orientation only
int8 type
# the frames of the ik targets
string[] target_frames
# target position/orientation for frame in world coordinates (if applicable)
geometry_msgs/Pose[] poses
# position weights of the ik targets
int8[] weights


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



(provide :roboy_middleware_msgs/InverseKinematicsMultipleFrames "107f632de622d50f348636c2127cece2")


