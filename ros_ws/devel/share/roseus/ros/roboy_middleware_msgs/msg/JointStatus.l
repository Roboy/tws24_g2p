;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::JointStatus)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'JointStatus (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::JOINTSTATUS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::JOINTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JointStatus.msg.html


(defclass roboy_middleware_msgs::JointStatus
  :super ros::object
  :slots (_absAngles _relAngles ))

(defmethod roboy_middleware_msgs::JointStatus
  (:init
   (&key
    ((:absAngles __absAngles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:relAngles __relAngles) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _absAngles __absAngles)
   (setq _relAngles __relAngles)
   self)
  (:absAngles
   (&optional __absAngles)
   (if __absAngles (setq _absAngles __absAngles)) _absAngles)
  (:relAngles
   (&optional __relAngles)
   (if __relAngles (setq _relAngles __relAngles)) _relAngles)
  (:serialization-length
   ()
   (+
    ;; uint32[] _absAngles
    (* 4    (length _absAngles)) 4
    ;; uint32[] _relAngles
    (* 4    (length _relAngles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _absAngles
     (write-long (length _absAngles) s)
     (dotimes (i (length _absAngles))
       (write-long (elt _absAngles i) s)
       )
     ;; uint32[] _relAngles
     (write-long (length _relAngles) s)
     (dotimes (i (length _relAngles))
       (write-long (elt _relAngles i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _absAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _absAngles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _absAngles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _relAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relAngles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _relAngles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::JointStatus :md5sum-) "4933cd49b716032e0de2cf902e8150fa")
(setf (get roboy_middleware_msgs::JointStatus :datatype-) "roboy_middleware_msgs/JointStatus")
(setf (get roboy_middleware_msgs::JointStatus :definition-)
      "uint32[] absAngles
uint32[] relAngles
")



(provide :roboy_middleware_msgs/JointStatus "4933cd49b716032e0de2cf902e8150fa")


