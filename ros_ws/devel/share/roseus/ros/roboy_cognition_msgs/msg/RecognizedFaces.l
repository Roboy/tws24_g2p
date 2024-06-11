;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::RecognizedFaces)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'RecognizedFaces (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::RECOGNIZEDFACES")
  (make-package "ROBOY_COGNITION_MSGS::RECOGNIZEDFACES"))

(in-package "ROS")
;;//! \htmlinclude RecognizedFaces.msg.html


(defclass roboy_cognition_msgs::RecognizedFaces
  :super ros::object
  :slots (_names _confidence ))

(defmethod roboy_cognition_msgs::RecognizedFaces
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

(setf (get roboy_cognition_msgs::RecognizedFaces :md5sum-) "f1c93df92c259a3092c20b630d063988")
(setf (get roboy_cognition_msgs::RecognizedFaces :datatype-) "roboy_cognition_msgs/RecognizedFaces")
(setf (get roboy_cognition_msgs::RecognizedFaces :definition-)
      "string[] names
float64[] confidence

")



(provide :roboy_cognition_msgs/RecognizedFaces "f1c93df92c259a3092c20b630d063988")


