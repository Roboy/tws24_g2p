;; Auto-generated. Do not edit!


(when (boundp 'bench_pkg::SetMotorCommand)
  (if (not (find-package "BENCH_PKG"))
    (make-package "BENCH_PKG"))
  (shadow 'SetMotorCommand (find-package "BENCH_PKG")))
(unless (find-package "BENCH_PKG::SETMOTORCOMMAND")
  (make-package "BENCH_PKG::SETMOTORCOMMAND"))
(unless (find-package "BENCH_PKG::SETMOTORCOMMANDREQUEST")
  (make-package "BENCH_PKG::SETMOTORCOMMANDREQUEST"))
(unless (find-package "BENCH_PKG::SETMOTORCOMMANDRESPONSE")
  (make-package "BENCH_PKG::SETMOTORCOMMANDRESPONSE"))

(in-package "ROS")





(defclass bench_pkg::SetMotorCommandRequest
  :super ros::object
  :slots (_myobrick_global_ids _pwm_values ))

(defmethod bench_pkg::SetMotorCommandRequest
  (:init
   (&key
    ((:myobrick_global_ids __myobrick_global_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pwm_values __pwm_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _myobrick_global_ids __myobrick_global_ids)
   (setq _pwm_values __pwm_values)
   self)
  (:myobrick_global_ids
   (&optional __myobrick_global_ids)
   (if __myobrick_global_ids (setq _myobrick_global_ids __myobrick_global_ids)) _myobrick_global_ids)
  (:pwm_values
   (&optional __pwm_values)
   (if __pwm_values (setq _pwm_values __pwm_values)) _pwm_values)
  (:serialization-length
   ()
   (+
    ;; int32[] _myobrick_global_ids
    (* 4    (length _myobrick_global_ids)) 4
    ;; float32[] _pwm_values
    (* 4    (length _pwm_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _myobrick_global_ids
     (write-long (length _myobrick_global_ids) s)
     (dotimes (i (length _myobrick_global_ids))
       (write-long (elt _myobrick_global_ids i) s)
       )
     ;; float32[] _pwm_values
     (write-long (length _pwm_values) s)
     (dotimes (i (length _pwm_values))
       (sys::poke (elt _pwm_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _myobrick_global_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _myobrick_global_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _myobrick_global_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _pwm_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pwm_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pwm_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass bench_pkg::SetMotorCommandResponse
  :super ros::object
  :slots (_joint_angle ))

(defmethod bench_pkg::SetMotorCommandResponse
  (:init
   (&key
    ((:joint_angle __joint_angle) 0.0)
    )
   (send-super :init)
   (setq _joint_angle (float __joint_angle))
   self)
  (:joint_angle
   (&optional __joint_angle)
   (if __joint_angle (setq _joint_angle __joint_angle)) _joint_angle)
  (:serialization-length
   ()
   (+
    ;; float32 _joint_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint_angle
       (sys::poke _joint_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint_angle
     (setq _joint_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass bench_pkg::SetMotorCommand
  :super ros::object
  :slots ())

(setf (get bench_pkg::SetMotorCommand :md5sum-) "2bc439979375aa92eca8a81319923084")
(setf (get bench_pkg::SetMotorCommand :datatype-) "bench_pkg/SetMotorCommand")
(setf (get bench_pkg::SetMotorCommand :request) bench_pkg::SetMotorCommandRequest)
(setf (get bench_pkg::SetMotorCommand :response) bench_pkg::SetMotorCommandResponse)

(defmethod bench_pkg::SetMotorCommandRequest
  (:response () (instance bench_pkg::SetMotorCommandResponse :init)))

(setf (get bench_pkg::SetMotorCommandRequest :md5sum-) "2bc439979375aa92eca8a81319923084")
(setf (get bench_pkg::SetMotorCommandRequest :datatype-) "bench_pkg/SetMotorCommandRequest")
(setf (get bench_pkg::SetMotorCommandRequest :definition-)
      "int32[] myobrick_global_ids
float32[] pwm_values
---
float32 joint_angle
")

(setf (get bench_pkg::SetMotorCommandResponse :md5sum-) "2bc439979375aa92eca8a81319923084")
(setf (get bench_pkg::SetMotorCommandResponse :datatype-) "bench_pkg/SetMotorCommandResponse")
(setf (get bench_pkg::SetMotorCommandResponse :definition-)
      "int32[] myobrick_global_ids
float32[] pwm_values
---
float32 joint_angle
")



(provide :bench_pkg/SetMotorCommand "2bc439979375aa92eca8a81319923084")


