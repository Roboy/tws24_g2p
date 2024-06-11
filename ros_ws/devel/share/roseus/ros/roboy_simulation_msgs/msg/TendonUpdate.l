;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::TendonUpdate)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'TendonUpdate (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::TENDONUPDATE")
  (make-package "ROBOY_SIMULATION_MSGS::TENDONUPDATE"))

(in-package "ROS")
;;//! \htmlinclude TendonUpdate.msg.html


(defclass roboy_simulation_msgs::TendonUpdate
  :super ros::object
  :slots (_tendon_id _force ))

(defmethod roboy_simulation_msgs::TendonUpdate
  (:init
   (&key
    ((:tendon_id __tendon_id) 0)
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _tendon_id (round __tendon_id))
   (setq _force (float __force))
   self)
  (:tendon_id
   (&optional __tendon_id)
   (if __tendon_id (setq _tendon_id __tendon_id)) _tendon_id)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; int32 _tendon_id
    4
    ;; float32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tendon_id
       (write-long _tendon_id s)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tendon_id
     (setq _tendon_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::TendonUpdate :md5sum-) "f7cf9744aa53d76130b584ca613dcbc1")
(setf (get roboy_simulation_msgs::TendonUpdate :datatype-) "roboy_simulation_msgs/TendonUpdate")
(setf (get roboy_simulation_msgs::TendonUpdate :definition-)
      "int32 tendon_id
#currently applied forcce
float32 force
")



(provide :roboy_simulation_msgs/TendonUpdate "f7cf9744aa53d76130b584ca613dcbc1")


