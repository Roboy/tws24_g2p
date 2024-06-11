;; Auto-generated. Do not edit!


(when (boundp 'roboy_simulation_msgs::UpdateControllerParameters)
  (if (not (find-package "ROBOY_SIMULATION_MSGS"))
    (make-package "ROBOY_SIMULATION_MSGS"))
  (shadow 'UpdateControllerParameters (find-package "ROBOY_SIMULATION_MSGS")))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERS")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERS"))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERSREQUEST")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERSREQUEST"))
(unless (find-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERSRESPONSE")
  (make-package "ROBOY_SIMULATION_MSGS::UPDATECONTROLLERPARAMETERSRESPONSE"))

(in-package "ROS")





(defclass roboy_simulation_msgs::UpdateControllerParametersRequest
  :super ros::object
  :slots (_params ))

(defmethod roboy_simulation_msgs::UpdateControllerParametersRequest
  (:init
   (&key
    ((:params __params) (instance roboy_simulation_msgs::ControllerParameters :init))
    )
   (send-super :init)
   (setq _params __params)
   self)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; roboy_simulation_msgs/ControllerParameters _params
    (send _params :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roboy_simulation_msgs/ControllerParameters _params
       (send _params :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roboy_simulation_msgs/ControllerParameters _params
     (send _params :deserialize buf ptr-) (incf ptr- (send _params :serialization-length))
   ;;
   self)
  )

(defclass roboy_simulation_msgs::UpdateControllerParametersResponse
  :super ros::object
  :slots ())

(defmethod roboy_simulation_msgs::UpdateControllerParametersResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass roboy_simulation_msgs::UpdateControllerParameters
  :super ros::object
  :slots ())

(setf (get roboy_simulation_msgs::UpdateControllerParameters :md5sum-) "b756c0585632134411ae7db8d90667b1")
(setf (get roboy_simulation_msgs::UpdateControllerParameters :datatype-) "roboy_simulation_msgs/UpdateControllerParameters")
(setf (get roboy_simulation_msgs::UpdateControllerParameters :request) roboy_simulation_msgs::UpdateControllerParametersRequest)
(setf (get roboy_simulation_msgs::UpdateControllerParameters :response) roboy_simulation_msgs::UpdateControllerParametersResponse)

(defmethod roboy_simulation_msgs::UpdateControllerParametersRequest
  (:response () (instance roboy_simulation_msgs::UpdateControllerParametersResponse :init)))

(setf (get roboy_simulation_msgs::UpdateControllerParametersRequest :md5sum-) "b756c0585632134411ae7db8d90667b1")
(setf (get roboy_simulation_msgs::UpdateControllerParametersRequest :datatype-) "roboy_simulation_msgs/UpdateControllerParametersRequest")
(setf (get roboy_simulation_msgs::UpdateControllerParametersRequest :definition-)
      "roboy_simulation_msgs/ControllerParameters params

================================================================================
MSG: roboy_simulation_msgs/ControllerParameters
int32 roboy_id
float64 f_contact
float64 d_lift
float64 d_prep
float64 f_max
float64 psi_heading
float64 omega_heading
float64 v_forward
float64 v_com
float64 k_h
float64[] k_p_theta_left
float64[] k_p_theta_right
float64[] k_d_theta_left
float64[] k_d_theta_right
float64[] k_p_phi
float64[] k_d_phi
float64 k_v
float64 k_p
float64 k_q
float64 k_omega
float64 k_m_fplus
float64 c_hip_lift
float64 c_knee_lift
float64 c_stance_lift
float64 c_swing_prep
float64[] theta_groin_0
float64[] phi_groin_0
float64 theta_trunk_0
float64 phi_trunk_0
float64[] theta_knee
float64[] theta_ankle
float64[] d_s
float64[] d_c
float64[] v_s
float64[] v_c
float32 sim_time
---

")

(setf (get roboy_simulation_msgs::UpdateControllerParametersResponse :md5sum-) "b756c0585632134411ae7db8d90667b1")
(setf (get roboy_simulation_msgs::UpdateControllerParametersResponse :datatype-) "roboy_simulation_msgs/UpdateControllerParametersResponse")
(setf (get roboy_simulation_msgs::UpdateControllerParametersResponse :definition-)
      "roboy_simulation_msgs/ControllerParameters params

================================================================================
MSG: roboy_simulation_msgs/ControllerParameters
int32 roboy_id
float64 f_contact
float64 d_lift
float64 d_prep
float64 f_max
float64 psi_heading
float64 omega_heading
float64 v_forward
float64 v_com
float64 k_h
float64[] k_p_theta_left
float64[] k_p_theta_right
float64[] k_d_theta_left
float64[] k_d_theta_right
float64[] k_p_phi
float64[] k_d_phi
float64 k_v
float64 k_p
float64 k_q
float64 k_omega
float64 k_m_fplus
float64 c_hip_lift
float64 c_knee_lift
float64 c_stance_lift
float64 c_swing_prep
float64[] theta_groin_0
float64[] phi_groin_0
float64 theta_trunk_0
float64 phi_trunk_0
float64[] theta_knee
float64[] theta_ankle
float64[] d_s
float64[] d_c
float64[] v_s
float64[] v_c
float32 sim_time
---

")



(provide :roboy_simulation_msgs/UpdateControllerParameters "b756c0585632134411ae7db8d90667b1")


