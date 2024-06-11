;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::EmergencyStop)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'EmergencyStop (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOP")
  (make-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOP"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOPREQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOPREQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOPRESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::EMERGENCYSTOPRESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::EmergencyStopRequest
  :super ros::object
  :slots (_all _id_list ))

(defmethod roboy_middleware_msgs::EmergencyStopRequest
  (:init
   (&key
    ((:all __all) nil)
    ((:id_list __id_list) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _all __all)
   (setq _id_list __id_list)
   self)
  (:all
   (&optional (__all :null))
   (if (not (eq __all :null)) (setq _all __all)) _all)
  (:id_list
   (&optional __id_list)
   (if __id_list (setq _id_list __id_list)) _id_list)
  (:serialization-length
   ()
   (+
    ;; bool _all
    1
    ;; int8[] _id_list
    (* 1    (length _id_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _all
       (if _all (write-byte -1 s) (write-byte 0 s))
     ;; int8[] _id_list
     (write-long (length _id_list) s)
     (dotimes (i (length _id_list))
       (write-byte (elt _id_list i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _all
     (setq _all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass roboy_middleware_msgs::EmergencyStopResponse
  :super ros::object
  :slots (_states ))

(defmethod roboy_middleware_msgs::EmergencyStopResponse
  (:init
   (&key
    ((:states __states) ())
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; roboy_middleware_msgs/ControllerState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_middleware_msgs/ControllerState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_middleware_msgs/ControllerState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance roboy_middleware_msgs::ControllerState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass roboy_middleware_msgs::EmergencyStop
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::EmergencyStop :md5sum-) "769d67555bcace7e21068dd8a08c7e86")
(setf (get roboy_middleware_msgs::EmergencyStop :datatype-) "roboy_middleware_msgs/EmergencyStop")
(setf (get roboy_middleware_msgs::EmergencyStop :request) roboy_middleware_msgs::EmergencyStopRequest)
(setf (get roboy_middleware_msgs::EmergencyStop :response) roboy_middleware_msgs::EmergencyStopResponse)

(defmethod roboy_middleware_msgs::EmergencyStopRequest
  (:response () (instance roboy_middleware_msgs::EmergencyStopResponse :init)))

(setf (get roboy_middleware_msgs::EmergencyStopRequest :md5sum-) "769d67555bcace7e21068dd8a08c7e86")
(setf (get roboy_middleware_msgs::EmergencyStopRequest :datatype-) "roboy_middleware_msgs/EmergencyStopRequest")
(setf (get roboy_middleware_msgs::EmergencyStopRequest :definition-)
      "bool all
int8[] id_list
---
ControllerState[] states


================================================================================
MSG: roboy_middleware_msgs/ControllerState
int32 id
int8 state

")

(setf (get roboy_middleware_msgs::EmergencyStopResponse :md5sum-) "769d67555bcace7e21068dd8a08c7e86")
(setf (get roboy_middleware_msgs::EmergencyStopResponse :datatype-) "roboy_middleware_msgs/EmergencyStopResponse")
(setf (get roboy_middleware_msgs::EmergencyStopResponse :definition-)
      "bool all
int8[] id_list
---
ControllerState[] states


================================================================================
MSG: roboy_middleware_msgs/ControllerState
int32 id
int8 state

")



(provide :roboy_middleware_msgs/EmergencyStop "769d67555bcace7e21068dd8a08c7e86")


