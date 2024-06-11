;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::IceCream)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'IceCream (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::ICECREAM")
  (make-package "ROBOY_COGNITION_MSGS::ICECREAM"))

(in-package "ROS")
;;//! \htmlinclude IceCream.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboy_cognition_msgs::IceCream
  :super ros::object
  :slots (_flavor _pose _point_cloud ))

(defmethod roboy_cognition_msgs::IceCream
  (:init
   (&key
    ((:flavor __flavor) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:point_cloud __point_cloud) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _flavor (string __flavor))
   (setq _pose __pose)
   (setq _point_cloud __point_cloud)
   self)
  (:flavor
   (&optional __flavor)
   (if __flavor (setq _flavor __flavor)) _flavor)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:point_cloud
   (&rest __point_cloud)
   (if (keywordp (car __point_cloud))
       (send* _point_cloud __point_cloud)
     (progn
       (if __point_cloud (setq _point_cloud (car __point_cloud)))
       _point_cloud)))
  (:serialization-length
   ()
   (+
    ;; string _flavor
    4 (length _flavor)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; std_msgs/Float32MultiArray _point_cloud
    (send _point_cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _flavor
       (write-long (length _flavor) s) (princ _flavor s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; std_msgs/Float32MultiArray _point_cloud
       (send _point_cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _flavor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flavor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; std_msgs/Float32MultiArray _point_cloud
     (send _point_cloud :deserialize buf ptr-) (incf ptr- (send _point_cloud :serialization-length))
   ;;
   self)
  )

(setf (get roboy_cognition_msgs::IceCream :md5sum-) "f78ad258d37a364dba8db47ff14117ad")
(setf (get roboy_cognition_msgs::IceCream :datatype-) "roboy_cognition_msgs/IceCream")
(setf (get roboy_cognition_msgs::IceCream :definition-)
      "string flavor
geometry_msgs/Pose pose
std_msgs/Float32MultiArray point_cloud
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :roboy_cognition_msgs/IceCream "f78ad258d37a364dba8db47ff14117ad")


