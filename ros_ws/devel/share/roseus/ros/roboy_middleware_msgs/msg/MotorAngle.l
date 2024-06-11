;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorAngle)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorAngle (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORANGLE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORANGLE"))

(in-package "ROS")
;;//! \htmlinclude MotorAngle.msg.html


(defclass roboy_middleware_msgs::MotorAngle
  :super ros::object
  :slots (_id _angles _raw_angles _raw_angles_prev _offset_angles _relative_angles _rev_counter ))

(defmethod roboy_middleware_msgs::MotorAngle
  (:init
   (&key
    ((:id __id) 0)
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:raw_angles __raw_angles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:raw_angles_prev __raw_angles_prev) (make-array 0 :initial-element 0 :element-type :integer))
    ((:offset_angles __offset_angles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:relative_angles __relative_angles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:rev_counter __rev_counter) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _angles __angles)
   (setq _raw_angles __raw_angles)
   (setq _raw_angles_prev __raw_angles_prev)
   (setq _offset_angles __offset_angles)
   (setq _relative_angles __relative_angles)
   (setq _rev_counter __rev_counter)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:raw_angles
   (&optional __raw_angles)
   (if __raw_angles (setq _raw_angles __raw_angles)) _raw_angles)
  (:raw_angles_prev
   (&optional __raw_angles_prev)
   (if __raw_angles_prev (setq _raw_angles_prev __raw_angles_prev)) _raw_angles_prev)
  (:offset_angles
   (&optional __offset_angles)
   (if __offset_angles (setq _offset_angles __offset_angles)) _offset_angles)
  (:relative_angles
   (&optional __relative_angles)
   (if __relative_angles (setq _relative_angles __relative_angles)) _relative_angles)
  (:rev_counter
   (&optional __rev_counter)
   (if __rev_counter (setq _rev_counter __rev_counter)) _rev_counter)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; int32[] _raw_angles
    (* 4    (length _raw_angles)) 4
    ;; int32[] _raw_angles_prev
    (* 4    (length _raw_angles_prev)) 4
    ;; int32[] _offset_angles
    (* 4    (length _offset_angles)) 4
    ;; int32[] _relative_angles
    (* 4    (length _relative_angles)) 4
    ;; int32[] _rev_counter
    (* 4    (length _rev_counter)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _raw_angles
     (write-long (length _raw_angles) s)
     (dotimes (i (length _raw_angles))
       (write-long (elt _raw_angles i) s)
       )
     ;; int32[] _raw_angles_prev
     (write-long (length _raw_angles_prev) s)
     (dotimes (i (length _raw_angles_prev))
       (write-long (elt _raw_angles_prev i) s)
       )
     ;; int32[] _offset_angles
     (write-long (length _offset_angles) s)
     (dotimes (i (length _offset_angles))
       (write-long (elt _offset_angles i) s)
       )
     ;; int32[] _relative_angles
     (write-long (length _relative_angles) s)
     (dotimes (i (length _relative_angles))
       (write-long (elt _relative_angles i) s)
       )
     ;; int32[] _rev_counter
     (write-long (length _rev_counter) s)
     (dotimes (i (length _rev_counter))
       (write-long (elt _rev_counter i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _raw_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _raw_angles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _raw_angles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _raw_angles_prev
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _raw_angles_prev (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _raw_angles_prev i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _offset_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offset_angles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _offset_angles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _relative_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relative_angles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _relative_angles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _rev_counter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rev_counter (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rev_counter i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::MotorAngle :md5sum-) "74ec1ac15dd8a5dd0a5669e1aac02ac8")
(setf (get roboy_middleware_msgs::MotorAngle :datatype-) "roboy_middleware_msgs/MotorAngle")
(setf (get roboy_middleware_msgs::MotorAngle :definition-)
      "uint8 id
float32[] angles
int32[] raw_angles
int32[] raw_angles_prev
int32[] offset_angles
int32[] relative_angles
int32[] rev_counter
")



(provide :roboy_middleware_msgs/MotorAngle "74ec1ac15dd8a5dd0a5669e1aac02ac8")


