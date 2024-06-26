
(cl:in-package :asdf)

(defsystem "roboy_middleware_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ADCvalue" :depends-on ("_package_ADCvalue"))
    (:file "_package_ADCvalue" :depends-on ("_package"))
    (:file "ArmStatus" :depends-on ("_package_ArmStatus"))
    (:file "_package_ArmStatus" :depends-on ("_package"))
    (:file "ArucoPose" :depends-on ("_package_ArucoPose"))
    (:file "_package_ArucoPose" :depends-on ("_package"))
    (:file "BodyPart" :depends-on ("_package_BodyPart"))
    (:file "_package_BodyPart" :depends-on ("_package"))
    (:file "ControllerState" :depends-on ("_package_ControllerState"))
    (:file "_package_ControllerState" :depends-on ("_package"))
    (:file "DanceCommand" :depends-on ("_package_DanceCommand"))
    (:file "_package_DanceCommand" :depends-on ("_package"))
    (:file "DarkRoom" :depends-on ("_package_DarkRoom"))
    (:file "_package_DarkRoom" :depends-on ("_package"))
    (:file "DarkRoomOOTX" :depends-on ("_package_DarkRoomOOTX"))
    (:file "_package_DarkRoomOOTX" :depends-on ("_package"))
    (:file "DarkRoomSensor" :depends-on ("_package_DarkRoomSensor"))
    (:file "_package_DarkRoomSensor" :depends-on ("_package"))
    (:file "DarkRoomStatistics" :depends-on ("_package_DarkRoomStatistics"))
    (:file "_package_DarkRoomStatistics" :depends-on ("_package"))
    (:file "DarkRoomStatus" :depends-on ("_package_DarkRoomStatus"))
    (:file "_package_DarkRoomStatus" :depends-on ("_package"))
    (:file "Force" :depends-on ("_package_Force"))
    (:file "_package_Force" :depends-on ("_package"))
    (:file "HandCommand" :depends-on ("_package_HandCommand"))
    (:file "_package_HandCommand" :depends-on ("_package"))
    (:file "JointStatus" :depends-on ("_package_JointStatus"))
    (:file "_package_JointStatus" :depends-on ("_package"))
    (:file "LighthousePoseCorrection" :depends-on ("_package_LighthousePoseCorrection"))
    (:file "_package_LighthousePoseCorrection" :depends-on ("_package"))
    (:file "MagneticSensor" :depends-on ("_package_MagneticSensor"))
    (:file "_package_MagneticSensor" :depends-on ("_package"))
    (:file "MotorAngle" :depends-on ("_package_MotorAngle"))
    (:file "_package_MotorAngle" :depends-on ("_package"))
    (:file "MotorCommand" :depends-on ("_package_MotorCommand"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "MotorConfig" :depends-on ("_package_MotorConfig"))
    (:file "_package_MotorConfig" :depends-on ("_package"))
    (:file "MotorInfo" :depends-on ("_package_MotorInfo"))
    (:file "_package_MotorInfo" :depends-on ("_package"))
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "Neopixel" :depends-on ("_package_Neopixel"))
    (:file "_package_Neopixel" :depends-on ("_package"))
    (:file "RoboyState" :depends-on ("_package_RoboyState"))
    (:file "_package_RoboyState" :depends-on ("_package"))
    (:file "SystemStatus" :depends-on ("_package_SystemStatus"))
    (:file "_package_SystemStatus" :depends-on ("_package"))
  ))