;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DetectIceCream)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DetectIceCream (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTICECREAM")
  (make-package "ROBOY_COGNITION_MSGS::DETECTICECREAM"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTICECREAMREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DETECTICECREAMREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTICECREAMRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DETECTICECREAMRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_cognition_msgs::DetectIceCreamRequest
  :super ros::object
  :slots (_flavor ))

(defmethod roboy_cognition_msgs::DetectIceCreamRequest
  (:init
   (&key
    ((:flavor __flavor) "")
    )
   (send-super :init)
   (setq _flavor (string __flavor))
   self)
  (:flavor
   (&optional __flavor)
   (if __flavor (setq _flavor __flavor)) _flavor)
  (:serialization-length
   ()
   (+
    ;; string _flavor
    4 (length _flavor)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _flavor
       (write-long (length _flavor) s) (princ _flavor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _flavor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flavor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DetectIceCreamResponse
  :super ros::object
  :slots (_start_scooping _end_scooping _error_message ))

(defmethod roboy_cognition_msgs::DetectIceCreamResponse
  (:init
   (&key
    ((:start_scooping __start_scooping) (instance geometry_msgs::Point :init))
    ((:end_scooping __end_scooping) (instance geometry_msgs::Point :init))
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _start_scooping __start_scooping)
   (setq _end_scooping __end_scooping)
   (setq _error_message (string __error_message))
   self)
  (:start_scooping
   (&rest __start_scooping)
   (if (keywordp (car __start_scooping))
       (send* _start_scooping __start_scooping)
     (progn
       (if __start_scooping (setq _start_scooping (car __start_scooping)))
       _start_scooping)))
  (:end_scooping
   (&rest __end_scooping)
   (if (keywordp (car __end_scooping))
       (send* _end_scooping __end_scooping)
     (progn
       (if __end_scooping (setq _end_scooping (car __end_scooping)))
       _end_scooping)))
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start_scooping
    (send _start_scooping :serialization-length)
    ;; geometry_msgs/Point _end_scooping
    (send _end_scooping :serialization-length)
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start_scooping
       (send _start_scooping :serialize s)
     ;; geometry_msgs/Point _end_scooping
       (send _end_scooping :serialize s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start_scooping
     (send _start_scooping :deserialize buf ptr-) (incf ptr- (send _start_scooping :serialization-length))
   ;; geometry_msgs/Point _end_scooping
     (send _end_scooping :deserialize buf ptr-) (incf ptr- (send _end_scooping :serialization-length))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DetectIceCream
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DetectIceCream :md5sum-) "37d1e42fc203c1ff8077a402e7927892")
(setf (get roboy_cognition_msgs::DetectIceCream :datatype-) "roboy_cognition_msgs/DetectIceCream")
(setf (get roboy_cognition_msgs::DetectIceCream :request) roboy_cognition_msgs::DetectIceCreamRequest)
(setf (get roboy_cognition_msgs::DetectIceCream :response) roboy_cognition_msgs::DetectIceCreamResponse)

(defmethod roboy_cognition_msgs::DetectIceCreamRequest
  (:response () (instance roboy_cognition_msgs::DetectIceCreamResponse :init)))

(setf (get roboy_cognition_msgs::DetectIceCreamRequest :md5sum-) "37d1e42fc203c1ff8077a402e7927892")
(setf (get roboy_cognition_msgs::DetectIceCreamRequest :datatype-) "roboy_cognition_msgs/DetectIceCreamRequest")
(setf (get roboy_cognition_msgs::DetectIceCreamRequest :definition-)
      "string flavor
---
geometry_msgs/Point start_scooping
geometry_msgs/Point end_scooping
string error_message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get roboy_cognition_msgs::DetectIceCreamResponse :md5sum-) "37d1e42fc203c1ff8077a402e7927892")
(setf (get roboy_cognition_msgs::DetectIceCreamResponse :datatype-) "roboy_cognition_msgs/DetectIceCreamResponse")
(setf (get roboy_cognition_msgs::DetectIceCreamResponse :definition-)
      "string flavor
---
geometry_msgs/Point start_scooping
geometry_msgs/Point end_scooping
string error_message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :roboy_cognition_msgs/DetectIceCream "37d1e42fc203c1ff8077a402e7927892")


