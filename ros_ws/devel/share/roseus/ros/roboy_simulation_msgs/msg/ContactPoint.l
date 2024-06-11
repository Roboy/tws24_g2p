;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::ContactPoint)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'ContactPoint (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::CONTACTPOINT")
  (make-package "ROBOY_SIMULATION_MSGS::CONTACTPOINT"))

(in-package "ROS")
;;//! \htmlinclude ContactPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass roboy_simulation_msgs::ContactPoint
  :super ros::object
  :slots (_linkid _position _contactnormal _contactdistance _normalforce ))

(defmethod roboy_simulation_msgs::ContactPoint
  (:init
   (&key
    ((:linkid __linkid) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:contactnormal __contactnormal) (instance geometry_msgs::Vector3 :init))
    ((:contactdistance __contactdistance) 0.0)
    ((:normalforce __normalforce) 0.0)
    )
   (send-super :init)
   (setq _linkid (round __linkid))
   (setq _position __position)
   (setq _contactnormal __contactnormal)
   (setq _contactdistance (float __contactdistance))
   (setq _normalforce (float __normalforce))
   self)
  (:linkid
   (&optional __linkid)
   (if __linkid (setq _linkid __linkid)) _linkid)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:contactnormal
   (&rest __contactnormal)
   (if (keywordp (car __contactnormal))
       (send* _contactnormal __contactnormal)
     (progn
       (if __contactnormal (setq _contactnormal (car __contactnormal)))
       _contactnormal)))
  (:contactdistance
   (&optional __contactdistance)
   (if __contactdistance (setq _contactdistance __contactdistance)) _contactdistance)
  (:normalforce
   (&optional __normalforce)
   (if __normalforce (setq _normalforce __normalforce)) _normalforce)
  (:serialization-length
   ()
   (+
    ;; int64 _linkid
    8
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _contactnormal
    (send _contactnormal :serialization-length)
    ;; float64 _contactdistance
    8
    ;; float64 _normalforce
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _linkid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _linkid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _linkid) (= (length (_linkid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_linkid . bv) 0) 0) s)
              (write-long (ash (elt (_linkid . bv) 1) -1) s))
             ((and (class _linkid) (= (length (_linkid . bv)) 1)) ;; big1
              (write-long (elt (_linkid . bv) 0) s)
              (write-long (if (>= _linkid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _linkid s)(write-long (if (>= _linkid 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _contactnormal
       (send _contactnormal :serialize s)
     ;; float64 _contactdistance
       (sys::poke _contactdistance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _normalforce
       (sys::poke _normalforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _linkid
#+(or :alpha :irix6 :x86_64)
      (setf _linkid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _linkid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _contactnormal
     (send _contactnormal :deserialize buf ptr-) (incf ptr- (send _contactnormal :serialization-length))
   ;; float64 _contactdistance
     (setq _contactdistance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _normalforce
     (setq _normalforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboy_simulation_msgs::ContactPoint :md5sum-) "32832356e1139e4e5fd083337d208b0e")
(setf (get roboy_simulation_msgs::ContactPoint :datatype-) "roboy_simulation_msgs/ContactPoint")
(setf (get roboy_simulation_msgs::ContactPoint :definition-)
      "#id of roboy link in which a collision happened
int64 linkid
#position of contact point on roboy in link frame
geometry_msgs/Vector3 position
#contact normal on external body, pointing towards roboy
geometry_msgs/Vector3 contactnormal
#contact distance, positive for separation, negative for penetration
float64 contactdistance
#normal force applied during the last 'stepSimulation'
float64 normalforce
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :roboy_simulation_msgs/ContactPoint "32832356e1139e4e5fd083337d208b0e")


