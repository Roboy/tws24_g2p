;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::DarkRoom)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'DarkRoom (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::DARKROOM")
  (make-package "ROBOY_MIDDLEWARE_MSGS::DARKROOM"))

(in-package "ROS")
;;//! \htmlinclude DarkRoom.msg.html


(defclass roboy_middleware_msgs::DarkRoom
  :super ros::object
  :slots (_object_id _timestamp _sensor_value ))

(defmethod roboy_middleware_msgs::DarkRoom
  (:init
   (&key
    ((:object_id __object_id) "")
    ((:timestamp __timestamp) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sensor_value __sensor_value) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _object_id (string __object_id))
   (setq _timestamp __timestamp)
   (setq _sensor_value __sensor_value)
   self)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:sensor_value
   (&optional __sensor_value)
   (if __sensor_value (setq _sensor_value __sensor_value)) _sensor_value)
  (:serialization-length
   ()
   (+
    ;; string _object_id
    4 (length _object_id)
    ;; int32[] _timestamp
    (* 4    (length _timestamp)) 4
    ;; uint32[] _sensor_value
    (* 4    (length _sensor_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_id
       (write-long (length _object_id) s) (princ _object_id s)
     ;; int32[] _timestamp
     (write-long (length _timestamp) s)
     (dotimes (i (length _timestamp))
       (write-long (elt _timestamp i) s)
       )
     ;; uint32[] _sensor_value
     (write-long (length _sensor_value) s)
     (dotimes (i (length _sensor_value))
       (write-long (elt _sensor_value i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _timestamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamp (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _timestamp i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _sensor_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_value (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sensor_value i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::DarkRoom :md5sum-) "015cacec6e072999f1fb62b28192aa16")
(setf (get roboy_middleware_msgs::DarkRoom :datatype-) "roboy_middleware_msgs/DarkRoom")
(setf (get roboy_middleware_msgs::DarkRoom :definition-)
      "string object_id
int32[] timestamp
uint32[] sensor_value

")



(provide :roboy_middleware_msgs/DarkRoom "015cacec6e072999f1fb62b28192aa16")


