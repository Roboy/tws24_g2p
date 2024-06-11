;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::ShowEmotion)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'ShowEmotion (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::SHOWEMOTION")
  (make-package "ROBOY_CONTROL_MSGS::SHOWEMOTION"))
(unless (find-package "ROBOY_CONTROL_MSGS::SHOWEMOTIONREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::SHOWEMOTIONREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::SHOWEMOTIONRESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::SHOWEMOTIONRESPONSE"))

(in-package "ROS")





(defclass roboy_control_msgs::ShowEmotionRequest
  :super ros::object
  :slots (_emotion ))

(defmethod roboy_control_msgs::ShowEmotionRequest
  (:init
   (&key
    ((:emotion __emotion) "")
    )
   (send-super :init)
   (setq _emotion (string __emotion))
   self)
  (:emotion
   (&optional __emotion)
   (if __emotion (setq _emotion __emotion)) _emotion)
  (:serialization-length
   ()
   (+
    ;; string _emotion
    4 (length _emotion)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _emotion
       (write-long (length _emotion) s) (princ _emotion s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _emotion
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _emotion (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_control_msgs::ShowEmotionResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_control_msgs::ShowEmotionResponse
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

(defclass roboy_control_msgs::ShowEmotion
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::ShowEmotion :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_control_msgs::ShowEmotion :datatype-) "roboy_control_msgs/ShowEmotion")
(setf (get roboy_control_msgs::ShowEmotion :request) roboy_control_msgs::ShowEmotionRequest)
(setf (get roboy_control_msgs::ShowEmotion :response) roboy_control_msgs::ShowEmotionResponse)

(defmethod roboy_control_msgs::ShowEmotionRequest
  (:response () (instance roboy_control_msgs::ShowEmotionResponse :init)))

(setf (get roboy_control_msgs::ShowEmotionRequest :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_control_msgs::ShowEmotionRequest :datatype-) "roboy_control_msgs/ShowEmotionRequest")
(setf (get roboy_control_msgs::ShowEmotionRequest :definition-)
      "string emotion
---
bool success
")

(setf (get roboy_control_msgs::ShowEmotionResponse :md5sum-) "5a9d20fa9a1b468cec007dad13c554fc")
(setf (get roboy_control_msgs::ShowEmotionResponse :datatype-) "roboy_control_msgs/ShowEmotionResponse")
(setf (get roboy_control_msgs::ShowEmotionResponse :definition-)
      "string emotion
---
bool success
")



(provide :roboy_control_msgs/ShowEmotion "5a9d20fa9a1b468cec007dad13c554fc")


