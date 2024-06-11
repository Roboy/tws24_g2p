;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::LegState)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'LegState (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::LEGSTATE")
  (make-package "ROBOY_SIMULATION_MSGS::LEGSTATE"))

(in-package "ROS")
;;//! \htmlinclude LegState.msg.html


(defclass roboy_simulation_msgs::LegState
  :super ros::object
  :slots (_roboy_id _leg _state ))

(defmethod roboy_simulation_msgs::LegState
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:leg __leg) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _leg (round __leg))
   (setq _state (round __state))
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:leg
   (&optional __leg)
   (if __leg (setq _leg __leg)) _leg)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; int32 _leg
    4
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; int32 _leg
       (write-long _leg s)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _leg
     (setq _leg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::LegState :md5sum-) "6d5ffff060d22b8076e236b721cca654")
(setf (get roboy_simulation_msgs::LegState :datatype-) "roboy_simulation_msgs/LegState")
(setf (get roboy_simulation_msgs::LegState :definition-)
      "int32 roboy_id
int32 leg
int32 state
")



(provide :roboy_simulation_msgs/LegState "6d5ffff060d22b8076e236b721cca654")


