;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::SystemCheck)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'SystemCheck (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECK")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECK"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECKREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECKREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECKRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SYSTEMCHECKRESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::SystemCheckRequest
  :super ros::object
  :slots (_motorIDs ))

(defmethod roboy_middleware_msgs::SystemCheckRequest
  (:init
   (&key
    ((:motorIDs __motorIDs) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _motorIDs __motorIDs)
   self)
  (:motorIDs
   (&optional __motorIDs)
   (if __motorIDs (setq _motorIDs __motorIDs)) _motorIDs)
  (:serialization-length
   ()
   (+
    ;; uint8[] _motorIDs
    (* 1    (length _motorIDs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _motorIDs
     (write-long (length _motorIDs) s)
     (princ _motorIDs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _motorIDs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motorIDs (make-array n :element-type :char))
     (replace _motorIDs buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::SystemCheckResponse
  :super ros::object
  :slots (_motorIDs _encoder0_pos _encoder1_pos _communication_quality ))

(defmethod roboy_middleware_msgs::SystemCheckResponse
  (:init
   (&key
    ((:motorIDs __motorIDs) (make-array 0 :initial-element 0 :element-type :char))
    ((:encoder0_pos __encoder0_pos) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:encoder1_pos __encoder1_pos) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:communication_quality __communication_quality) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _motorIDs __motorIDs)
   (setq _encoder0_pos __encoder0_pos)
   (setq _encoder1_pos __encoder1_pos)
   (setq _communication_quality __communication_quality)
   self)
  (:motorIDs
   (&optional __motorIDs)
   (if __motorIDs (setq _motorIDs __motorIDs)) _motorIDs)
  (:encoder0_pos
   (&optional __encoder0_pos)
   (if __encoder0_pos (setq _encoder0_pos __encoder0_pos)) _encoder0_pos)
  (:encoder1_pos
   (&optional __encoder1_pos)
   (if __encoder1_pos (setq _encoder1_pos __encoder1_pos)) _encoder1_pos)
  (:communication_quality
   (&optional __communication_quality)
   (if __communication_quality (setq _communication_quality __communication_quality)) _communication_quality)
  (:serialization-length
   ()
   (+
    ;; uint8[] _motorIDs
    (* 1    (length _motorIDs)) 4
    ;; bool[] _encoder0_pos
    (* 1    (length _encoder0_pos)) 4
    ;; bool[] _encoder1_pos
    (* 1    (length _encoder1_pos)) 4
    ;; bool[] _communication_quality
    (* 1    (length _communication_quality)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _motorIDs
     (write-long (length _motorIDs) s)
     (princ _motorIDs s)
     ;; bool[] _encoder0_pos
     (write-long (length _encoder0_pos) s)
     (dotimes (i (length _encoder0_pos))
       (if (elt _encoder0_pos i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _encoder1_pos
     (write-long (length _encoder1_pos) s)
     (dotimes (i (length _encoder1_pos))
       (if (elt _encoder1_pos i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _communication_quality
     (write-long (length _communication_quality) s)
     (dotimes (i (length _communication_quality))
       (if (elt _communication_quality i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _motorIDs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motorIDs (make-array n :element-type :char))
     (replace _motorIDs buf :start2 ptr-) (incf ptr- n))
   ;; bool[] _encoder0_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoder0_pos (make-list n))
     (dotimes (i n)
     (setf (elt _encoder0_pos i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _encoder1_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoder1_pos (make-list n))
     (dotimes (i n)
     (setf (elt _encoder1_pos i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _communication_quality
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _communication_quality (make-list n))
     (dotimes (i n)
     (setf (elt _communication_quality i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::SystemCheck
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::SystemCheck :md5sum-) "bb69ef4baabf6b217933952435e6cb64")
(setf (get roboy_middleware_msgs::SystemCheck :datatype-) "roboy_middleware_msgs/SystemCheck")
(setf (get roboy_middleware_msgs::SystemCheck :request) roboy_middleware_msgs::SystemCheckRequest)
(setf (get roboy_middleware_msgs::SystemCheck :response) roboy_middleware_msgs::SystemCheckResponse)

(defmethod roboy_middleware_msgs::SystemCheckRequest
  (:response () (instance roboy_middleware_msgs::SystemCheckResponse :init)))

(setf (get roboy_middleware_msgs::SystemCheckRequest :md5sum-) "bb69ef4baabf6b217933952435e6cb64")
(setf (get roboy_middleware_msgs::SystemCheckRequest :datatype-) "roboy_middleware_msgs/SystemCheckRequest")
(setf (get roboy_middleware_msgs::SystemCheckRequest :definition-)
      "# if empty check all motors, otherwise only the requested
uint8[] motorIDs
---
# returns which mototrs are functional
uint8[] motorIDs
bool[] encoder0_pos
bool[] encoder1_pos
bool[] communication_quality

")

(setf (get roboy_middleware_msgs::SystemCheckResponse :md5sum-) "bb69ef4baabf6b217933952435e6cb64")
(setf (get roboy_middleware_msgs::SystemCheckResponse :datatype-) "roboy_middleware_msgs/SystemCheckResponse")
(setf (get roboy_middleware_msgs::SystemCheckResponse :definition-)
      "# if empty check all motors, otherwise only the requested
uint8[] motorIDs
---
# returns which mototrs are functional
uint8[] motorIDs
bool[] encoder0_pos
bool[] encoder1_pos
bool[] communication_quality

")



(provide :roboy_middleware_msgs/SystemCheck "bb69ef4baabf6b217933952435e6cb64")


