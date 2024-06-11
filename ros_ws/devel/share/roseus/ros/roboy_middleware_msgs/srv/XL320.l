;; Auto-generated. Do not edit!


(when (boundp 'roboy_middleware_msgs::XL320)
  (if (not (find-package "ROBOY_MIDDLEWARE_MSGS"))
    (make-package "ROBOY_MIDDLEWARE_MSGS"))
  (shadow 'XL320 (find-package "ROBOY_MIDDLEWARE_MSGS")))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::XL320")
  (make-package "ROBOY_MIDDLEWARE_MSGS::XL320"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::XL320REQUEST")
  (make-package "ROBOY_MIDDLEWARE_MSGS::XL320REQUEST"))
(unless (find-package "ROBOY_MIDDLEWARE_MSGS::XL320RESPONSE")
  (make-package "ROBOY_MIDDLEWARE_MSGS::XL320RESPONSE"))

(in-package "ROS")





(defclass roboy_middleware_msgs::XL320Request
  :super ros::object
  :slots (_type _motor _address _value ))

(defmethod roboy_middleware_msgs::XL320Request
  (:init
   (&key
    ((:type __type) nil)
    ((:motor __motor) 0)
    ((:address __address) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _type __type)
   (setq _motor (round __motor))
   (setq _address (round __address))
   (setq _value (round __value))
   self)
  (:type
   (&optional (__type :null))
   (if (not (eq __type :null)) (setq _type __type)) _type)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _type
    1
    ;; uint8 _motor
    1
    ;; uint8 _address
    1
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _type
       (if _type (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _motor
       (write-byte _motor s)
     ;; uint8 _address
       (write-byte _address s)
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _type
     (setq _type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _motor
     (setq _motor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass roboy_middleware_msgs::XL320Response
  :super ros::object
  :slots (_value ))

(defmethod roboy_middleware_msgs::XL320Response
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass roboy_middleware_msgs::XL320
  :super ros::object
  :slots ())

(setf (get roboy_middleware_msgs::XL320 :md5sum-) "2df206e3bbdc218ed0e86d48777a9fbf")
(setf (get roboy_middleware_msgs::XL320 :datatype-) "roboy_middleware_msgs/XL320")
(setf (get roboy_middleware_msgs::XL320 :request) roboy_middleware_msgs::XL320Request)
(setf (get roboy_middleware_msgs::XL320 :response) roboy_middleware_msgs::XL320Response)

(defmethod roboy_middleware_msgs::XL320Request
  (:response () (instance roboy_middleware_msgs::XL320Response :init)))

(setf (get roboy_middleware_msgs::XL320Request :md5sum-) "2df206e3bbdc218ed0e86d48777a9fbf")
(setf (get roboy_middleware_msgs::XL320Request :datatype-) "roboy_middleware_msgs/XL320Request")
(setf (get roboy_middleware_msgs::XL320Request :definition-)
      "# 0: read 1:write
bool type
uint8 motor
# EEPROM Area
# MODEL_NUMBER             = 0, /**< Model number [R] (default=350) */
# VERSION                  = 2, /**< Information on the version of firmware [R] */
# id                       = 3, /**< id of Dynamixel [RW] (default=1 ; min=0 ; max=252) */
# BAUD_RATE                = 4, /**< Baud Rate of Dynamixel [RW] (default=3 ; min=0 ; max=3) 0: 9600, 1:57600, 2:115200, 3:1Mbps*/
# RETURN_DELAY_TIME        = 5, /**< Return Delay Time [RW] (default=250 ; min=0 ; max=254) */
# CW_ANGLE_LIMIT           = 6, /**< clockwise Angle Limit [RW] (default=0 ; min=0 ; max=1023) */
# CCW_ANGLE_LIMIT          = 8, /**< counterclockwise Angle Limit [RW] (default=1023 ; min=0 ; max=1023) */
# CONTROL_MODE             = 11, /**< Control Mode [RW] (default=2 ; min=1 ; max=2) */
# LIMIT_TEMPERATURE        = 12, /**< Internal Limit Temperature [RW] (default=65 ; min=0 ; max=150) */
# LOWER_LIMIT_VOLTAGE      = 13, /**< Lowest Limit Voltage [RW] (default=60 ; min=50 ; max=250) */
# UPPPER_LIMIT_VOLTAGE     = 14, /**< Upper Limit Voltage [RW] (default=90 ; min=50 ; max=250) */
# MAX_TORQUE               = 15, /**< Lowest byte of Max. Torque [RW] (default=1023 ; min=0 ; max=1023) */
# RETURN_LEVEL             = 17, /**< Return Level [RW] (default=2 ; min=0 ; max=2) */
# ALARM_SHUTDOWN           = 18, /**< Shutdown for Alarm [RW] (default=3 ; min=0 ; max=7) */
# RAM Area
# TORQUE_ENABLE            = 24, /**< Torque On/Off [RW] (default=0 ; min=0 ; max=1) */
# LED                      = 25, /**< LED On/Off [RW] (default=0 ; min=0 ; max=7) */
# D_GAIN    				 = 27, /**< D Gain [RW] (default=0 ; min=0 ; max=254) */
# I_GAIN      			 = 28, /**< I Gain [RW] (default=0 ; min=0 ; max=254) */
# P_GAIN    				 = 29, /**< P Gain [RW] (default=32 ; min=0 ; max=254) */
# GOAL_POSITION            = 30, /**< Goal Position [RW] (min=0 ; max=1023) */
# GOAL_SPEED               = 32, /**< Goal Speed [RW] (min=0 ; max=2047) */
# GOAL_TORQUE 		     = 35, /**< Goal Torque [RW] (min=0 ; max=1023) */
# PRESENT_POSITION         = 37, /**< Current Position [R] */
# PRESENT_SPEED            = 39, /**< Current Speed [R] */
# PRESENT_LOAD             = 41, /**< Current Load [R] */
# PRESENT_VOLTAGE          = 45, /**< Current Voltage [R] */
# PRESENT_TEMPERATURE      = 46, /**< Present temperature [R] */
# REGISTERED_INSTRUCTION   = 47, /**< Registered Instruction [R] (default=0) */
# MOVING                   = 49, /**< Moving [R] (default=0) */
# HARDWARE_ERROR           = 50, /**< Hardware error status [R] (default=0) */
# PUNCH                    = 51  /**< Punch [RW] (default=32 ; min=0 ; max=1023) */
uint8 address
int16 value
---
int16 value
")

(setf (get roboy_middleware_msgs::XL320Response :md5sum-) "2df206e3bbdc218ed0e86d48777a9fbf")
(setf (get roboy_middleware_msgs::XL320Response :datatype-) "roboy_middleware_msgs/XL320Response")
(setf (get roboy_middleware_msgs::XL320Response :definition-)
      "# 0: read 1:write
bool type
uint8 motor
# EEPROM Area
# MODEL_NUMBER             = 0, /**< Model number [R] (default=350) */
# VERSION                  = 2, /**< Information on the version of firmware [R] */
# id                       = 3, /**< id of Dynamixel [RW] (default=1 ; min=0 ; max=252) */
# BAUD_RATE                = 4, /**< Baud Rate of Dynamixel [RW] (default=3 ; min=0 ; max=3) 0: 9600, 1:57600, 2:115200, 3:1Mbps*/
# RETURN_DELAY_TIME        = 5, /**< Return Delay Time [RW] (default=250 ; min=0 ; max=254) */
# CW_ANGLE_LIMIT           = 6, /**< clockwise Angle Limit [RW] (default=0 ; min=0 ; max=1023) */
# CCW_ANGLE_LIMIT          = 8, /**< counterclockwise Angle Limit [RW] (default=1023 ; min=0 ; max=1023) */
# CONTROL_MODE             = 11, /**< Control Mode [RW] (default=2 ; min=1 ; max=2) */
# LIMIT_TEMPERATURE        = 12, /**< Internal Limit Temperature [RW] (default=65 ; min=0 ; max=150) */
# LOWER_LIMIT_VOLTAGE      = 13, /**< Lowest Limit Voltage [RW] (default=60 ; min=50 ; max=250) */
# UPPPER_LIMIT_VOLTAGE     = 14, /**< Upper Limit Voltage [RW] (default=90 ; min=50 ; max=250) */
# MAX_TORQUE               = 15, /**< Lowest byte of Max. Torque [RW] (default=1023 ; min=0 ; max=1023) */
# RETURN_LEVEL             = 17, /**< Return Level [RW] (default=2 ; min=0 ; max=2) */
# ALARM_SHUTDOWN           = 18, /**< Shutdown for Alarm [RW] (default=3 ; min=0 ; max=7) */
# RAM Area
# TORQUE_ENABLE            = 24, /**< Torque On/Off [RW] (default=0 ; min=0 ; max=1) */
# LED                      = 25, /**< LED On/Off [RW] (default=0 ; min=0 ; max=7) */
# D_GAIN    				 = 27, /**< D Gain [RW] (default=0 ; min=0 ; max=254) */
# I_GAIN      			 = 28, /**< I Gain [RW] (default=0 ; min=0 ; max=254) */
# P_GAIN    				 = 29, /**< P Gain [RW] (default=32 ; min=0 ; max=254) */
# GOAL_POSITION            = 30, /**< Goal Position [RW] (min=0 ; max=1023) */
# GOAL_SPEED               = 32, /**< Goal Speed [RW] (min=0 ; max=2047) */
# GOAL_TORQUE 		     = 35, /**< Goal Torque [RW] (min=0 ; max=1023) */
# PRESENT_POSITION         = 37, /**< Current Position [R] */
# PRESENT_SPEED            = 39, /**< Current Speed [R] */
# PRESENT_LOAD             = 41, /**< Current Load [R] */
# PRESENT_VOLTAGE          = 45, /**< Current Voltage [R] */
# PRESENT_TEMPERATURE      = 46, /**< Present temperature [R] */
# REGISTERED_INSTRUCTION   = 47, /**< Registered Instruction [R] (default=0) */
# MOVING                   = 49, /**< Moving [R] (default=0) */
# HARDWARE_ERROR           = 50, /**< Hardware error status [R] (default=0) */
# PUNCH                    = 51  /**< Punch [RW] (default=32 ; min=0 ; max=1023) */
uint8 address
int16 value
---
int16 value
")



(provide :roboy_middleware_msgs/XL320 "2df206e3bbdc218ed0e86d48777a9fbf")


