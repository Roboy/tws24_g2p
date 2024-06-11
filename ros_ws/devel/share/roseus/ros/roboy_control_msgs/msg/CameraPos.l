;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::CameraPos)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'CameraPos (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::CAMERAPOS")
  (make-package "ROBOY_CONTROL_MSGS::CAMERAPOS"))

(in-package "ROS")
;;//! \htmlinclude CameraPos.msg.html


(defclass roboy_control_msgs::CameraPos
  :super ros::object
  :slots (_m00 _m01 _m02 _m03 _m10 _m11 _m12 _m13 _m20 _m21 _m22 _m23 _m30 _m31 _m32 _m33 ))

(defmethod roboy_control_msgs::CameraPos
  (:init
   (&key
    ((:m00 __m00) 0.0)
    ((:m01 __m01) 0.0)
    ((:m02 __m02) 0.0)
    ((:m03 __m03) 0.0)
    ((:m10 __m10) 0.0)
    ((:m11 __m11) 0.0)
    ((:m12 __m12) 0.0)
    ((:m13 __m13) 0.0)
    ((:m20 __m20) 0.0)
    ((:m21 __m21) 0.0)
    ((:m22 __m22) 0.0)
    ((:m23 __m23) 0.0)
    ((:m30 __m30) 0.0)
    ((:m31 __m31) 0.0)
    ((:m32 __m32) 0.0)
    ((:m33 __m33) 0.0)
    )
   (send-super :init)
   (setq _m00 (float __m00))
   (setq _m01 (float __m01))
   (setq _m02 (float __m02))
   (setq _m03 (float __m03))
   (setq _m10 (float __m10))
   (setq _m11 (float __m11))
   (setq _m12 (float __m12))
   (setq _m13 (float __m13))
   (setq _m20 (float __m20))
   (setq _m21 (float __m21))
   (setq _m22 (float __m22))
   (setq _m23 (float __m23))
   (setq _m30 (float __m30))
   (setq _m31 (float __m31))
   (setq _m32 (float __m32))
   (setq _m33 (float __m33))
   self)
  (:m00
   (&optional __m00)
   (if __m00 (setq _m00 __m00)) _m00)
  (:m01
   (&optional __m01)
   (if __m01 (setq _m01 __m01)) _m01)
  (:m02
   (&optional __m02)
   (if __m02 (setq _m02 __m02)) _m02)
  (:m03
   (&optional __m03)
   (if __m03 (setq _m03 __m03)) _m03)
  (:m10
   (&optional __m10)
   (if __m10 (setq _m10 __m10)) _m10)
  (:m11
   (&optional __m11)
   (if __m11 (setq _m11 __m11)) _m11)
  (:m12
   (&optional __m12)
   (if __m12 (setq _m12 __m12)) _m12)
  (:m13
   (&optional __m13)
   (if __m13 (setq _m13 __m13)) _m13)
  (:m20
   (&optional __m20)
   (if __m20 (setq _m20 __m20)) _m20)
  (:m21
   (&optional __m21)
   (if __m21 (setq _m21 __m21)) _m21)
  (:m22
   (&optional __m22)
   (if __m22 (setq _m22 __m22)) _m22)
  (:m23
   (&optional __m23)
   (if __m23 (setq _m23 __m23)) _m23)
  (:m30
   (&optional __m30)
   (if __m30 (setq _m30 __m30)) _m30)
  (:m31
   (&optional __m31)
   (if __m31 (setq _m31 __m31)) _m31)
  (:m32
   (&optional __m32)
   (if __m32 (setq _m32 __m32)) _m32)
  (:m33
   (&optional __m33)
   (if __m33 (setq _m33 __m33)) _m33)
  (:serialization-length
   ()
   (+
    ;; float32 _m00
    4
    ;; float32 _m01
    4
    ;; float32 _m02
    4
    ;; float32 _m03
    4
    ;; float32 _m10
    4
    ;; float32 _m11
    4
    ;; float32 _m12
    4
    ;; float32 _m13
    4
    ;; float32 _m20
    4
    ;; float32 _m21
    4
    ;; float32 _m22
    4
    ;; float32 _m23
    4
    ;; float32 _m30
    4
    ;; float32 _m31
    4
    ;; float32 _m32
    4
    ;; float32 _m33
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _m00
       (sys::poke _m00 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m01
       (sys::poke _m01 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m02
       (sys::poke _m02 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m03
       (sys::poke _m03 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m10
       (sys::poke _m10 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m11
       (sys::poke _m11 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m12
       (sys::poke _m12 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m13
       (sys::poke _m13 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m20
       (sys::poke _m20 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m21
       (sys::poke _m21 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m22
       (sys::poke _m22 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m23
       (sys::poke _m23 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m30
       (sys::poke _m30 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m31
       (sys::poke _m31 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m32
       (sys::poke _m32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _m33
       (sys::poke _m33 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _m00
     (setq _m00 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m01
     (setq _m01 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m02
     (setq _m02 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m03
     (setq _m03 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m10
     (setq _m10 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m11
     (setq _m11 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m12
     (setq _m12 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m13
     (setq _m13 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m20
     (setq _m20 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m21
     (setq _m21 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m22
     (setq _m22 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m23
     (setq _m23 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m30
     (setq _m30 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m31
     (setq _m31 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m32
     (setq _m32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _m33
     (setq _m33 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get roboy_control_msgs::CameraPos :md5sum-) "8903cef6b8f5901e6c1b1feeb6a5a6d1")
(setf (get roboy_control_msgs::CameraPos :datatype-) "roboy_control_msgs/CameraPos")
(setf (get roboy_control_msgs::CameraPos :definition-)
      "float32 m00
float32 m01
float32 m02
float32 m03

float32 m10
float32 m11
float32 m12
float32 m13

float32 m20
float32 m21
float32 m22
float32 m23

float32 m30
float32 m31
float32 m32
float32 m33

")



(provide :roboy_control_msgs/CameraPos "8903cef6b8f5901e6c1b1feeb6a5a6d1")


