;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::GymStep)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'GymStep (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMSTEP")
  (make-package "ROBOY_SIMULATION_MSGS::GYMSTEP"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMSTEPREQUEST")
  (make-package "ROBOY_SIMULATION_MSGS::GYMSTEPREQUEST"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMSTEPRESPONSE")
  (make-package "ROBOY_SIMULATION_MSGS::GYMSTEPRESPONSE"))

(in-package "ROS")





(defclass roboy_simulation_msgs::GymStepRequest
  :super ros::object
  :slots (_controller _set_points _step_size ))

(defmethod roboy_simulation_msgs::GymStepRequest
  (:init
   (&key
    ((:controller __controller) 0)
    ((:set_points __set_points) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:step_size __step_size) 0.0)
    )
   (send-super :init)
   (setq _controller (round __controller))
   (setq _set_points __set_points)
   (setq _step_size (float __step_size))
   self)
  (:controller
   (&optional __controller)
   (if __controller (setq _controller __controller)) _controller)
  (:set_points
   (&optional __set_points)
   (if __set_points (setq _set_points __set_points)) _set_points)
  (:step_size
   (&optional __step_size)
   (if __step_size (setq _step_size __step_size)) _step_size)
  (:serialization-length
   ()
   (+
    ;; int8 _controller
    1
    ;; float64[] _set_points
    (* 8    (length _set_points)) 4
    ;; float64 _step_size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _controller
       (write-byte _controller s)
     ;; float64[] _set_points
     (write-long (length _set_points) s)
     (dotimes (i (length _set_points))
       (sys::poke (elt _set_points i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _step_size
       (sys::poke _step_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _controller
     (setq _controller (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controller 127) (setq _controller (- _controller 256)))
   ;; float64[] _set_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set_points (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _set_points i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _step_size
     (setq _step_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roboy_simulation_msgs::GymStepResponse
  :super ros::object
  :slots (_q _qdot _feasible ))

(defmethod roboy_simulation_msgs::GymStepResponse
  (:init
   (&key
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qdot __qdot) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feasible __feasible) nil)
    )
   (send-super :init)
   (setq _q __q)
   (setq _qdot __qdot)
   (setq _feasible __feasible)
   self)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:qdot
   (&optional __qdot)
   (if __qdot (setq _qdot __qdot)) _qdot)
  (:feasible
   (&optional (__feasible :null))
   (if (not (eq __feasible :null)) (setq _feasible __feasible)) _feasible)
  (:serialization-length
   ()
   (+
    ;; float64[] _q
    (* 8    (length _q)) 4
    ;; float64[] _qdot
    (* 8    (length _qdot)) 4
    ;; bool _feasible
    1
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
     ;; float64[] _qdot
     (write-long (length _qdot) s)
     (dotimes (i (length _qdot))
       (sys::poke (elt _qdot i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _feasible
       (if _feasible (write-byte -1 s) (write-byte 0 s))
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
   ;; float64[] _qdot
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qdot (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qdot i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool _feasible
     (setq _feasible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_simulation_msgs::GymStep
  :super ros::object
  :slots ())

(setf (get roboy_simulation_msgs::GymStep :md5sum-) "da078c4985541d376efaaa93946e1b7b")
(setf (get roboy_simulation_msgs::GymStep :datatype-) "roboy_simulation_msgs/GymStep")
(setf (get roboy_simulation_msgs::GymStep :request) roboy_simulation_msgs::GymStepRequest)
(setf (get roboy_simulation_msgs::GymStep :response) roboy_simulation_msgs::GymStepResponse)

(defmethod roboy_simulation_msgs::GymStepRequest
  (:response () (instance roboy_simulation_msgs::GymStepResponse :init)))

(setf (get roboy_simulation_msgs::GymStepRequest :md5sum-) "da078c4985541d376efaaa93946e1b7b")
(setf (get roboy_simulation_msgs::GymStepRequest :datatype-) "roboy_simulation_msgs/GymStepRequest")
(setf (get roboy_simulation_msgs::GymStepRequest :definition-)
      "int8 controller #position, vel or displacement
float64[] set_points
float64 step_size
---
float64[] q
float64[] qdot
bool feasible

")

(setf (get roboy_simulation_msgs::GymStepResponse :md5sum-) "da078c4985541d376efaaa93946e1b7b")
(setf (get roboy_simulation_msgs::GymStepResponse :datatype-) "roboy_simulation_msgs/GymStepResponse")
(setf (get roboy_simulation_msgs::GymStepResponse :definition-)
      "int8 controller #position, vel or displacement
float64[] set_points
float64 step_size
---
float64[] q
float64[] qdot
bool feasible

")



(provide :roboy_simulation_msgs/GymStep "da078c4985541d376efaaa93946e1b7b")


