;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DescribeScene)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DescribeScene (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DESCRIBESCENE")
  (make-package "ROBOY_COGNITION_MSGS::DESCRIBESCENE"))
(unless (find-package "ROBOY_COGNITION_MSGS::DESCRIBESCENEREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DESCRIBESCENEREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DESCRIBESCENERESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DESCRIBESCENERESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::DescribeSceneRequest
  :super ros::object
  :slots ())

(defmethod roboy_cognition_msgs::DescribeSceneRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DescribeSceneResponse
  :super ros::object
  :slots (_objects_detected ))

(defmethod roboy_cognition_msgs::DescribeSceneResponse
  (:init
   (&key
    ((:objects_detected __objects_detected) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _objects_detected __objects_detected)
   self)
  (:objects_detected
   (&optional __objects_detected)
   (if __objects_detected (setq _objects_detected __objects_detected)) _objects_detected)
  (:serialization-length
   ()
   (+
    ;; string[] _objects_detected
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _objects_detected)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _objects_detected
     (write-long (length _objects_detected) s)
     (dolist (elem _objects_detected)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _objects_detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_detected (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _objects_detected i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DescribeScene
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DescribeScene :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_cognition_msgs::DescribeScene :datatype-) "roboy_cognition_msgs/DescribeScene")
(setf (get roboy_cognition_msgs::DescribeScene :request) roboy_cognition_msgs::DescribeSceneRequest)
(setf (get roboy_cognition_msgs::DescribeScene :response) roboy_cognition_msgs::DescribeSceneResponse)

(defmethod roboy_cognition_msgs::DescribeSceneRequest
  (:response () (instance roboy_cognition_msgs::DescribeSceneResponse :init)))

(setf (get roboy_cognition_msgs::DescribeSceneRequest :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_cognition_msgs::DescribeSceneRequest :datatype-) "roboy_cognition_msgs/DescribeSceneRequest")
(setf (get roboy_cognition_msgs::DescribeSceneRequest :definition-)
      "---
#objects found from left to right
string[] objects_detected
")

(setf (get roboy_cognition_msgs::DescribeSceneResponse :md5sum-) "7f86144326f6014074f85b3e9d900ff5")
(setf (get roboy_cognition_msgs::DescribeSceneResponse :datatype-) "roboy_cognition_msgs/DescribeSceneResponse")
(setf (get roboy_cognition_msgs::DescribeSceneResponse :definition-)
      "---
#objects found from left to right
string[] objects_detected
")



(provide :roboy_cognition_msgs/DescribeScene "7f86144326f6014074f85b3e9d900ff5")


