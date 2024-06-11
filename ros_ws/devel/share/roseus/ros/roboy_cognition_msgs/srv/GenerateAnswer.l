;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::GenerateAnswer)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'GenerateAnswer (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::GENERATEANSWER")
  (make-package "ROBOY_COGNITION_MSGS::GENERATEANSWER"))
(unless (find-package "ROBOY_COGNITION_MSGS::GENERATEANSWERREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::GENERATEANSWERREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::GENERATEANSWERRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::GENERATEANSWERRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::GenerateAnswerRequest
  :super ros::object
  :slots (_text_input ))

(defmethod roboy_cognition_msgs::GenerateAnswerRequest
  (:init
   (&key
    ((:text_input __text_input) "")
    )
   (send-super :init)
   (setq _text_input (string __text_input))
   self)
  (:text_input
   (&optional __text_input)
   (if __text_input (setq _text_input __text_input)) _text_input)
  (:serialization-length
   ()
   (+
    ;; string _text_input
    4 (length _text_input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text_input
       (write-long (length _text_input) s) (princ _text_input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text_input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::GenerateAnswerResponse
  :super ros::object
  :slots (_result _text_output ))

(defmethod roboy_cognition_msgs::GenerateAnswerResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:text_output __text_output) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _text_output (string __text_output))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:text_output
   (&optional __text_output)
   (if __text_output (setq _text_output __text_output)) _text_output)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _text_output
    4 (length _text_output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _text_output
       (write-long (length _text_output) s) (princ _text_output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _text_output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::GenerateAnswer
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::GenerateAnswer :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_cognition_msgs::GenerateAnswer :datatype-) "roboy_cognition_msgs/GenerateAnswer")
(setf (get roboy_cognition_msgs::GenerateAnswer :request) roboy_cognition_msgs::GenerateAnswerRequest)
(setf (get roboy_cognition_msgs::GenerateAnswer :response) roboy_cognition_msgs::GenerateAnswerResponse)

(defmethod roboy_cognition_msgs::GenerateAnswerRequest
  (:response () (instance roboy_cognition_msgs::GenerateAnswerResponse :init)))

(setf (get roboy_cognition_msgs::GenerateAnswerRequest :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_cognition_msgs::GenerateAnswerRequest :datatype-) "roboy_cognition_msgs/GenerateAnswerRequest")
(setf (get roboy_cognition_msgs::GenerateAnswerRequest :definition-)
      "string text_input
---
bool result
string text_output

")

(setf (get roboy_cognition_msgs::GenerateAnswerResponse :md5sum-) "d4741618daf7a94d6af22e9650d416c0")
(setf (get roboy_cognition_msgs::GenerateAnswerResponse :datatype-) "roboy_cognition_msgs/GenerateAnswerResponse")
(setf (get roboy_cognition_msgs::GenerateAnswerResponse :definition-)
      "string text_input
---
bool result
string text_output

")



(provide :roboy_cognition_msgs/GenerateAnswer "d4741618daf7a94d6af22e9650d416c0")


