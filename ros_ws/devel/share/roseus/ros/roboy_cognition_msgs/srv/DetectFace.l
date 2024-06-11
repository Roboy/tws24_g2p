;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::DetectFace)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'DetectFace (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTFACE")
  (make-package "ROBOY_COGNITION_MSGS::DETECTFACE"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTFACEREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::DETECTFACEREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::DETECTFACERESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::DETECTFACERESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::DetectFaceRequest
  :super ros::object
  :slots ())

(defmethod roboy_cognition_msgs::DetectFaceRequest
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

(defclass roboy_cognition_msgs::DetectFaceResponse
  :super ros::object
  :slots (_face_detected ))

(defmethod roboy_cognition_msgs::DetectFaceResponse
  (:init
   (&key
    ((:face_detected __face_detected) nil)
    )
   (send-super :init)
   (setq _face_detected __face_detected)
   self)
  (:face_detected
   (&optional (__face_detected :null))
   (if (not (eq __face_detected :null)) (setq _face_detected __face_detected)) _face_detected)
  (:serialization-length
   ()
   (+
    ;; bool _face_detected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _face_detected
       (if _face_detected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _face_detected
     (setq _face_detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roboy_cognition_msgs::DetectFace
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::DetectFace :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_cognition_msgs::DetectFace :datatype-) "roboy_cognition_msgs/DetectFace")
(setf (get roboy_cognition_msgs::DetectFace :request) roboy_cognition_msgs::DetectFaceRequest)
(setf (get roboy_cognition_msgs::DetectFace :response) roboy_cognition_msgs::DetectFaceResponse)

(defmethod roboy_cognition_msgs::DetectFaceRequest
  (:response () (instance roboy_cognition_msgs::DetectFaceResponse :init)))

(setf (get roboy_cognition_msgs::DetectFaceRequest :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_cognition_msgs::DetectFaceRequest :datatype-) "roboy_cognition_msgs/DetectFaceRequest")
(setf (get roboy_cognition_msgs::DetectFaceRequest :definition-)
      "---
bool face_detected

")

(setf (get roboy_cognition_msgs::DetectFaceResponse :md5sum-) "94fee4081dfe1f4cd412b0ed430e52b4")
(setf (get roboy_cognition_msgs::DetectFaceResponse :datatype-) "roboy_cognition_msgs/DetectFaceResponse")
(setf (get roboy_cognition_msgs::DetectFaceResponse :definition-)
      "---
bool face_detected

")



(provide :roboy_cognition_msgs/DetectFace "94fee4081dfe1f4cd412b0ed430e52b4")


