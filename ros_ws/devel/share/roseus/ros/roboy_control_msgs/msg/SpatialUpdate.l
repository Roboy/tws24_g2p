;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::SpatialUpdate)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'SpatialUpdate (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::SPATIALUPDATE")
  (make-package "ROBOY_CONTROL_MSGS::SPATIALUPDATE"))

(in-package "ROS")
;;//! \htmlinclude SpatialUpdate.msg.html


(defclass roboy_control_msgs::SpatialUpdate
  :super ros::object
  :slots (_header _data ))

(defmethod roboy_control_msgs::SpatialUpdate
  (:init
   (&key
    ((:header __header) (make-array 0 :initial-element 0 :element-type :integer))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32[] _header
    (* 4    (length _header)) 4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _header
     (write-long (length _header) s)
     (dotimes (i (length _header))
       (write-long (elt _header i) s)
       )
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _header
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _header (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _header i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_control_msgs::SpatialUpdate :md5sum-) "1c847f0c793a4a3afd39df9fc36b8b5a")
(setf (get roboy_control_msgs::SpatialUpdate :datatype-) "roboy_control_msgs/SpatialUpdate")
(setf (get roboy_control_msgs::SpatialUpdate :definition-)
      "int32[] header
uint8[] data

")



(provide :roboy_control_msgs/SpatialUpdate "1c847f0c793a4a3afd39df9fc36b8b5a")


