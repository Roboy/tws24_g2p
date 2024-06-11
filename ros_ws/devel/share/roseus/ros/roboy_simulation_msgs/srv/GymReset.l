;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::GymReset)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'GymReset (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMRESET")
  (make-package "ROBOY_SIMULATION_MSGS::GYMRESET"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMRESETREQUEST")
  (make-package "ROBOY_SIMULATION_MSGS::GYMRESETREQUEST"))
(unless (find-package "ROBOY_SIMULATION_MSGS::GYMRESETRESPONSE")
  (make-package "ROBOY_SIMULATION_MSGS::GYMRESETRESPONSE"))

(in-package "ROS")





(defclass roboy_simulation_msgs::GymResetRequest
  :super ros::object
  :slots (_step_size ))

(defmethod roboy_simulation_msgs::GymResetRequest
  (:init
   (&key
    ((:step_size __step_size) 0.0)
    )
   (send-super :init)
   (setq _step_size (float __step_size))
   self)
  (:step_size
   (&optional __step_size)
   (if __step_size (setq _step_size __step_size)) _step_size)
  (:serialization-length
   ()
   (+
    ;; float64 _step_size
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _step_size
       (sys::poke _step_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _step_size
     (setq _step_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roboy_simulation_msgs::GymResetResponse
  :super ros::object
  :slots (_q _qdot ))

(defmethod roboy_simulation_msgs::GymResetResponse
  (:init
   (&key
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qdot __qdot) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _q __q)
   (setq _qdot __qdot)
   self)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:qdot
   (&optional __qdot)
   (if __qdot (setq _qdot __qdot)) _qdot)
  (:serialization-length
   ()
   (+
    ;; float64[] _q
    (* 8    (length _q)) 4
    ;; float64[] _qdot
    (* 8    (length _qdot)) 4
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
   ;;
   self)
  )

(defclass roboy_simulation_msgs::GymReset
  :super ros::object
  :slots ())

(setf (get roboy_simulation_msgs::GymReset :md5sum-) "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(setf (get roboy_simulation_msgs::GymReset :datatype-) "roboy_simulation_msgs/GymReset")
(setf (get roboy_simulation_msgs::GymReset :request) roboy_simulation_msgs::GymResetRequest)
(setf (get roboy_simulation_msgs::GymReset :response) roboy_simulation_msgs::GymResetResponse)

(defmethod roboy_simulation_msgs::GymResetRequest
  (:response () (instance roboy_simulation_msgs::GymResetResponse :init)))

(setf (get roboy_simulation_msgs::GymResetRequest :md5sum-) "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(setf (get roboy_simulation_msgs::GymResetRequest :datatype-) "roboy_simulation_msgs/GymResetRequest")
(setf (get roboy_simulation_msgs::GymResetRequest :definition-)
      "float64 step_size
---
float64[] q
float64[] qdot

")

(setf (get roboy_simulation_msgs::GymResetResponse :md5sum-) "fdf499de51c0ee0bd20e6f3b5df6ddb4")
(setf (get roboy_simulation_msgs::GymResetResponse :datatype-) "roboy_simulation_msgs/GymResetResponse")
(setf (get roboy_simulation_msgs::GymResetResponse :definition-)
      "float64 step_size
---
float64[] q
float64[] qdot

")



(provide :roboy_simulation_msgs/GymReset "fdf499de51c0ee0bd20e6f3b5df6ddb4")


