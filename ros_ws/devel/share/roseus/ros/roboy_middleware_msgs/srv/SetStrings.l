;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::SetStrings)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'SetStrings (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGS")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGS"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGSREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGSREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGSRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::SETSTRINGSRESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::SetStringsRequest
  :super ros::object
  :slots (_strings ))

(defmethod roboy_middleware_msgs::SetStringsRequest
  (:init
   (&key
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _strings __strings)
   self)
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:serialization-length
   ()
   (+
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::SetStringsResponse
  :super ros::object
  :slots (_result ))

(defmethod roboy_middleware_msgs::SetStringsResponse
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

(defclass roboy_middleware_msgs::SetStrings
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::SetStrings :md5sum-) "962de84cd3589029beb1778181ac83ae")
(setf (get roboy_middleware_msgs::SetStrings :datatype-) "roboy_middleware_msgs/SetStrings")
(setf (get roboy_middleware_msgs::SetStrings :request) roboy_middleware_msgs::SetStringsRequest)
(setf (get roboy_middleware_msgs::SetStrings :response) roboy_middleware_msgs::SetStringsResponse)

(defmethod roboy_middleware_msgs::SetStringsRequest
  (:response () (instance roboy_middleware_msgs::SetStringsResponse :init)))

(setf (get roboy_middleware_msgs::SetStringsRequest :md5sum-) "962de84cd3589029beb1778181ac83ae")
(setf (get roboy_middleware_msgs::SetStringsRequest :datatype-) "roboy_middleware_msgs/SetStringsRequest")
(setf (get roboy_middleware_msgs::SetStringsRequest :definition-)
      "string[] strings
---
bool result
")

(setf (get roboy_middleware_msgs::SetStringsResponse :md5sum-) "962de84cd3589029beb1778181ac83ae")
(setf (get roboy_middleware_msgs::SetStringsResponse :datatype-) "roboy_middleware_msgs/SetStringsResponse")
(setf (get roboy_middleware_msgs::SetStringsResponse :definition-)
      "string[] strings
---
bool result
")



(provide :roboy_middleware_msgs/SetStrings "962de84cd3589029beb1778181ac83ae")


