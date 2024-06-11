;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::OrderIceCreamFeedback)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'OrderIceCreamFeedback (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::ORDERICECREAMFEEDBACK")
  (make-package "ROBOY_COGNITION_MSGS::ORDERICECREAMFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude OrderIceCreamFeedback.msg.html


(defclass roboy_cognition_msgs::OrderIceCreamFeedback
  :super ros::object
  :slots (_finished_scoops _status_message ))

(defmethod roboy_cognition_msgs::OrderIceCreamFeedback
  (:init
   (&key
    ((:finished_scoops __finished_scoops) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _finished_scoops __finished_scoops)
   (setq _status_message (string __status_message))
   self)
  (:finished_scoops
   (&optional __finished_scoops)
   (if __finished_scoops (setq _finished_scoops __finished_scoops)) _finished_scoops)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool[] _finished_scoops
    (* 1    (length _finished_scoops)) 4
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _finished_scoops
     (write-long (length _finished_scoops) s)
     (dotimes (i (length _finished_scoops))
       (if (elt _finished_scoops i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _finished_scoops
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _finished_scoops (make-list n))
     (dotimes (i n)
     (setf (elt _finished_scoops i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboy_cognition_msgs::OrderIceCreamFeedback :md5sum-) "84132ae12f784d01b8d8c41f0054500b")
(setf (get roboy_cognition_msgs::OrderIceCreamFeedback :datatype-) "roboy_cognition_msgs/OrderIceCreamFeedback")
(setf (get roboy_cognition_msgs::OrderIceCreamFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# for every finished scoop, feedback is supplied in form of another boolean that is appended to finished_scoops
# status messages can be \"more time\" 
bool[] finished_scoops 
string status_message


")



(provide :roboy_cognition_msgs/OrderIceCreamFeedback "84132ae12f784d01b8d8c41f0054500b")

