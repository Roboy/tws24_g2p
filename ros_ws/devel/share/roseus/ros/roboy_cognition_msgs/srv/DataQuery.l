;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DataQuery)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DataQuery (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DATAQUERY")
  (make-package "ROBOY_COGNITION_MSGS::DATAQUERY"))
(unless (find-package "ROBOY_COGNITION_MSGS::DATAQUERYREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DATAQUERYREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DATAQUERYRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DATAQUERYRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::DataQueryRequest
  :super ros::object
  :slots (_header _payload ))

(defmethod roboy_cognition_msgs::DataQueryRequest
  (:init
   (&key
    ((:header __header) "")
    ((:payload __payload) "")
    )
   (send-super :init)
   (setq _header (string __header))
   (setq _payload (string __payload))
   self)
  (:header
   (&optional __header)
   (if __header (setq _header __header)) _header)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; string _header
    4 (length _header)
    ;; string _payload
    4 (length _payload)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _header
       (write-long (length _header) s) (princ _header s)
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _header
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _header (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DataQueryResponse
  :super ros::object
  :slots (_answer ))

(defmethod roboy_cognition_msgs::DataQueryResponse
  (:init
   (&key
    ((:answer __answer) "")
    )
   (send-super :init)
   (setq _answer (string __answer))
   self)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:serialization-length
   ()
   (+
    ;; string _answer
    4 (length _answer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _answer
       (write-long (length _answer) s) (princ _answer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _answer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _answer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DataQuery
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DataQuery :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_cognition_msgs::DataQuery :datatype-) "roboy_cognition_msgs/DataQuery")
(setf (get roboy_cognition_msgs::DataQuery :request) roboy_cognition_msgs::DataQueryRequest)
(setf (get roboy_cognition_msgs::DataQuery :response) roboy_cognition_msgs::DataQueryResponse)

(defmethod roboy_cognition_msgs::DataQueryRequest
  (:response () (instance roboy_cognition_msgs::DataQueryResponse :init)))

(setf (get roboy_cognition_msgs::DataQueryRequest :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_cognition_msgs::DataQueryRequest :datatype-) "roboy_cognition_msgs/DataQueryRequest")
(setf (get roboy_cognition_msgs::DataQueryRequest :definition-)
      "string header
string payload
---
string answer

")

(setf (get roboy_cognition_msgs::DataQueryResponse :md5sum-) "069affd70d154d413f85fd5c1967eed6")
(setf (get roboy_cognition_msgs::DataQueryResponse :datatype-) "roboy_cognition_msgs/DataQueryResponse")
(setf (get roboy_cognition_msgs::DataQueryResponse :definition-)
      "string header
string payload
---
string answer

")



(provide :roboy_cognition_msgs/DataQuery "069affd70d154d413f85fd5c1967eed6")


