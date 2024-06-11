;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::LookAtGoal)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'LookAtGoal (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::LOOKATGOAL")
  (make-package "ROBOY_CONTROL_MSGS::LOOKATGOAL"))

(in-package "ROS")
;;//! \htmlinclude LookAtGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_control_msgs::LookAtGoal
  :super ros::object
  :slots (_endEffector _yaw_joint_index _pitch_joint_index _type _point _root_frame _target_frame _sendToRealHardware _timeout _tolerance ))

(defmethod roboy_control_msgs::LookAtGoal
  (:init
   (&key
    ((:endEffector __endEffector) "")
    ((:yaw_joint_index __yaw_joint_index) 0)
    ((:pitch_joint_index __pitch_joint_index) 0)
    ((:type __type) 0)
    ((:point __point) (instance geometry_msgs::Vector3 :init))
    ((:root_frame __root_frame) "")
    ((:target_frame __target_frame) "")
    ((:sendToRealHardware __sendToRealHardware) nil)
    ((:timeout __timeout) 0)
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _endEffector (string __endEffector))
   (setq _yaw_joint_index (round __yaw_joint_index))
   (setq _pitch_joint_index (round __pitch_joint_index))
   (setq _type (round __type))
   (setq _point __point)
   (setq _root_frame (string __root_frame))
   (setq _target_frame (string __target_frame))
   (setq _sendToRealHardware __sendToRealHardware)
   (setq _timeout (round __timeout))
   (setq _tolerance (float __tolerance))
   self)
  (:endEffector
   (&optional __endEffector)
   (if __endEffector (setq _endEffector __endEffector)) _endEffector)
  (:yaw_joint_index
   (&optional __yaw_joint_index)
   (if __yaw_joint_index (setq _yaw_joint_index __yaw_joint_index)) _yaw_joint_index)
  (:pitch_joint_index
   (&optional __pitch_joint_index)
   (if __pitch_joint_index (setq _pitch_joint_index __pitch_joint_index)) _pitch_joint_index)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:root_frame
   (&optional __root_frame)
   (if __root_frame (setq _root_frame __root_frame)) _root_frame)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:sendToRealHardware
   (&optional (__sendToRealHardware :null))
   (if (not (eq __sendToRealHardware :null)) (setq _sendToRealHardware __sendToRealHardware)) _sendToRealHardware)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; string _endEffector
    4 (length _endEffector)
    ;; int32 _yaw_joint_index
    4
    ;; int32 _pitch_joint_index
    4
    ;; int32 _type
    4
    ;; geometry_msgs/Vector3 _point
    (send _point :serialization-length)
    ;; string _root_frame
    4 (length _root_frame)
    ;; string _target_frame
    4 (length _target_frame)
    ;; bool _sendToRealHardware
    1
    ;; int32 _timeout
    4
    ;; float32 _tolerance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _endEffector
       (write-long (length _endEffector) s) (princ _endEffector s)
     ;; int32 _yaw_joint_index
       (write-long _yaw_joint_index s)
     ;; int32 _pitch_joint_index
       (write-long _pitch_joint_index s)
     ;; int32 _type
       (write-long _type s)
     ;; geometry_msgs/Vector3 _point
       (send _point :serialize s)
     ;; string _root_frame
       (write-long (length _root_frame) s) (princ _root_frame s)
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; bool _sendToRealHardware
       (if _sendToRealHardware (write-byte -1 s) (write-byte 0 s))
     ;; int32 _timeout
       (write-long _timeout s)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _endEffector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _endEffector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _yaw_joint_index
     (setq _yaw_joint_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pitch_joint_index
     (setq _pitch_joint_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; string _root_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _root_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _sendToRealHardware
     (setq _sendToRealHardware (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_control_msgs::LookAtGoal :md5sum-) "7f48da693a0e6a39c4c3e11abc6ed7e6")
(setf (get roboy_control_msgs::LookAtGoal :datatype-) "roboy_control_msgs/LookAtGoal")
(setf (get roboy_control_msgs::LookAtGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
string endEffector
int32 yaw_joint_index
int32 pitch_joint_index
# 0: point in world frame
# 1: target frame relative to root_frame
# 2: target frame relative to root_frame single shot
int32 type
geometry_msgs/Vector3 point
string root_frame
string target_frame
bool sendToRealHardware
int32 timeout
float32 tolerance

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



(provide :roboy_control_msgs/LookAtGoal "7f48da693a0e6a39c4c3e11abc6ed7e6")


