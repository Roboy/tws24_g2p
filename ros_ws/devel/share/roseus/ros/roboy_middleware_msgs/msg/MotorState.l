;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorState)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorState (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORSTATE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_middleware_msgs::MotorState
  :super ros::object
  :slots (_header _global_id _setpoint _encoder0_pos _encoder1_pos _displacement _current ))

(defmethod roboy_middleware_msgs::MotorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:global_id __global_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:setpoint __setpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:encoder0_pos __encoder0_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:encoder1_pos __encoder1_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:displacement __displacement) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current __current) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _global_id __global_id)
   (setq _setpoint __setpoint)
   (setq _encoder0_pos __encoder0_pos)
   (setq _encoder1_pos __encoder1_pos)
   (setq _displacement __displacement)
   (setq _current __current)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:global_id
   (&optional __global_id)
   (if __global_id (setq _global_id __global_id)) _global_id)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:encoder0_pos
   (&optional __encoder0_pos)
   (if __encoder0_pos (setq _encoder0_pos __encoder0_pos)) _encoder0_pos)
  (:encoder1_pos
   (&optional __encoder1_pos)
   (if __encoder1_pos (setq _encoder1_pos __encoder1_pos)) _encoder1_pos)
  (:displacement
   (&optional __displacement)
   (if __displacement (setq _displacement __displacement)) _displacement)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _global_id
    (* 1    (length _global_id)) 4
    ;; float32[] _setpoint
    (* 4    (length _setpoint)) 4
    ;; float32[] _encoder0_pos
    (* 4    (length _encoder0_pos)) 4
    ;; float32[] _encoder1_pos
    (* 4    (length _encoder1_pos)) 4
    ;; float32[] _displacement
    (* 4    (length _displacement)) 4
    ;; float32[] _current
    (* 4    (length _current)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _global_id
     (write-long (length _global_id) s)
     (princ _global_id s)
     ;; float32[] _setpoint
     (write-long (length _setpoint) s)
     (dotimes (i (length _setpoint))
       (sys::poke (elt _setpoint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _encoder0_pos
     (write-long (length _encoder0_pos) s)
     (dotimes (i (length _encoder0_pos))
       (sys::poke (elt _encoder0_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _encoder1_pos
     (write-long (length _encoder1_pos) s)
     (dotimes (i (length _encoder1_pos))
       (sys::poke (elt _encoder1_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _displacement
     (write-long (length _displacement) s)
     (dotimes (i (length _displacement))
       (sys::poke (elt _displacement i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _global_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _global_id (make-array n :element-type :char))
     (replace _global_id buf :start2 ptr-) (incf ptr- n))
   ;; float32[] _setpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _setpoint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _encoder0_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoder0_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _encoder0_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _encoder1_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoder1_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _encoder1_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _displacement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _displacement (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _displacement i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::MotorState :md5sum-) "61eb6482f6cdc52e983eb5e8d69b0aaf")
(setf (get roboy_middleware_msgs::MotorState :datatype-) "roboy_middleware_msgs/MotorState")
(setf (get roboy_middleware_msgs::MotorState :definition-)
      "Header header
uint8[] global_id
float32[] setpoint
float32[] encoder0_pos
float32[] encoder1_pos
float32[] displacement
float32[] current

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

")



(provide :roboy_middleware_msgs/MotorState "61eb6482f6cdc52e983eb5e8d69b0aaf")


