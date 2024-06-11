;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::ArmStatus)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'ArmStatus (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::ARMSTATUS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::ARMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ArmStatus.msg.html


(defclass roboy_middleware_msgs::ArmStatus
  :super ros::object
  :slots (_id _current _gyro_x _gyro_y _gyro_z _acc_x _acc_y _acc_z _elbow_joint_angle _elbow_joint_angle_setpoint _elbow_agonist_setpoint _elbow_antagonist_setpoint _wrist_joint_angle _wrist_joint_angle_setpoint _wrist_agonist_setpoint _wrist_antagonist_setpoint ))

(defmethod roboy_middleware_msgs::ArmStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:current __current) (make-array 0 :initial-element 0 :element-type :integer))
    ((:gyro_x __gyro_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyro_y __gyro_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyro_z __gyro_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_x __acc_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_y __acc_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc_z __acc_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:elbow_joint_angle __elbow_joint_angle) 0.0)
    ((:elbow_joint_angle_setpoint __elbow_joint_angle_setpoint) 0.0)
    ((:elbow_agonist_setpoint __elbow_agonist_setpoint) 0)
    ((:elbow_antagonist_setpoint __elbow_antagonist_setpoint) 0)
    ((:wrist_joint_angle __wrist_joint_angle) 0.0)
    ((:wrist_joint_angle_setpoint __wrist_joint_angle_setpoint) 0.0)
    ((:wrist_agonist_setpoint __wrist_agonist_setpoint) 0)
    ((:wrist_antagonist_setpoint __wrist_antagonist_setpoint) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _current __current)
   (setq _gyro_x __gyro_x)
   (setq _gyro_y __gyro_y)
   (setq _gyro_z __gyro_z)
   (setq _acc_x __acc_x)
   (setq _acc_y __acc_y)
   (setq _acc_z __acc_z)
   (setq _elbow_joint_angle (float __elbow_joint_angle))
   (setq _elbow_joint_angle_setpoint (float __elbow_joint_angle_setpoint))
   (setq _elbow_agonist_setpoint (round __elbow_agonist_setpoint))
   (setq _elbow_antagonist_setpoint (round __elbow_antagonist_setpoint))
   (setq _wrist_joint_angle (float __wrist_joint_angle))
   (setq _wrist_joint_angle_setpoint (float __wrist_joint_angle_setpoint))
   (setq _wrist_agonist_setpoint (round __wrist_agonist_setpoint))
   (setq _wrist_antagonist_setpoint (round __wrist_antagonist_setpoint))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:elbow_joint_angle
   (&optional __elbow_joint_angle)
   (if __elbow_joint_angle (setq _elbow_joint_angle __elbow_joint_angle)) _elbow_joint_angle)
  (:elbow_joint_angle_setpoint
   (&optional __elbow_joint_angle_setpoint)
   (if __elbow_joint_angle_setpoint (setq _elbow_joint_angle_setpoint __elbow_joint_angle_setpoint)) _elbow_joint_angle_setpoint)
  (:elbow_agonist_setpoint
   (&optional __elbow_agonist_setpoint)
   (if __elbow_agonist_setpoint (setq _elbow_agonist_setpoint __elbow_agonist_setpoint)) _elbow_agonist_setpoint)
  (:elbow_antagonist_setpoint
   (&optional __elbow_antagonist_setpoint)
   (if __elbow_antagonist_setpoint (setq _elbow_antagonist_setpoint __elbow_antagonist_setpoint)) _elbow_antagonist_setpoint)
  (:wrist_joint_angle
   (&optional __wrist_joint_angle)
   (if __wrist_joint_angle (setq _wrist_joint_angle __wrist_joint_angle)) _wrist_joint_angle)
  (:wrist_joint_angle_setpoint
   (&optional __wrist_joint_angle_setpoint)
   (if __wrist_joint_angle_setpoint (setq _wrist_joint_angle_setpoint __wrist_joint_angle_setpoint)) _wrist_joint_angle_setpoint)
  (:wrist_agonist_setpoint
   (&optional __wrist_agonist_setpoint)
   (if __wrist_agonist_setpoint (setq _wrist_agonist_setpoint __wrist_agonist_setpoint)) _wrist_agonist_setpoint)
  (:wrist_antagonist_setpoint
   (&optional __wrist_antagonist_setpoint)
   (if __wrist_antagonist_setpoint (setq _wrist_antagonist_setpoint __wrist_antagonist_setpoint)) _wrist_antagonist_setpoint)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint16[] _current
    (* 2    (length _current)) 4
    ;; float32[] _gyro_x
    (* 4    (length _gyro_x)) 4
    ;; float32[] _gyro_y
    (* 4    (length _gyro_y)) 4
    ;; float32[] _gyro_z
    (* 4    (length _gyro_z)) 4
    ;; float32[] _acc_x
    (* 4    (length _acc_x)) 4
    ;; float32[] _acc_y
    (* 4    (length _acc_y)) 4
    ;; float32[] _acc_z
    (* 4    (length _acc_z)) 4
    ;; float32 _elbow_joint_angle
    4
    ;; float32 _elbow_joint_angle_setpoint
    4
    ;; int32 _elbow_agonist_setpoint
    4
    ;; int32 _elbow_antagonist_setpoint
    4
    ;; float32 _wrist_joint_angle
    4
    ;; float32 _wrist_joint_angle_setpoint
    4
    ;; int32 _wrist_agonist_setpoint
    4
    ;; int32 _wrist_antagonist_setpoint
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint16[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (write-word (elt _current i) s)
       )
     ;; float32[] _gyro_x
     (write-long (length _gyro_x) s)
     (dotimes (i (length _gyro_x))
       (sys::poke (elt _gyro_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _gyro_y
     (write-long (length _gyro_y) s)
     (dotimes (i (length _gyro_y))
       (sys::poke (elt _gyro_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _gyro_z
     (write-long (length _gyro_z) s)
     (dotimes (i (length _gyro_z))
       (sys::poke (elt _gyro_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_x
     (write-long (length _acc_x) s)
     (dotimes (i (length _acc_x))
       (sys::poke (elt _acc_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_y
     (write-long (length _acc_y) s)
     (dotimes (i (length _acc_y))
       (sys::poke (elt _acc_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc_z
     (write-long (length _acc_z) s)
     (dotimes (i (length _acc_z))
       (sys::poke (elt _acc_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _elbow_joint_angle
       (sys::poke _elbow_joint_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elbow_joint_angle_setpoint
       (sys::poke _elbow_joint_angle_setpoint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _elbow_agonist_setpoint
       (write-long _elbow_agonist_setpoint s)
     ;; int32 _elbow_antagonist_setpoint
       (write-long _elbow_antagonist_setpoint s)
     ;; float32 _wrist_joint_angle
       (sys::poke _wrist_joint_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wrist_joint_angle_setpoint
       (sys::poke _wrist_joint_angle_setpoint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _wrist_agonist_setpoint
       (write-long _wrist_agonist_setpoint s)
     ;; int32 _wrist_antagonist_setpoint
       (write-long _wrist_antagonist_setpoint s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _gyro_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _gyro_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _gyro_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _elbow_joint_angle
     (setq _elbow_joint_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elbow_joint_angle_setpoint
     (setq _elbow_joint_angle_setpoint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _elbow_agonist_setpoint
     (setq _elbow_agonist_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _elbow_antagonist_setpoint
     (setq _elbow_antagonist_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _wrist_joint_angle
     (setq _wrist_joint_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wrist_joint_angle_setpoint
     (setq _wrist_joint_angle_setpoint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _wrist_agonist_setpoint
     (setq _wrist_agonist_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wrist_antagonist_setpoint
     (setq _wrist_antagonist_setpoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::ArmStatus :md5sum-) "32e4d7965075582ce76a819199877dad")
(setf (get roboy_middleware_msgs::ArmStatus :datatype-) "roboy_middleware_msgs/ArmStatus")
(setf (get roboy_middleware_msgs::ArmStatus :definition-)
      "uint8 id
# six current measurements per arm board
uint16[] current
float32[] gyro_x
float32[] gyro_y
float32[] gyro_z
float32[] acc_x
float32[] acc_y
float32[] acc_z
float32 elbow_joint_angle
float32 elbow_joint_angle_setpoint
int32 elbow_agonist_setpoint
int32 elbow_antagonist_setpoint
float32 wrist_joint_angle
float32 wrist_joint_angle_setpoint
int32 wrist_agonist_setpoint
int32 wrist_antagonist_setpoint
")



(provide :roboy_middleware_msgs/ArmStatus "32e4d7965075582ce76a819199877dad")


