;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::ControllerType)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'ControllerType (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::CONTROLLERTYPE")
  (make-package "ROBOY_SIMULATION_MSGS::CONTROLLERTYPE"))

(in-package "ROS")
;;//! \htmlinclude ControllerType.msg.html


(defclass roboy_simulation_msgs::ControllerType
  :super ros::object
  :slots (_joint_name _type ))

(defmethod roboy_simulation_msgs::ControllerType
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _type (round __type))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::ControllerType :md5sum-) "75ea1207d0622977ffe04469bf40935f")
(setf (get roboy_simulation_msgs::ControllerType :datatype-) "roboy_simulation_msgs/ControllerType")
(setf (get roboy_simulation_msgs::ControllerType :definition-)
      "string joint_name
int8 type
")



(provide :roboy_simulation_msgs/ControllerType "75ea1207d0622977ffe04469bf40935f")


