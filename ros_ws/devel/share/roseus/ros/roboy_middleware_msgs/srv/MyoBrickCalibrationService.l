;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::MyoBrickCalibrationService)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'MyoBrickCalibrationService (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICE"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICEREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICEREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICERESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::MYOBRICKCALIBRATIONSERVICERESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::MyoBrickCalibrationServiceRequest
  :super ros::object
  :slots (_fpga _motor _degree _timeout _number_of_data_points _min_degree _max_degree ))

(defmethod roboy_middleware_msgs::MyoBrickCalibrationServiceRequest
  (:init
   (&key
    ((:fpga __fpga) 0)
    ((:motor __motor) 0)
    ((:degree __degree) 0)
    ((:timeout __timeout) 0)
    ((:number_of_data_points __number_of_data_points) 0)
    ((:min_degree __min_degree) 0.0)
    ((:max_degree __max_degree) 0.0)
    )
   (send-super :init)
   (setq _fpga (round __fpga))
   (setq _motor (round __motor))
   (setq _degree (round __degree))
   (setq _timeout (round __timeout))
   (setq _number_of_data_points (round __number_of_data_points))
   (setq _min_degree (float __min_degree))
   (setq _max_degree (float __max_degree))
   self)
  (:fpga
   (&optional __fpga)
   (if __fpga (setq _fpga __fpga)) _fpga)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:number_of_data_points
   (&optional __number_of_data_points)
   (if __number_of_data_points (setq _number_of_data_points __number_of_data_points)) _number_of_data_points)
  (:min_degree
   (&optional __min_degree)
   (if __min_degree (setq _min_degree __min_degree)) _min_degree)
  (:max_degree
   (&optional __max_degree)
   (if __max_degree (setq _max_degree __max_degree)) _max_degree)
  (:serialization-length
   ()
   (+
    ;; int8 _fpga
    1
    ;; int8 _motor
    1
    ;; int8 _degree
    1
    ;; int32 _timeout
    4
    ;; uint32 _number_of_data_points
    4
    ;; float32 _min_degree
    4
    ;; float32 _max_degree
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _fpga
       (write-byte _fpga s)
     ;; int8 _motor
       (write-byte _motor s)
     ;; int8 _degree
       (write-byte _degree s)
     ;; int32 _timeout
       (write-long _timeout s)
     ;; uint32 _number_of_data_points
       (write-long _number_of_data_points s)
     ;; float32 _min_degree
       (sys::poke _min_degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_degree
       (sys::poke _max_degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _fpga
     (setq _fpga (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fpga 127) (setq _fpga (- _fpga 256)))
   ;; int8 _motor
     (setq _motor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor 127) (setq _motor (- _motor 256)))
   ;; int8 _degree
     (setq _degree (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _degree 127) (setq _degree (- _degree 256)))
   ;; int32 _timeout
     (setq _timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _number_of_data_points
     (setq _number_of_data_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _min_degree
     (setq _min_degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_degree
     (setq _max_degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_middleware_msgs::MyoBrickCalibrationServiceResponse
  :super ros::object
  :slots (_estimated_spring_parameters _motor_angle _motor_encoder ))

(defmethod roboy_middleware_msgs::MyoBrickCalibrationServiceResponse
  (:init
   (&key
    ((:estimated_spring_parameters __estimated_spring_parameters) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_angle __motor_angle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_encoder __motor_encoder) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _estimated_spring_parameters __estimated_spring_parameters)
   (setq _motor_angle __motor_angle)
   (setq _motor_encoder __motor_encoder)
   self)
  (:estimated_spring_parameters
   (&optional __estimated_spring_parameters)
   (if __estimated_spring_parameters (setq _estimated_spring_parameters __estimated_spring_parameters)) _estimated_spring_parameters)
  (:motor_angle
   (&optional __motor_angle)
   (if __motor_angle (setq _motor_angle __motor_angle)) _motor_angle)
  (:motor_encoder
   (&optional __motor_encoder)
   (if __motor_encoder (setq _motor_encoder __motor_encoder)) _motor_encoder)
  (:serialization-length
   ()
   (+
    ;; float32[] _estimated_spring_parameters
    (* 4    (length _estimated_spring_parameters)) 4
    ;; float64[] _motor_angle
    (* 8    (length _motor_angle)) 4
    ;; float64[] _motor_encoder
    (* 8    (length _motor_encoder)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _estimated_spring_parameters
     (write-long (length _estimated_spring_parameters) s)
     (dotimes (i (length _estimated_spring_parameters))
       (sys::poke (elt _estimated_spring_parameters i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float64[] _motor_angle
     (write-long (length _motor_angle) s)
     (dotimes (i (length _motor_angle))
       (sys::poke (elt _motor_angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_encoder
     (write-long (length _motor_encoder) s)
     (dotimes (i (length _motor_encoder))
       (sys::poke (elt _motor_encoder i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _estimated_spring_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _estimated_spring_parameters (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _estimated_spring_parameters i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float64[] _motor_angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_encoder
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_encoder (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_encoder i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::MyoBrickCalibrationService
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::MyoBrickCalibrationService :md5sum-) "e5ee8b92f36ed4d7af8af588c906a8b4")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationService :datatype-) "roboy_middleware_msgs/MyoBrickCalibrationService")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationService :request) roboy_middleware_msgs::MyoBrickCalibrationServiceRequest)
(setf (get roboy_middleware_msgs::MyoBrickCalibrationService :response) roboy_middleware_msgs::MyoBrickCalibrationServiceResponse)

(defmethod roboy_middleware_msgs::MyoBrickCalibrationServiceRequest
  (:response () (instance roboy_middleware_msgs::MyoBrickCalibrationServiceResponse :init)))

(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceRequest :md5sum-) "e5ee8b92f36ed4d7af8af588c906a8b4")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceRequest :datatype-) "roboy_middleware_msgs/MyoBrickCalibrationServiceRequest")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceRequest :definition-)
      "int8 fpga
int8 motor
int8 degree
int32 timeout
uint32 number_of_data_points
float32 min_degree
float32 max_degree
---
float32[] estimated_spring_parameters
float64[] motor_angle
float64[] motor_encoder

")

(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceResponse :md5sum-) "e5ee8b92f36ed4d7af8af588c906a8b4")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceResponse :datatype-) "roboy_middleware_msgs/MyoBrickCalibrationServiceResponse")
(setf (get roboy_middleware_msgs::MyoBrickCalibrationServiceResponse :definition-)
      "int8 fpga
int8 motor
int8 degree
int32 timeout
uint32 number_of_data_points
float32 min_degree
float32 max_degree
---
float32[] estimated_spring_parameters
float64[] motor_angle
float64[] motor_encoder

")



(provide :roboy_middleware_msgs/MyoBrickCalibrationService "e5ee8b92f36ed4d7af8af588c906a8b4")


