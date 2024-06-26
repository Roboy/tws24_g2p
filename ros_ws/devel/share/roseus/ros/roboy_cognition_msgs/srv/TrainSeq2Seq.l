;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::TrainSeq2Seq)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'TrainSeq2Seq (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQ")
  (make-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQ"))
(unless (find-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::TRAINSEQ2SEQRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::TrainSeq2SeqRequest
  :super ros::object
  :slots ())

(defmethod roboy_cognition_msgs::TrainSeq2SeqRequest
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

(defclass roboy_cognition_msgs::TrainSeq2SeqResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_cognition_msgs::TrainSeq2SeqResponse
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

(defclass roboy_cognition_msgs::TrainSeq2Seq
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::TrainSeq2Seq :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roboy_cognition_msgs::TrainSeq2Seq :datatype-) "roboy_cognition_msgs/TrainSeq2Seq")
(setf (get roboy_cognition_msgs::TrainSeq2Seq :request) roboy_cognition_msgs::TrainSeq2SeqRequest)
(setf (get roboy_cognition_msgs::TrainSeq2Seq :response) roboy_cognition_msgs::TrainSeq2SeqResponse)

(defmethod roboy_cognition_msgs::TrainSeq2SeqRequest
  (:response () (instance roboy_cognition_msgs::TrainSeq2SeqResponse :init)))

(setf (get roboy_cognition_msgs::TrainSeq2SeqRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roboy_cognition_msgs::TrainSeq2SeqRequest :datatype-) "roboy_cognition_msgs/TrainSeq2SeqRequest")
(setf (get roboy_cognition_msgs::TrainSeq2SeqRequest :definition-)
      "---
bool success

")

(setf (get roboy_cognition_msgs::TrainSeq2SeqResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get roboy_cognition_msgs::TrainSeq2SeqResponse :datatype-) "roboy_cognition_msgs/TrainSeq2SeqResponse")
(setf (get roboy_cognition_msgs::TrainSeq2SeqResponse :definition-)
      "---
bool success

")



(provide :roboy_cognition_msgs/TrainSeq2Seq "358e233cde0c8a8bcfea4ce193f8fc15")


