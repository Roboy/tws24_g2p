;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DetectIntent)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DetectIntent (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTINTENT")
  (make-package "ROBOY_COGNITION_MSGS::DETECTINTENT"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTINTENTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DETECTINTENTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTINTENTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DETECTINTENTRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::DetectIntentRequest
  :super ros::object
  :slots (_sentence ))

(defmethod roboy_cognition_msgs::DetectIntentRequest
  (:init
   (&key
    ((:sentence __sentence) "")
    )
   (send-super :init)
   (setq _sentence (string __sentence))
   self)
  (:sentence
   (&optional __sentence)
   (if __sentence (setq _sentence __sentence)) _sentence)
  (:serialization-length
   ()
   (+
    ;; string _sentence
    4 (length _sentence)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sentence
       (write-long (length _sentence) s) (princ _sentence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sentence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sentence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DetectIntentResponse
  :super ros::object
  :slots (_intent _distance ))

(defmethod roboy_cognition_msgs::DetectIntentResponse
  (:init
   (&key
    ((:intent __intent) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _intent (string __intent))
   (setq _distance (float __distance))
   self)
  (:intent
   (&optional __intent)
   (if __intent (setq _intent __intent)) _intent)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _intent
    4 (length _intent)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _intent
       (write-long (length _intent) s) (princ _intent s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _intent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DetectIntent
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DetectIntent :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_cognition_msgs::DetectIntent :datatype-) "roboy_cognition_msgs/DetectIntent")
(setf (get roboy_cognition_msgs::DetectIntent :request) roboy_cognition_msgs::DetectIntentRequest)
(setf (get roboy_cognition_msgs::DetectIntent :response) roboy_cognition_msgs::DetectIntentResponse)

(defmethod roboy_cognition_msgs::DetectIntentRequest
  (:response () (instance roboy_cognition_msgs::DetectIntentResponse :init)))

(setf (get roboy_cognition_msgs::DetectIntentRequest :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_cognition_msgs::DetectIntentRequest :datatype-) "roboy_cognition_msgs/DetectIntentRequest")
(setf (get roboy_cognition_msgs::DetectIntentRequest :definition-)
      "string sentence
---
string intent
float32 distance
")

(setf (get roboy_cognition_msgs::DetectIntentResponse :md5sum-) "70b4f9547191039dfd285ee1d326f6c8")
(setf (get roboy_cognition_msgs::DetectIntentResponse :datatype-) "roboy_cognition_msgs/DetectIntentResponse")
(setf (get roboy_cognition_msgs::DetectIntentResponse :definition-)
      "string sentence
---
string intent
float32 distance
")



(provide :roboy_cognition_msgs/DetectIntent "70b4f9547191039dfd285ee1d326f6c8")


