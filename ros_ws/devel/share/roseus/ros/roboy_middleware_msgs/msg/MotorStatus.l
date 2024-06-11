;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MotorStatus)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MotorStatus (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MOTORSTATUS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html


(defclass roboy_middleware_msgs::MotorStatus
  :super ros::object
  :slots (_id _power_sense _pwm_ref _position _velocity _displacement _current _angle ))

(defmethod roboy_middleware_msgs::MotorStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:power_sense __power_sense) nil)
    ((:pwm_ref __pwm_ref) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0 :element-type :integer))
    ((:velocity __velocity) (make-array 0 :initial-element 0 :element-type :integer))
    ((:displacement __displacement) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current __current) (make-array 0 :initial-element 0 :element-type :integer))
    ((:angle __angle) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _power_sense __power_sense)
   (setq _pwm_ref __pwm_ref)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _displacement __displacement)
   (setq _current __current)
   (setq _angle __angle)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:power_sense
   (&optional (__power_sense :null))
   (if (not (eq __power_sense :null)) (setq _power_sense __power_sense)) _power_sense)
  (:pwm_ref
   (&optional __pwm_ref)
   (if __pwm_ref (setq _pwm_ref __pwm_ref)) _pwm_ref)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:displacement
   (&optional __displacement)
   (if __displacement (setq _displacement __displacement)) _displacement)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; bool _power_sense
    1
    ;; int32[] _pwm_ref
    (* 4    (length _pwm_ref)) 4
    ;; int32[] _position
    (* 4    (length _position)) 4
    ;; int32[] _velocity
    (* 4    (length _velocity)) 4
    ;; int32[] _displacement
    (* 4    (length _displacement)) 4
    ;; int16[] _current
    (* 2    (length _current)) 4
    ;; int32[] _angle
    (* 4    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; bool _power_sense
       (if _power_sense (write-byte -1 s) (write-byte 0 s))
     ;; int32[] _pwm_ref
     (write-long (length _pwm_ref) s)
     (dotimes (i (length _pwm_ref))
       (write-long (elt _pwm_ref i) s)
       )
     ;; int32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (write-long (elt _position i) s)
       )
     ;; int32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (write-long (elt _velocity i) s)
       )
     ;; int32[] _displacement
     (write-long (length _displacement) s)
     (dotimes (i (length _displacement))
       (write-long (elt _displacement i) s)
       )
     ;; int16[] _current
     (write-long (length _current) s)
     (dotimes (i (length _current))
       (write-word (elt _current i) s)
       )
     ;; int32[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (write-long (elt _angle i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _power_sense
     (setq _power_sense (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32[] _pwm_ref
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pwm_ref (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pwm_ref i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _displacement
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _displacement (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _displacement i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int16[] _current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int32[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::MotorStatus :md5sum-) "ff901b4c758403a6897b5a0d94561c04")
(setf (get roboy_middleware_msgs::MotorStatus :datatype-) "roboy_middleware_msgs/MotorStatus")
(setf (get roboy_middleware_msgs::MotorStatus :definition-)
      "uint8 id
bool power_sense
int32[] pwm_ref
int32[] position
int32[] velocity
int32[] displacement
int16[] current
# only available for myoBricks
int32[] angle
")



(provide :roboy_middleware_msgs/MotorStatus "ff901b4c758403a6897b5a0d94561c04")


