;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::RecognizedSpeech)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'RecognizedSpeech (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEDSPEECH")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEDSPEECH"))

(in-package "ROS")
;;//! \htmlinclude RecognizedSpeech.msg.html


(defclass roboy_cognition_msgs::RecognizedSpeech
  :super ros::object
  :slots (_source _text _start_timestamp ))

(defmethod roboy_cognition_msgs::RecognizedSpeech
  (:init
   (&key
    ((:source __source) 0)
    ((:text __text) "")
    ((:start_timestamp __start_timestamp) 0.0)
    )
   (send-super :init)
   (setq _source (round __source))
   (setq _text (string __text))
   (setq _start_timestamp (float __start_timestamp))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:start_timestamp
   (&optional __start_timestamp)
   (if __start_timestamp (setq _start_timestamp __start_timestamp)) _start_timestamp)
  (:serialization-length
   ()
   (+
    ;; int16 _source
    2
    ;; string _text
    4 (length _text)
    ;; float64 _start_timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _source
       (write-word _source s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; float64 _start_timestamp
       (sys::poke _start_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _source
     (setq _source (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _start_timestamp
     (setq _start_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboy_cognition_msgs::RecognizedSpeech :md5sum-) "e88722b8a9f33a92a1fdcd99f5483faa")
(setf (get roboy_cognition_msgs::RecognizedSpeech :datatype-) "roboy_cognition_msgs/RecognizedSpeech")
(setf (get roboy_cognition_msgs::RecognizedSpeech :definition-)
      "int16 source
string text
float64 start_timestamp

")



(provide :roboy_cognition_msgs/RecognizedSpeech "e88722b8a9f33a92a1fdcd99f5483faa")


