;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::Faces)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'Faces (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::FACES")
  (make-package "ROBOY_COGNITION_MSGS::FACES"))

(in-package "ROS")
;;//! \htmlinclude Faces.msg.html


(defclass roboy_cognition_msgs::Faces
  :super ros::object
  :slots (_ids _names _confidence _face_encodings ))

(defmethod roboy_cognition_msgs::Faces
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidence __confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:face_encodings __face_encodings) ())
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _names __names)
   (setq _confidence __confidence)
   (setq _face_encodings __face_encodings)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:face_encodings
   (&rest __face_encodings)
   (if (keywordp (car __face_encodings))
       (send* _face_encodings __face_encodings)
     (progn
       (if __face_encodings (setq _face_encodings (car __face_encodings)))
       _face_encodings)))
  (:serialization-length
   ()
   (+
    ;; int64[] _ids
    (* 8    (length _ids)) 4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _confidence
    (* 8    (length _confidence)) 4
    ;; roboy_cognition_msgs/FacialFeatures[] _face_encodings
    (apply #'+ (send-all _face_encodings :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _ids i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _ids i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _ids i) . bv) 1) -1) s))
             ((and (class (elt _ids i)) (= (length ((elt _ids i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _ids i) . bv) 0) s)
              (write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _ids i) s)(write-long (if (>= (elt _ids i) 0) 0 #xffffffff) s)))
       )
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
     ;; roboy_cognition_msgs/FacialFeatures[] _face_encodings
     (write-long (length _face_encodings) s)
     (dolist (elem _face_encodings)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _ids i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
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
   ;; roboy_cognition_msgs/FacialFeatures[] _face_encodings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _face_encodings (let (r) (dotimes (i n) (push (instance roboy_cognition_msgs::FacialFeatures :init) r)) r))
     (dolist (elem- _face_encodings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get roboy_cognition_msgs::Faces :md5sum-) "b3887f53ecaef4d7920e7c85fe09666b")
(setf (get roboy_cognition_msgs::Faces :datatype-) "roboy_cognition_msgs/Faces")
(setf (get roboy_cognition_msgs::Faces :definition-)
      "int64[] ids
string[] names
float64[] confidence
FacialFeatures[] face_encodings
================================================================================
MSG: roboy_cognition_msgs/FacialFeatures
#only for unrecognized faces
#is person speaking?
bool speaking
#facial features (128x1 vector)
float64[128] ff

")



(provide :roboy_cognition_msgs/Faces "b3887f53ecaef4d7920e7c85fe09666b")


