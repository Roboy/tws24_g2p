;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::RoboyState)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'RoboyState (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::ROBOYSTATE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::ROBOYSTATE"))

(in-package "ROS")
;;//! \htmlinclude RoboyState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_middleware_msgs::RoboyState
  :super ros::object
  :slots (_header _name _power_sense _power_5V_enabled _power_12V_enabled _current ))

(defmethod roboy_middleware_msgs::RoboyState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:power_sense __power_sense) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:power_5V_enabled __power_5V_enabled) nil)
    ((:power_12V_enabled __power_12V_enabled) nil)
    ((:current __current) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _power_sense __power_sense)
   (setq _power_5V_enabled __power_5V_enabled)
   (setq _power_12V_enabled __power_12V_enabled)
   (setq _current __current)
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
  (:power_sense
   (&optional __power_sense)
   (if __power_sense (setq _power_sense __power_sense)) _power_sense)
  (:power_5V_enabled
   (&optional (__power_5V_enabled :null))
   (if (not (eq __power_5V_enabled :null)) (setq _power_5V_enabled __power_5V_enabled)) _power_5V_enabled)
  (:power_12V_enabled
   (&optional (__power_12V_enabled :null))
   (if (not (eq __power_12V_enabled :null)) (setq _power_12V_enabled __power_12V_enabled)) _power_12V_enabled)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; bool[] _power_sense
    (* 1    (length _power_sense)) 4
    ;; bool _power_5V_enabled
    1
    ;; bool _power_12V_enabled
    1
    ;; float32[] _current
    (* 4    (length _current)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool[] _power_sense
     (write-long (length _power_sense) s)
     (dotimes (i (length _power_sense))
       (if (elt _power_sense i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _power_5V_enabled
       (if _power_5V_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _power_12V_enabled
       (if _power_12V_enabled (write-byte -1 s) (write-byte 0 s))
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
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool[] _power_sense
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _power_sense (make-list n))
     (dotimes (i n)
     (setf (elt _power_sense i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool _power_5V_enabled
     (setq _power_5V_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _power_12V_enabled
     (setq _power_12V_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get roboy_middleware_msgs::RoboyState :md5sum-) "b194c9036326e7ae508f1bc6cc2fdf96")
(setf (get roboy_middleware_msgs::RoboyState :datatype-) "roboy_middleware_msgs/RoboyState")
(setf (get roboy_middleware_msgs::RoboyState :definition-)
      "Header header
string name
bool[] power_sense
bool power_5V_enabled
bool power_12V_enabled
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



(provide :roboy_middleware_msgs/RoboyState "b194c9036326e7ae508f1bc6cc2fdf96")


