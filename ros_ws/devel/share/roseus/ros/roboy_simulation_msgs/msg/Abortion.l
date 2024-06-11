;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::Abortion)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'Abortion (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::ABORTION")
  (make-package "ROBOY_SIMULATION_MSGS::ABORTION"))

(in-package "ROS")
;;//! \htmlinclude Abortion.msg.html


(defclass roboy_simulation_msgs::Abortion
  :super ros::object
  :slots (_roboy_id _reason ))

(defmethod roboy_simulation_msgs::Abortion
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:reason __reason) 0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _reason (round __reason))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; int32 _reason
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; int32 _reason
       (write-long _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reason
     (setq _reason (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::Abortion :md5sum-) "fcfddf20469a5c8a1cd78f789c34e8e0")
(setf (get roboy_simulation_msgs::Abortion :datatype-) "roboy_simulation_msgs/Abortion")
(setf (get roboy_simulation_msgs::Abortion :definition-)
      "int32 roboy_id
int32 reason
")



(provide :roboy_simulation_msgs/Abortion "fcfddf20469a5c8a1cd78f789c34e8e0")


