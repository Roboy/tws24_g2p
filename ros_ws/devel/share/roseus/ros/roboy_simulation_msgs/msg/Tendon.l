;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::Tendon)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'Tendon (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::TENDON")
  (make-package "ROBOY_SIMULATION_MSGS::TENDON"))

(in-package "ROS")
;;//! \htmlinclude Tendon.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_simulation_msgs::Tendon
  :super ros::object
  :slots (_header _name _force _l _ld _number_of_viapoints _viapoints ))

(defmethod roboy_simulation_msgs::Tendon
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:force __force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:l __l) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ld __ld) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:number_of_viapoints __number_of_viapoints) (make-array 0 :initial-element 0 :element-type :integer))
    ((:viapoints __viapoints) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _force __force)
   (setq _l __l)
   (setq _ld __ld)
   (setq _number_of_viapoints __number_of_viapoints)
   (setq _viapoints __viapoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:ld
   (&optional __ld)
   (if __ld (setq _ld __ld)) _ld)
  (:number_of_viapoints
   (&optional __number_of_viapoints)
   (if __number_of_viapoints (setq _number_of_viapoints __number_of_viapoints)) _number_of_viapoints)
  (:viapoints
   (&rest __viapoints)
   (if (keywordp (car __viapoints))
       (send* _viapoints __viapoints)
     (progn
       (if __viapoints (setq _viapoints (car __viapoints)))
       _viapoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float32[] _force
    (* 4    (length _force)) 4
    ;; float32[] _l
    (* 4    (length _l)) 4
    ;; float32[] _ld
    (* 4    (length _ld)) 4
    ;; int32[] _number_of_viapoints
    (* 4    (length _number_of_viapoints)) 4
    ;; geometry_msgs/Vector3[] _viapoints
    (apply #'+ (send-all _viapoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _force
     (write-long (length _force) s)
     (dotimes (i (length _force))
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _l
     (write-long (length _l) s)
     (dotimes (i (length _l))
       (sys::poke (elt _l i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ld
     (write-long (length _ld) s)
     (dotimes (i (length _ld))
       (sys::poke (elt _ld i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _number_of_viapoints
     (write-long (length _number_of_viapoints) s)
     (dotimes (i (length _number_of_viapoints))
       (write-long (elt _number_of_viapoints i) s)
       )
     ;; geometry_msgs/Vector3[] _viapoints
     (write-long (length _viapoints) s)
     (dolist (elem _viapoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _l
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _l (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _l i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ld
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ld (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ld i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _number_of_viapoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _number_of_viapoints (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _number_of_viapoints i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Vector3[] _viapoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _viapoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _viapoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::Tendon :md5sum-) "40cb16776c2b7ebadec4e4fb33291d31")
(setf (get roboy_simulation_msgs::Tendon :datatype-) "roboy_simulation_msgs/Tendon")
(setf (get roboy_simulation_msgs::Tendon :definition-)
      "Header header
# muscle names
string[] name
# force in Newton
float32[] force
# length in meter
float32[] l
# velocity in meter/s
float32[] ld
# number of viapoints
int32[] number_of_viapoints
# viapoints of the tendon in global coordinates
geometry_msgs/Vector3[] viapoints
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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



(provide :roboy_simulation_msgs/Tendon "40cb16776c2b7ebadec4e4fb33291d31")


