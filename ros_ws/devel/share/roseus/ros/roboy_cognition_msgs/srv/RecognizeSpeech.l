;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::RecognizeSpeech)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'RecognizeSpeech (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECH")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECH"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECHREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECHREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECHRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZESPEECHRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::RecognizeSpeechRequest
  :super ros::object
  :slots ())

(defmethod roboy_cognition_msgs::RecognizeSpeechRequest
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

(defclass roboy_cognition_msgs::RecognizeSpeechResponse
  :super ros::object
  :slots (_text ))

(defmethod roboy_cognition_msgs::RecognizeSpeechResponse
  (:init
   (&key
    ((:text __text) "")
    )
   (send-super :init)
   (setq _text (string __text))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::RecognizeSpeech
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::RecognizeSpeech :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_cognition_msgs::RecognizeSpeech :datatype-) "roboy_cognition_msgs/RecognizeSpeech")
(setf (get roboy_cognition_msgs::RecognizeSpeech :request) roboy_cognition_msgs::RecognizeSpeechRequest)
(setf (get roboy_cognition_msgs::RecognizeSpeech :response) roboy_cognition_msgs::RecognizeSpeechResponse)

(defmethod roboy_cognition_msgs::RecognizeSpeechRequest
  (:response () (instance roboy_cognition_msgs::RecognizeSpeechResponse :init)))

(setf (get roboy_cognition_msgs::RecognizeSpeechRequest :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_cognition_msgs::RecognizeSpeechRequest :datatype-) "roboy_cognition_msgs/RecognizeSpeechRequest")
(setf (get roboy_cognition_msgs::RecognizeSpeechRequest :definition-)
      "---
string text

")

(setf (get roboy_cognition_msgs::RecognizeSpeechResponse :md5sum-) "74697ed3d931f6eede8bf3a8dfeca160")
(setf (get roboy_cognition_msgs::RecognizeSpeechResponse :datatype-) "roboy_cognition_msgs/RecognizeSpeechResponse")
(setf (get roboy_cognition_msgs::RecognizeSpeechResponse :definition-)
      "---
string text

")



(provide :roboy_cognition_msgs/RecognizeSpeech "74697ed3d931f6eede8bf3a8dfeca160")


