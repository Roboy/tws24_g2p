;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::ControlMode)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'ControlMode (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODE"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODEREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODEREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODERESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::CONTROLMODERESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::ControlModeRequest
  :super ros::object
  :slots (_control_mode _set_points _global_id ))

(defmethod roboy_middleware_msgs::ControlModeRequest
  (:init
   (&key
    ((:control_mode __control_mode) 0)
    ((:set_points __set_points) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_id __global_id) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _control_mode (round __control_mode))
   (setq _set_points __set_points)
   (setq _global_id __global_id)
   self)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:set_points
   (&optional __set_points)
   (if __set_points (setq _set_points __set_points)) _set_points)
  (:global_id
   (&optional __global_id)
   (if __global_id (setq _global_id __global_id)) _global_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_mode
    1
    ;; float32[] _set_points
    (* 4    (length _set_points)) 4
    ;; uint8[] _global_id
    (* 1    (length _global_id)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; float32[] _set_points
     (write-long (length _set_points) s)
     (dotimes (i (length _set_points))
       (sys::poke (elt _set_points i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _global_id
     (write-long (length _global_id) s)
     (princ _global_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _set_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set_points (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _set_points i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _global_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _global_id (make-array n :element-type :char))
     (replace _global_id buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::ControlModeResponse
  :super ros::object
  :slots ())

(defmethod roboy_middleware_msgs::ControlModeResponse
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

(defclass roboy_middleware_msgs::ControlMode
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::ControlMode :md5sum-) "d6e1c54934446851505150d7d89f00c1")
(setf (get roboy_middleware_msgs::ControlMode :datatype-) "roboy_middleware_msgs/ControlMode")
(setf (get roboy_middleware_msgs::ControlMode :request) roboy_middleware_msgs::ControlModeRequest)
(setf (get roboy_middleware_msgs::ControlMode :response) roboy_middleware_msgs::ControlModeResponse)

(defmethod roboy_middleware_msgs::ControlModeRequest
  (:response () (instance roboy_middleware_msgs::ControlModeResponse :init)))

(setf (get roboy_middleware_msgs::ControlModeRequest :md5sum-) "d6e1c54934446851505150d7d89f00c1")
(setf (get roboy_middleware_msgs::ControlModeRequest :datatype-) "roboy_middleware_msgs/ControlModeRequest")
(setf (get roboy_middleware_msgs::ControlModeRequest :definition-)
      "uint8 control_mode # 0: position, 1: velocity, 2: displacement
float32[] set_points
# if left empty, all motors will be changed to the requested control mode
uint8[] global_id
---

")

(setf (get roboy_middleware_msgs::ControlModeResponse :md5sum-) "d6e1c54934446851505150d7d89f00c1")
(setf (get roboy_middleware_msgs::ControlModeResponse :datatype-) "roboy_middleware_msgs/ControlModeResponse")
(setf (get roboy_middleware_msgs::ControlModeResponse :definition-)
      "uint8 control_mode # 0: position, 1: velocity, 2: displacement
float32[] set_points
# if left empty, all motors will be changed to the requested control mode
uint8[] global_id
---

")



(provide :roboy_middleware_msgs/ControlMode "d6e1c54934446851505150d7d89f00c1")


