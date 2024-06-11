;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::TranslationalPTPMotion)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'TranslationalPTPMotion (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTION")
  (make-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTION"))
(unless (find-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTIONREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTIONREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTIONRESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::TRANSLATIONALPTPMOTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roboy_control_msgs::TranslationalPTPMotionRequest
  :super ros::object
  :slots (_start_point _end_point ))

(defmethod roboy_control_msgs::TranslationalPTPMotionRequest
  (:init
   (&key
    ((:start_point __start_point) (instance geometry_msgs::Point :init))
    ((:end_point __end_point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _start_point __start_point)
   (setq _end_point __end_point)
   self)
  (:start_point
   (&rest __start_point)
   (if (keywordp (car __start_point))
       (send* _start_point __start_point)
     (progn
       (if __start_point (setq _start_point (car __start_point)))
       _start_point)))
  (:end_point
   (&rest __end_point)
   (if (keywordp (car __end_point))
       (send* _end_point __end_point)
     (progn
       (if __end_point (setq _end_point (car __end_point)))
       _end_point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start_point
    (send _start_point :serialization-length)
    ;; geometry_msgs/Point _end_point
    (send _end_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start_point
       (send _start_point :serialize s)
     ;; geometry_msgs/Point _end_point
       (send _end_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start_point
     (send _start_point :deserialize buf ptr-) (incf ptr- (send _start_point :serialization-length))
   ;; geometry_msgs/Point _end_point
     (send _end_point :deserialize buf ptr-) (incf ptr- (send _end_point :serialization-length))
   ;;
   self)
  )

(defclass roboy_control_msgs::TranslationalPTPMotionResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_control_msgs::TranslationalPTPMotionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_control_msgs::TranslationalPTPMotion
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::TranslationalPTPMotion :md5sum-) "98431afc4e02d00f0c1c221ab989e445")
(setf (get roboy_control_msgs::TranslationalPTPMotion :datatype-) "roboy_control_msgs/TranslationalPTPMotion")
(setf (get roboy_control_msgs::TranslationalPTPMotion :request) roboy_control_msgs::TranslationalPTPMotionRequest)
(setf (get roboy_control_msgs::TranslationalPTPMotion :response) roboy_control_msgs::TranslationalPTPMotionResponse)

(defmethod roboy_control_msgs::TranslationalPTPMotionRequest
  (:response () (instance roboy_control_msgs::TranslationalPTPMotionResponse :init)))

(setf (get roboy_control_msgs::TranslationalPTPMotionRequest :md5sum-) "98431afc4e02d00f0c1c221ab989e445")
(setf (get roboy_control_msgs::TranslationalPTPMotionRequest :datatype-) "roboy_control_msgs/TranslationalPTPMotionRequest")
(setf (get roboy_control_msgs::TranslationalPTPMotionRequest :definition-)
      "geometry_msgs/Point start_point
geometry_msgs/Point end_point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")

(setf (get roboy_control_msgs::TranslationalPTPMotionResponse :md5sum-) "98431afc4e02d00f0c1c221ab989e445")
(setf (get roboy_control_msgs::TranslationalPTPMotionResponse :datatype-) "roboy_control_msgs/TranslationalPTPMotionResponse")
(setf (get roboy_control_msgs::TranslationalPTPMotionResponse :definition-)
      "geometry_msgs/Point start_point
geometry_msgs/Point end_point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")



(provide :roboy_control_msgs/TranslationalPTPMotion "98431afc4e02d00f0c1c221ab989e445")


