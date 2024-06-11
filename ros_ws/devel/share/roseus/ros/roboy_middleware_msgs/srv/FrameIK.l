;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::FrameIK)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'FrameIK (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIK")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIK"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIKREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIKREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIKRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::FRAMEIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass roboy_middleware_msgs::FrameIKRequest
  :super ros::object
  :slots (_frame_id _offset ))

(defmethod roboy_middleware_msgs::FrameIKRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:offset __offset) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _offset __offset)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Vector3 _offset
    (send _offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Vector3 _offset
       (send _offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::FrameIKResponse
  :super ros::object
  :slots ())

(defmethod roboy_middleware_msgs::FrameIKResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::FrameIK
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::FrameIK :md5sum-) "7ff103dade78fd11c8e1db06d8b04430")
(setf (get roboy_middleware_msgs::FrameIK :datatype-) "roboy_middleware_msgs/FrameIK")
(setf (get roboy_middleware_msgs::FrameIK :request) roboy_middleware_msgs::FrameIKRequest)
(setf (get roboy_middleware_msgs::FrameIK :response) roboy_middleware_msgs::FrameIKResponse)

(defmethod roboy_middleware_msgs::FrameIKRequest
  (:response () (instance roboy_middleware_msgs::FrameIKResponse :init)))

(setf (get roboy_middleware_msgs::FrameIKRequest :md5sum-) "7ff103dade78fd11c8e1db06d8b04430")
(setf (get roboy_middleware_msgs::FrameIKRequest :datatype-) "roboy_middleware_msgs/FrameIKRequest")
(setf (get roboy_middleware_msgs::FrameIKRequest :definition-)
      "string frame_id
geometry_msgs/Vector3 offset

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")

(setf (get roboy_middleware_msgs::FrameIKResponse :md5sum-) "7ff103dade78fd11c8e1db06d8b04430")
(setf (get roboy_middleware_msgs::FrameIKResponse :datatype-) "roboy_middleware_msgs/FrameIKResponse")
(setf (get roboy_middleware_msgs::FrameIKResponse :definition-)
      "string frame_id
geometry_msgs/Vector3 offset

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")



(provide :roboy_middleware_msgs/FrameIK "7ff103dade78fd11c8e1db06d8b04430")


