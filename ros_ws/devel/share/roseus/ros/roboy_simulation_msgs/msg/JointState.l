;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::JointState)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'JointState (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::JOINTSTATE")
  (make-package "ROBOY_SIMULATION_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::JointState
  :super ros::object
  :slots (_names _origin _axis _torque _q _qd ))

(defmethod roboy_simulation_msgs::JointState
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:origin __origin) ())
    ((:axis __axis) ())
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:qd __qd) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _origin __origin)
   (setq _axis __axis)
   (setq _torque __torque)
   (setq _q __q)
   (setq _qd __qd)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:axis
   (&rest __axis)
   (if (keywordp (car __axis))
       (send* _axis __axis)
     (progn
       (if __axis (setq _axis (car __axis)))
       _axis)))
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:qd
   (&optional __qd)
   (if __qd (setq _qd __qd)) _qd)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; geometry_msgs/Vector3[] _origin
    (apply #'+ (send-all _origin :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _axis
    (apply #'+ (send-all _axis :serialization-length)) 4
    ;; float64[] _torque
    (* 8    (length _torque)) 4
    ;; float32[] _q
    (* 4    (length _q)) 4
    ;; float32[] _qd
    (* 4    (length _qd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Vector3[] _origin
     (write-long (length _origin) s)
     (dolist (elem _origin)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _axis
     (write-long (length _axis) s)
     (dolist (elem _axis)
       (send elem :serialize s)
       )
     ;; float64[] _torque
     (write-long (length _torque) s)
     (dotimes (i (length _torque))
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _qd
     (write-long (length _qd) s)
     (dotimes (i (length _qd))
       (sys::poke (elt _qd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Vector3[] _origin
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _origin (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _origin)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _axis
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _axis (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _axis)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32[] _q
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _qd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _qd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::JointState :md5sum-) "f172c3b09cb0d7db3f536e0f2680157d")
(setf (get roboy_simulation_msgs::JointState :datatype-) "roboy_simulation_msgs/JointState")
(setf (get roboy_simulation_msgs::JointState :definition-)
      "# joint name
string[] names
# joint origin in global coordinates
geometry_msgs/Vector3[] origin
# joint axis in global coordinates
geometry_msgs/Vector3[] axis
float64[] torque
# angle in radian
float32[] q
# velocity in meter/s
float32[] qd
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :roboy_simulation_msgs/JointState "f172c3b09cb0d7db3f536e0f2680157d")


