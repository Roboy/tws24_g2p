;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::RecognizeFaces)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'RecognizeFaces (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACES")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACES"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACESREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACESREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACESRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEFACESRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::RecognizeFacesRequest
  :super ros::object
  :slots (_encodings ))

(defmethod roboy_cognition_msgs::RecognizeFacesRequest
  (:init
   (&key
    ((:encodings __encodings) ())
    )
   (send-super :init)
   (setq _encodings __encodings)
   self)
  (:encodings
   (&rest __encodings)
   (if (keywordp (car __encodings))
       (send* _encodings __encodings)
     (progn
       (if __encodings (setq _encodings (car __encodings)))
       _encodings)))
  (:serialization-length
   ()
   (+
    ;; roboy_cognition_msgs/FacialFeatures[] _encodings
    (apply #'+ (send-all _encodings :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_cognition_msgs/FacialFeatures[] _encodings
     (write-long (length _encodings) s)
     (dolist (elem _encodings)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_cognition_msgs/FacialFeatures[] _encodings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encodings (let (r) (dotimes (i n) (push (instance roboy_cognition_msgs::FacialFeatures :init) r)) r))
     (dolist (elem- _encodings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::RecognizeFacesResponse
  :super ros::object
  :slots (_names _confidence ))

(defmethod roboy_cognition_msgs::RecognizeFacesResponse
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _confidence __confidence)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _confidence
    (* 8    (length _confidence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _confidence
     (write-long (length _confidence) s)
     (dotimes (i (length _confidence))
       (sys::poke (elt _confidence i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidence i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::RecognizeFaces
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::RecognizeFaces :md5sum-) "cc12f589e5227d96fb8b8056d9ae50c9")
(setf (get roboy_cognition_msgs::RecognizeFaces :datatype-) "roboy_cognition_msgs/RecognizeFaces")
(setf (get roboy_cognition_msgs::RecognizeFaces :request) roboy_cognition_msgs::RecognizeFacesRequest)
(setf (get roboy_cognition_msgs::RecognizeFaces :response) roboy_cognition_msgs::RecognizeFacesResponse)

(defmethod roboy_cognition_msgs::RecognizeFacesRequest
  (:response () (instance roboy_cognition_msgs::RecognizeFacesResponse :init)))

(setf (get roboy_cognition_msgs::RecognizeFacesRequest :md5sum-) "cc12f589e5227d96fb8b8056d9ae50c9")
(setf (get roboy_cognition_msgs::RecognizeFacesRequest :datatype-) "roboy_cognition_msgs/RecognizeFacesRequest")
(setf (get roboy_cognition_msgs::RecognizeFacesRequest :definition-)
      "FacialFeatures[] encodings

================================================================================
MSG: roboy_cognition_msgs/FacialFeatures
#only for unrecognized faces
#is person speaking?
bool speaking
#facial features (128x1 vector)
float64[128] ff
---
string[] names
float64[] confidence

")

(setf (get roboy_cognition_msgs::RecognizeFacesResponse :md5sum-) "cc12f589e5227d96fb8b8056d9ae50c9")
(setf (get roboy_cognition_msgs::RecognizeFacesResponse :datatype-) "roboy_cognition_msgs/RecognizeFacesResponse")
(setf (get roboy_cognition_msgs::RecognizeFacesResponse :definition-)
      "FacialFeatures[] encodings

================================================================================
MSG: roboy_cognition_msgs/FacialFeatures
#only for unrecognized faces
#is person speaking?
bool speaking
#facial features (128x1 vector)
float64[128] ff
---
string[] names
float64[] confidence

")



(provide :roboy_cognition_msgs/RecognizeFaces "cc12f589e5227d96fb8b8056d9ae50c9")


