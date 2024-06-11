;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::DarkRoomStatus)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'DarkRoomStatus (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::DARKROOMSTATUS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::DARKROOMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DarkRoomStatus.msg.html


(defclass roboy_middleware_msgs::DarkRoomStatus
  :super ros::object
  :slots (_object_id _sensor_state ))

(defmethod roboy_middleware_msgs::DarkRoomStatus
  (:init
   (&key
    ((:object_id __object_id) "")
    ((:sensor_state __sensor_state) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _object_id (string __object_id))
   (setq _sensor_state __sensor_state)
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:sensor_state
   (&optional __sensor_state)
   (if __sensor_state (setq _sensor_state __sensor_state)) _sensor_state)
  (:serialization-length
   ()
   (+
    ;; string _object_id
    4 (length _object_id)
    ;; uint8[] _sensor_state
    (* 1    (length _sensor_state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_id
       (write-long (length _object_id) s) (princ _object_id s)
     ;; uint8[] _sensor_state
     (write-long (length _sensor_state) s)
     (princ _sensor_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _sensor_state
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _sensor_state (make-array n :element-type :char))
     (replace _sensor_state buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::DarkRoomStatus :md5sum-) "701850641a680172b1574e149f61356d")
(setf (get roboy_middleware_msgs::DarkRoomStatus :datatype-) "roboy_middleware_msgs/DarkRoomStatus")
(setf (get roboy_middleware_msgs::DarkRoomStatus :definition-)
      "string object_id
uint8[] sensor_state

")



(provide :roboy_middleware_msgs/DarkRoomStatus "701850641a680172b1574e149f61356d")


