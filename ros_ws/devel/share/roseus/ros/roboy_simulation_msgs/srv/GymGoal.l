;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::GymGoal)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'GymGoal (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMGOAL")
  (make-package "ROBOY_SIMULATION_MSGS::GYMGOAL"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMGOALREQUEST")
  (make-package "ROBOY_SIMULATION_MSGS::GYMGOALREQUEST"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMGOALRESPONSE")
  (make-package "ROBOY_SIMULATION_MSGS::GYMGOALRESPONSE"))

(in-package "ROS")





(defclass roboy_simulation_msgs::GymGoalRequest
  :super ros::object
  :slots ())

(defmethod roboy_simulation_msgs::GymGoalRequest
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

(defclass roboy_simulation_msgs::GymGoalResponse
  :super ros::object
  :slots (_q ))

(defmethod roboy_simulation_msgs::GymGoalResponse
  (:init
   (&key
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _q __q)
   self)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:serialization-length
   ()
   (+
    ;; float64[] _q
    (* 8    (length _q)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _q
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass roboy_simulation_msgs::GymGoal
  :super ros::object
  :slots ())

(setf (get roboy_simulation_msgs::GymGoal :md5sum-) "ab94b9bcaaa12f74def43e4b33992df1")
(setf (get roboy_simulation_msgs::GymGoal :datatype-) "roboy_simulation_msgs/GymGoal")
(setf (get roboy_simulation_msgs::GymGoal :request) roboy_simulation_msgs::GymGoalRequest)
(setf (get roboy_simulation_msgs::GymGoal :response) roboy_simulation_msgs::GymGoalResponse)

(defmethod roboy_simulation_msgs::GymGoalRequest
  (:response () (instance roboy_simulation_msgs::GymGoalResponse :init)))

(setf (get roboy_simulation_msgs::GymGoalRequest :md5sum-) "ab94b9bcaaa12f74def43e4b33992df1")
(setf (get roboy_simulation_msgs::GymGoalRequest :datatype-) "roboy_simulation_msgs/GymGoalRequest")
(setf (get roboy_simulation_msgs::GymGoalRequest :definition-)
      "---
float64[] q

")

(setf (get roboy_simulation_msgs::GymGoalResponse :md5sum-) "ab94b9bcaaa12f74def43e4b33992df1")
(setf (get roboy_simulation_msgs::GymGoalResponse :datatype-) "roboy_simulation_msgs/GymGoalResponse")
(setf (get roboy_simulation_msgs::GymGoalResponse :definition-)
      "---
float64[] q

")



(provide :roboy_simulation_msgs/GymGoal "ab94b9bcaaa12f74def43e4b33992df1")


