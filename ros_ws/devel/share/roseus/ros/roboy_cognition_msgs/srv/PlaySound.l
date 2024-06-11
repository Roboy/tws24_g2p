;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::PlaySound)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'PlaySound (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::PLAYSOUND")
  (make-package "ROBOY_COGNITION_MSGS::PLAYSOUND"))
(unless (find-package "ROBOY_COGNITION_MSGS::PLAYSOUNDREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::PLAYSOUNDREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::PLAYSOUNDRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::PLAYSOUNDRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::PlaySoundRequest
  :super ros::object
  :slots (_filepath _timestamps _emotions ))

(defmethod roboy_cognition_msgs::PlaySoundRequest
  (:init
   (&key
    ((:filepath __filepath) "")
    ((:timestamps __timestamps) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:emotions __emotions) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _filepath (string __filepath))
   (setq _timestamps __timestamps)
   (setq _emotions __emotions)
   self)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:emotions
   (&optional __emotions)
   (if __emotions (setq _emotions __emotions)) _emotions)
  (:serialization-length
   ()
   (+
    ;; string _filepath
    4 (length _filepath)
    ;; float64[] _timestamps
    (* 8    (length _timestamps)) 4
    ;; string[] _emotions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _emotions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;; float64[] _timestamps
     (write-long (length _timestamps) s)
     (dotimes (i (length _timestamps))
       (sys::poke (elt _timestamps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _emotions
     (write-long (length _emotions) s)
     (dolist (elem _emotions)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _timestamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timestamps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _emotions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _emotions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _emotions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::PlaySoundResponse
  :super ros::object
  :slots (_success ))

(defmethod roboy_cognition_msgs::PlaySoundResponse
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

(defclass roboy_cognition_msgs::PlaySound
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::PlaySound :md5sum-) "be411978a058f6d39164b06691bbbd80")
(setf (get roboy_cognition_msgs::PlaySound :datatype-) "roboy_cognition_msgs/PlaySound")
(setf (get roboy_cognition_msgs::PlaySound :request) roboy_cognition_msgs::PlaySoundRequest)
(setf (get roboy_cognition_msgs::PlaySound :response) roboy_cognition_msgs::PlaySoundResponse)

(defmethod roboy_cognition_msgs::PlaySoundRequest
  (:response () (instance roboy_cognition_msgs::PlaySoundResponse :init)))

(setf (get roboy_cognition_msgs::PlaySoundRequest :md5sum-) "be411978a058f6d39164b06691bbbd80")
(setf (get roboy_cognition_msgs::PlaySoundRequest :datatype-) "roboy_cognition_msgs/PlaySoundRequest")
(setf (get roboy_cognition_msgs::PlaySoundRequest :definition-)
      "string filepath
float64[] timestamps
string[] emotions
---
bool success
")

(setf (get roboy_cognition_msgs::PlaySoundResponse :md5sum-) "be411978a058f6d39164b06691bbbd80")
(setf (get roboy_cognition_msgs::PlaySoundResponse :datatype-) "roboy_cognition_msgs/PlaySoundResponse")
(setf (get roboy_cognition_msgs::PlaySoundResponse :definition-)
      "string filepath
float64[] timestamps
string[] emotions
---
bool success
")



(provide :roboy_cognition_msgs/PlaySound "be411978a058f6d39164b06691bbbd80")


