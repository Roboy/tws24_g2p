;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::ForwardKinematics)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'ForwardKinematics (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICS"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICSREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICSREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICSRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FORWARDKINEMATICSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_middleware_msgs::ForwardKinematicsRequest
  :super ros::object
  :slots (_endeffector _frame _joint_names _angles ))

(defmethod roboy_middleware_msgs::ForwardKinematicsRequest
  (:init
   (&key
    ((:endeffector __endeffector) "")
    ((:frame __frame) "")
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _endeffector (string __endeffector))
   (setq _frame (string __frame))
   (setq _joint_names __joint_names)
   (setq _angles __angles)
   self)
  (:endeffector
   (&optional __endeffector)
   (if __endeffector (setq _endeffector __endeffector)) _endeffector)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; string _endeffector
    4 (length _endeffector)
    ;; string _frame
    4 (length _frame)
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _endeffector
       (write-long (length _endeffector) s) (princ _endeffector s)
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
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
   ;; string _endeffector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endeffector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass roboy_middleware_msgs::ForwardKinematicsResponse
  :super ros::object
  :slots (_pose ))

(defmethod roboy_middleware_msgs::ForwardKinematicsResponse
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

(defclass roboy_middleware_msgs::ForwardKinematics
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::ForwardKinematics :md5sum-) "149f3e2da33d6bf7881371447411f783")
(setf (get roboy_middleware_msgs::ForwardKinematics :datatype-) "roboy_middleware_msgs/ForwardKinematics")
(setf (get roboy_middleware_msgs::ForwardKinematics :request) roboy_middleware_msgs::ForwardKinematicsRequest)
(setf (get roboy_middleware_msgs::ForwardKinematics :response) roboy_middleware_msgs::ForwardKinematicsResponse)

(defmethod roboy_middleware_msgs::ForwardKinematicsRequest
  (:response () (instance roboy_middleware_msgs::ForwardKinematicsResponse :init)))

(setf (get roboy_middleware_msgs::ForwardKinematicsRequest :md5sum-) "149f3e2da33d6bf7881371447411f783")
(setf (get roboy_middleware_msgs::ForwardKinematicsRequest :datatype-) "roboy_middleware_msgs/ForwardKinematicsRequest")
(setf (get roboy_middleware_msgs::ForwardKinematicsRequest :definition-)
      "# name of the endeffector
string endeffector
# the frame of the fk target
string frame
# joint names with corresponding joint angles,
# joints that are not defined will be used from the current state of the robot
string[] joint_names
float64[] angles
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

(setf (get roboy_middleware_msgs::ForwardKinematicsResponse :md5sum-) "149f3e2da33d6bf7881371447411f783")
(setf (get roboy_middleware_msgs::ForwardKinematicsResponse :datatype-) "roboy_middleware_msgs/ForwardKinematicsResponse")
(setf (get roboy_middleware_msgs::ForwardKinematicsResponse :definition-)
      "# name of the endeffector
string endeffector
# the frame of the fk target
string frame
# joint names with corresponding joint angles,
# joints that are not defined will be used from the current state of the robot
string[] joint_names
float64[] angles
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



(provide :roboy_middleware_msgs/ForwardKinematics "149f3e2da33d6bf7881371447411f783")


