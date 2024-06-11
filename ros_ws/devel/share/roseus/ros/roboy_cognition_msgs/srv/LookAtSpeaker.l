;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::LookAtSpeaker)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'LookAtSpeaker (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKER")
  (make-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKER"))
(unless (find-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKERREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKERREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKERRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::LOOKATSPEAKERRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::LookAtSpeakerRequest
  :super ros::object
  :slots ())

(defmethod roboy_cognition_msgs::LookAtSpeakerRequest
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

(defclass roboy_cognition_msgs::LookAtSpeakerResponse
  :super ros::object
  :slots (_turned ))

(defmethod roboy_cognition_msgs::LookAtSpeakerResponse
  (:init
   (&key
    ((:turned __turned) nil)
    )
   (send-super :init)
   (setq _turned __turned)
   self)
  (:turned
   (&optional (__turned :null))
   (if (not (eq __turned :null)) (setq _turned __turned)) _turned)
  (:serialization-length
   ()
   (+
    ;; bool _turned
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _turned
       (if _turned (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _turned
     (setq _turned (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::LookAtSpeaker
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::LookAtSpeaker :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_cognition_msgs::LookAtSpeaker :datatype-) "roboy_cognition_msgs/LookAtSpeaker")
(setf (get roboy_cognition_msgs::LookAtSpeaker :request) roboy_cognition_msgs::LookAtSpeakerRequest)
(setf (get roboy_cognition_msgs::LookAtSpeaker :response) roboy_cognition_msgs::LookAtSpeakerResponse)

(defmethod roboy_cognition_msgs::LookAtSpeakerRequest
  (:response () (instance roboy_cognition_msgs::LookAtSpeakerResponse :init)))

(setf (get roboy_cognition_msgs::LookAtSpeakerRequest :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_cognition_msgs::LookAtSpeakerRequest :datatype-) "roboy_cognition_msgs/LookAtSpeakerRequest")
(setf (get roboy_cognition_msgs::LookAtSpeakerRequest :definition-)
      "---
#was the move succesful?
bool turned

")

(setf (get roboy_cognition_msgs::LookAtSpeakerResponse :md5sum-) "15a9db50325f4812c0499779cd2dc36e")
(setf (get roboy_cognition_msgs::LookAtSpeakerResponse :datatype-) "roboy_cognition_msgs/LookAtSpeakerResponse")
(setf (get roboy_cognition_msgs::LookAtSpeakerResponse :definition-)
      "---
#was the move succesful?
bool turned

")



(provide :roboy_cognition_msgs/LookAtSpeaker "15a9db50325f4812c0499779cd2dc36e")


