;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::Neopixel)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'Neopixel (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::NEOPIXEL")
  (make-package "ROBOY_MIDDLEWARE_MSGS::NEOPIXEL"))

(in-package "ROS")
;;//! \htmlinclude Neopixel.msg.html


(defclass roboy_middleware_msgs::Neopixel
  :super ros::object
  :slots (_motor _r _g _b ))

(defmethod roboy_middleware_msgs::Neopixel
  (:init
   (&key
    ((:motor __motor) (make-array 0 :initial-element 0 :element-type :integer))
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _motor __motor)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32[] _motor
    (* 4    (length _motor)) 4
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _motor
     (write-long (length _motor) s)
     (dotimes (i (length _motor))
       (write-long (elt _motor i) s)
       )
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _motor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motor i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roboy_middleware_msgs::Neopixel :md5sum-) "1f0e4f657f53f3d67f7671e397b0b14d")
(setf (get roboy_middleware_msgs::Neopixel :datatype-) "roboy_middleware_msgs/Neopixel")
(setf (get roboy_middleware_msgs::Neopixel :definition-)
      "int32[] motor
uint8 r
uint8 g
uint8 b

")



(provide :roboy_middleware_msgs/Neopixel "1f0e4f657f53f3d67f7671e397b0b14d")


