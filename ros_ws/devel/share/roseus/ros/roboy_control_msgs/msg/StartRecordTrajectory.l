;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::StartRecordTrajectory)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'StartRecordTrajectory (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::STARTRECORDTRAJECTORY")
  (make-package "ROBOY_CONTROL_MSGS::STARTRECORDTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude StartRecordTrajectory.msg.html


(defclass roboy_control_msgs::StartRecordTrajectory
  :super ros::object
  :slots (_name _body_parts _id_list ))

(defmethod roboy_control_msgs::StartRecordTrajectory
  (:init
   (&key
    ((:name __name) "")
    ((:body_parts __body_parts) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:id_list __id_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _body_parts __body_parts)
   (setq _id_list __id_list)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:body_parts
   (&optional __body_parts)
   (if __body_parts (setq _body_parts __body_parts)) _body_parts)
  (:id_list
   (&optional __id_list)
   (if __id_list (setq _id_list __id_list)) _id_list)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _body_parts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _body_parts)) 4
    ;; int8[] _id_list
    (* 1    (length _id_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _body_parts
     (write-long (length _body_parts) s)
     (dolist (elem _body_parts)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _id_list
     (write-long (length _id_list) s)
     (dotimes (i (length _id_list))
       (write-byte (elt _id_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _body_parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_parts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _body_parts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id_list i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _id_list i) 127) (setf (elt _id_list i) (- (elt _id_list i) 256)))
     ))
   ;;
   self)
  )

(setf (get roboy_control_msgs::StartRecordTrajectory :md5sum-) "87f4ca9ce44f7e39ae96c9a7bde4f0da")
(setf (get roboy_control_msgs::StartRecordTrajectory :datatype-) "roboy_control_msgs/StartRecordTrajectory")
(setf (get roboy_control_msgs::StartRecordTrajectory :definition-)
      "string name
string[] body_parts # to record
int8[] id_list
")



(provide :roboy_control_msgs/StartRecordTrajectory "87f4ca9ce44f7e39ae96c9a7bde4f0da")


