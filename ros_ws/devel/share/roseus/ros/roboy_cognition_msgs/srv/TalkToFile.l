;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::TalkToFile)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'TalkToFile (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::TALKTOFILE")
  (make-package "ROBOY_COGNITION_MSGS::TALKTOFILE"))
(unless (find-package "ROBOY_COGNITION_MSGS::TALKTOFILEREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::TALKTOFILEREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::TALKTOFILERESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::TALKTOFILERESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::TalkToFileRequest
  :super ros::object
  :slots (_text _filename ))

(defmethod roboy_cognition_msgs::TalkToFileRequest
  (:init
   (&key
    ((:text __text) "")
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _filename (string __filename))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::TalkToFileResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_cognition_msgs::TalkToFileResponse
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

(defclass roboy_cognition_msgs::TalkToFile
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::TalkToFile :md5sum-) "09de354d912b0028dddee2016165725f")
(setf (get roboy_cognition_msgs::TalkToFile :datatype-) "roboy_cognition_msgs/TalkToFile")
(setf (get roboy_cognition_msgs::TalkToFile :request) roboy_cognition_msgs::TalkToFileRequest)
(setf (get roboy_cognition_msgs::TalkToFile :response) roboy_cognition_msgs::TalkToFileResponse)

(defmethod roboy_cognition_msgs::TalkToFileRequest
  (:response () (instance roboy_cognition_msgs::TalkToFileResponse :init)))

(setf (get roboy_cognition_msgs::TalkToFileRequest :md5sum-) "09de354d912b0028dddee2016165725f")
(setf (get roboy_cognition_msgs::TalkToFileRequest :datatype-) "roboy_cognition_msgs/TalkToFileRequest")
(setf (get roboy_cognition_msgs::TalkToFileRequest :definition-)
      "string text
string filename
---
bool success

")

(setf (get roboy_cognition_msgs::TalkToFileResponse :md5sum-) "09de354d912b0028dddee2016165725f")
(setf (get roboy_cognition_msgs::TalkToFileResponse :datatype-) "roboy_cognition_msgs/TalkToFileResponse")
(setf (get roboy_cognition_msgs::TalkToFileResponse :definition-)
      "string text
string filename
---
bool success

")



(provide :roboy_cognition_msgs/TalkToFile "09de354d912b0028dddee2016165725f")


