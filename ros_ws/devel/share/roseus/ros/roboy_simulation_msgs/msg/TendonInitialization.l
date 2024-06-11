;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::TendonInitialization)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'TendonInitialization (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::TENDONINITIALIZATION")
  (make-package "ROBOY_SIMULATION_MSGS::TENDONINITIALIZATION"))

(in-package "ROS")
;;//! \htmlinclude TendonInitialization.msg.html


(defclass roboy_simulation_msgs::TendonInitialization
  :super ros::object
  :slots (_tendon_id _max_force _wirepoints _roboy_parts ))

(defmethod roboy_simulation_msgs::TendonInitialization
  (:init
   (&key
    ((:tendon_id __tendon_id) 0)
    ((:max_force __max_force) 0.0)
    ((:wirepoints __wirepoints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roboy_parts __roboy_parts) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _tendon_id (round __tendon_id))
   (setq _max_force (float __max_force))
   (setq _wirepoints __wirepoints)
   (setq _roboy_parts __roboy_parts)
   self)
  (:tendon_id
   (&optional __tendon_id)
   (if __tendon_id (setq _tendon_id __tendon_id)) _tendon_id)
  (:max_force
   (&optional __max_force)
   (if __max_force (setq _max_force __max_force)) _max_force)
  (:wirepoints
   (&optional __wirepoints)
   (if __wirepoints (setq _wirepoints __wirepoints)) _wirepoints)
  (:roboy_parts
   (&optional __roboy_parts)
   (if __roboy_parts (setq _roboy_parts __roboy_parts)) _roboy_parts)
  (:serialization-length
   ()
   (+
    ;; int32 _tendon_id
    4
    ;; float32 _max_force
    4
    ;; float32[] _wirepoints
    (* 4    (length _wirepoints)) 4
    ;; string[] _roboy_parts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _roboy_parts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tendon_id
       (write-long _tendon_id s)
     ;; float32 _max_force
       (sys::poke _max_force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _wirepoints
     (write-long (length _wirepoints) s)
     (dotimes (i (length _wirepoints))
       (sys::poke (elt _wirepoints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _roboy_parts
     (write-long (length _roboy_parts) s)
     (dolist (elem _roboy_parts)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tendon_id
     (setq _tendon_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _max_force
     (setq _max_force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _wirepoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wirepoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wirepoints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _roboy_parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roboy_parts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _roboy_parts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::TendonInitialization :md5sum-) "f7ee2d602d56209b5a118cdb0a171bf0")
(setf (get roboy_simulation_msgs::TendonInitialization :datatype-) "roboy_simulation_msgs/TendonInitialization")
(setf (get roboy_simulation_msgs::TendonInitialization :definition-)
      "int32 tendon_id
#maximal applicable force	
float32 max_force
#world space coord, 3 floats == one coordinate
float32[] wirepoints
#names of roboypart each wirepoint is linked to
string[] roboy_parts
")



(provide :roboy_simulation_msgs/TendonInitialization "f7ee2d602d56209b5a118cdb0a171bf0")


