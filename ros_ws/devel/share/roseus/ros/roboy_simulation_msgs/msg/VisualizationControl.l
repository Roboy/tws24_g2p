;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::VisualizationControl)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'VisualizationControl (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::VISUALIZATIONCONTROL")
  (make-package "ROBOY_SIMULATION_MSGS::VISUALIZATIONCONTROL"))

(in-package "ROS")
;;//! \htmlinclude VisualizationControl.msg.html


(defclass roboy_simulation_msgs::VisualizationControl
  :super ros::object
  :slots (_roboy_id _control _value ))

(defmethod roboy_simulation_msgs::VisualizationControl
  (:init
   (&key
    ((:roboy_id __roboy_id) 0)
    ((:control __control) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _roboy_id (round __roboy_id))
   (setq _control (round __control))
   (setq _value __value)
   self)
  (:roboy_id
   (&optional __roboy_id)
   (if __roboy_id (setq _roboy_id __roboy_id)) _roboy_id)
  (:control
   (&optional __control)
   (if __control (setq _control __control)) _control)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _roboy_id
    4
    ;; int32 _control
    4
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roboy_id
       (write-long _roboy_id s)
     ;; int32 _control
       (write-long _control s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roboy_id
     (setq _roboy_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _control
     (setq _control (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::VisualizationControl :md5sum-) "8f08b9af8c2344f7cdcbec5fccf19c8c")
(setf (get roboy_simulation_msgs::VisualizationControl :datatype-) "roboy_simulation_msgs/VisualizationControl")
(setf (get roboy_simulation_msgs::VisualizationControl :definition-)
      "int32 roboy_id
int32 control
bool value
")



(provide :roboy_simulation_msgs/VisualizationControl "8f08b9af8c2344f7cdcbec5fccf19c8c")


