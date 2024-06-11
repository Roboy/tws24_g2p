;; Auto-generated. Do not edit!


(when (boundp 'roboy_control_msgs::ListItems)
  (if (not (find-package "ROBOY_CONTROL_MSGS"))
    (make-package "ROBOY_CONTROL_MSGS"))
  (shadow 'ListItems (find-package "ROBOY_CONTROL_MSGS")))
(unless (find-package "ROBOY_CONTROL_MSGS::LISTITEMS")
  (make-package "ROBOY_CONTROL_MSGS::LISTITEMS"))
(unless (find-package "ROBOY_CONTROL_MSGS::LISTITEMSREQUEST")
  (make-package "ROBOY_CONTROL_MSGS::LISTITEMSREQUEST"))
(unless (find-package "ROBOY_CONTROL_MSGS::LISTITEMSRESPONSE")
  (make-package "ROBOY_CONTROL_MSGS::LISTITEMSRESPONSE"))

(in-package "ROS")





(defclass roboy_control_msgs::ListItemsRequest
  :super ros::object
  :slots (_name ))

(defmethod roboy_control_msgs::ListItemsRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_control_msgs::ListItemsResponse
  :super ros::object
  :slots (_items ))

(defmethod roboy_control_msgs::ListItemsResponse
  (:init
   (&key
    ((:items __items) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _items __items)
   self)
  (:items
   (&optional __items)
   (if __items (setq _items __items)) _items)
  (:serialization-length
   ()
   (+
    ;; string[] _items
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _items)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _items i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass roboy_control_msgs::ListItems
  :super ros::object
  :slots ())

(setf (get roboy_control_msgs::ListItems :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_control_msgs::ListItems :datatype-) "roboy_control_msgs/ListItems")
(setf (get roboy_control_msgs::ListItems :request) roboy_control_msgs::ListItemsRequest)
(setf (get roboy_control_msgs::ListItems :response) roboy_control_msgs::ListItemsResponse)

(defmethod roboy_control_msgs::ListItemsRequest
  (:response () (instance roboy_control_msgs::ListItemsResponse :init)))

(setf (get roboy_control_msgs::ListItemsRequest :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_control_msgs::ListItemsRequest :datatype-) "roboy_control_msgs/ListItemsRequest")
(setf (get roboy_control_msgs::ListItemsRequest :definition-)
      "string name # e.g. folder path on FPGA
---
string[] items
")

(setf (get roboy_control_msgs::ListItemsResponse :md5sum-) "f59feb99c2158f8692d1c10f10534d0b")
(setf (get roboy_control_msgs::ListItemsResponse :datatype-) "roboy_control_msgs/ListItemsResponse")
(setf (get roboy_control_msgs::ListItemsResponse :definition-)
      "string name # e.g. folder path on FPGA
---
string[] items
")



(provide :roboy_control_msgs/ListItems "f59feb99c2158f8692d1c10f10534d0b")


