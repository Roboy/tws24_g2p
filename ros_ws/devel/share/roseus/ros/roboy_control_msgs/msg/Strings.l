;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::Strings)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'Strings (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::STRINGS")
  (make-package "ROBOY_CONTROL_MSGS::STRINGS"))

(in-package "ROS")
;;//! \htmlinclude Strings.msg.html


(defclass roboy_control_msgs::Strings
  :super ros::object
  :slots (_names ))

(defmethod roboy_control_msgs::Strings
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
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
   ;;
   self)
  )

(setf (get roboy_control_msgs::Strings :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get roboy_control_msgs::Strings :datatype-) "roboy_control_msgs/Strings")
(setf (get roboy_control_msgs::Strings :definition-)
      "string[] names

")



(provide :roboy_control_msgs/Strings "dc7ae3609524b18034e49294a4ce670e")


