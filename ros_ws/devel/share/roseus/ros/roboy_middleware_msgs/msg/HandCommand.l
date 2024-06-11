;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::HandCommand)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'HandCommand (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::HANDCOMMAND")
  (make-package "ROBOY_MIDDLEWARE_MSGS::HANDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude HandCommand.msg.html


(defclass roboy_middleware_msgs::HandCommand
  :super ros::object
  :slots (_hand_id _command _lock_finger_ids ))

(defmethod roboy_middleware_msgs::HandCommand
  (:init
   (&key
    ((:hand_id __hand_id) 0)
    ((:command __command) 0)
    ((:lock_finger_ids __lock_finger_ids) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _hand_id (round __hand_id))
   (setq _command (round __command))
   (setq _lock_finger_ids __lock_finger_ids)
   self)
  (:hand_id
   (&optional __hand_id)
   (if __hand_id (setq _hand_id __hand_id)) _hand_id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:lock_finger_ids
   (&optional __lock_finger_ids)
   (if __lock_finger_ids (setq _lock_finger_ids __lock_finger_ids)) _lock_finger_ids)
  (:serialization-length
   ()
   (+
    ;; uint8 _hand_id
    1
    ;; uint8 _command
    1
    ;; uint8[] _lock_finger_ids
    (* 1    (length _lock_finger_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _hand_id
       (write-byte _hand_id s)
     ;; uint8 _command
       (write-byte _command s)
     ;; uint8[] _lock_finger_ids
     (write-long (length _lock_finger_ids) s)
     (princ _lock_finger_ids s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _hand_id
     (setq _hand_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _lock_finger_ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _lock_finger_ids (make-array n :element-type :char))
     (replace _lock_finger_ids buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::HandCommand :md5sum-) "1c60b9fe10716361cf8f123e26a189b3")
(setf (get roboy_middleware_msgs::HandCommand :datatype-) "roboy_middleware_msgs/HandCommand")
(setf (get roboy_middleware_msgs::HandCommand :definition-)
      "uint8 hand_id
uint8 command
uint8[] lock_finger_ids

")



(provide :roboy_middleware_msgs/HandCommand "1c60b9fe10716361cf8f123e26a189b3")


