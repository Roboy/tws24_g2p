;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::CallQuery)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'CallQuery (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::CALLQUERY")
  (make-package "ROBOY_COGNITION_MSGS::CALLQUERY"))
(unless (find-package "ROBOY_COGNITION_MSGS::CALLQUERYREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::CALLQUERYREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::CALLQUERYRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::CALLQUERYRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::CallQueryRequest
  :super ros::object
  :slots (_query ))

(defmethod roboy_cognition_msgs::CallQueryRequest
  (:init
   (&key
    ((:query __query) "")
    )
   (send-super :init)
   (setq _query (string __query))
   self)
  (:query
   (&optional __query)
   (if __query (setq _query __query)) _query)
  (:serialization-length
   ()
   (+
    ;; string _query
    4 (length _query)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _query
       (write-long (length _query) s) (princ _query s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::CallQueryResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_cognition_msgs::CallQueryResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::CallQuery
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::CallQuery :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_cognition_msgs::CallQuery :datatype-) "roboy_cognition_msgs/CallQuery")
(setf (get roboy_cognition_msgs::CallQuery :request) roboy_cognition_msgs::CallQueryRequest)
(setf (get roboy_cognition_msgs::CallQuery :response) roboy_cognition_msgs::CallQueryResponse)

(defmethod roboy_cognition_msgs::CallQueryRequest
  (:response () (instance roboy_cognition_msgs::CallQueryResponse :init)))

(setf (get roboy_cognition_msgs::CallQueryRequest :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_cognition_msgs::CallQueryRequest :datatype-) "roboy_cognition_msgs/CallQueryRequest")
(setf (get roboy_cognition_msgs::CallQueryRequest :definition-)
      "string query
---
bool result
")

(setf (get roboy_cognition_msgs::CallQueryResponse :md5sum-) "5404d412a67bedecd70067ff4e66aff8")
(setf (get roboy_cognition_msgs::CallQueryResponse :datatype-) "roboy_cognition_msgs/CallQueryResponse")
(setf (get roboy_cognition_msgs::CallQueryResponse :definition-)
      "string query
---
bool result
")



(provide :roboy_cognition_msgs/CallQuery "5404d412a67bedecd70067ff4e66aff8")


