;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::Talk)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'Talk (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::TALK")
  (make-package "ROBOY_COGNITION_MSGS::TALK"))
(unless (find-package "ROBOY_COGNITION_MSGS::TALKREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::TALKREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::TALKRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::TALKRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::TalkRequest
  :super ros::object
  :slots (_text ))

(defmethod roboy_cognition_msgs::TalkRequest
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

(defclass roboy_cognition_msgs::TalkResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_cognition_msgs::TalkResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::Talk
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::Talk :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_cognition_msgs::Talk :datatype-) "roboy_cognition_msgs/Talk")
(setf (get roboy_cognition_msgs::Talk :request) roboy_cognition_msgs::TalkRequest)
(setf (get roboy_cognition_msgs::Talk :response) roboy_cognition_msgs::TalkResponse)

(defmethod roboy_cognition_msgs::TalkRequest
  (:response () (instance roboy_cognition_msgs::TalkResponse :init)))

(setf (get roboy_cognition_msgs::TalkRequest :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_cognition_msgs::TalkRequest :datatype-) "roboy_cognition_msgs/TalkRequest")
(setf (get roboy_cognition_msgs::TalkRequest :definition-)
      "string text
---
bool success
")

(setf (get roboy_cognition_msgs::TalkResponse :md5sum-) "6ca61db74fc49874aa02b7ab6bcb76f8")
(setf (get roboy_cognition_msgs::TalkResponse :datatype-) "roboy_cognition_msgs/TalkResponse")
(setf (get roboy_cognition_msgs::TalkResponse :definition-)
      "string text
---
bool success
")



(provide :roboy_cognition_msgs/Talk "6ca61db74fc49874aa02b7ab6bcb76f8")


