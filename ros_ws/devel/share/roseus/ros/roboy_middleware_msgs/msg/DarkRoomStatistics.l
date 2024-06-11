;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::DarkRoomStatistics)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'DarkRoomStatistics (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::DARKROOMSTATISTICS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::DARKROOMSTATISTICS"))

(in-package "ROS")
;;//! \htmlinclude DarkRoomStatistics.msg.html


(defclass roboy_middleware_msgs::DarkRoomStatistics
  :super ros::object
  :slots (_object_name _lighthouse _update_frequency_horizontal _update_frequency_vertical ))

(defmethod roboy_middleware_msgs::DarkRoomStatistics
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:lighthouse __lighthouse) 0)
    ((:update_frequency_horizontal __update_frequency_horizontal) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:update_frequency_vertical __update_frequency_vertical) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _lighthouse (round __lighthouse))
   (setq _update_frequency_horizontal __update_frequency_horizontal)
   (setq _update_frequency_vertical __update_frequency_vertical)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:lighthouse
   (&optional __lighthouse)
   (if __lighthouse (setq _lighthouse __lighthouse)) _lighthouse)
  (:update_frequency_horizontal
   (&optional __update_frequency_horizontal)
   (if __update_frequency_horizontal (setq _update_frequency_horizontal __update_frequency_horizontal)) _update_frequency_horizontal)
  (:update_frequency_vertical
   (&optional __update_frequency_vertical)
   (if __update_frequency_vertical (setq _update_frequency_vertical __update_frequency_vertical)) _update_frequency_vertical)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; int32 _lighthouse
    4
    ;; float32[] _update_frequency_horizontal
    (* 4    (length _update_frequency_horizontal)) 4
    ;; float32[] _update_frequency_vertical
    (* 4    (length _update_frequency_vertical)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; int32 _lighthouse
       (write-long _lighthouse s)
     ;; float32[] _update_frequency_horizontal
     (write-long (length _update_frequency_horizontal) s)
     (dotimes (i (length _update_frequency_horizontal))
       (sys::poke (elt _update_frequency_horizontal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _update_frequency_vertical
     (write-long (length _update_frequency_vertical) s)
     (dotimes (i (length _update_frequency_vertical))
       (sys::poke (elt _update_frequency_vertical i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _lighthouse
     (setq _lighthouse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _update_frequency_horizontal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _update_frequency_horizontal (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _update_frequency_horizontal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _update_frequency_vertical
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _update_frequency_vertical (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _update_frequency_vertical i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::DarkRoomStatistics :md5sum-) "7e96c4c9ae71be87963c0b1fcc870765")
(setf (get roboy_middleware_msgs::DarkRoomStatistics :datatype-) "roboy_middleware_msgs/DarkRoomStatistics")
(setf (get roboy_middleware_msgs::DarkRoomStatistics :definition-)
      "string object_name
int32 lighthouse
float32[] update_frequency_horizontal
float32[] update_frequency_vertical
")



(provide :roboy_middleware_msgs/DarkRoomStatistics "7e96c4c9ae71be87963c0b1fcc870765")


