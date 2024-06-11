
(cl:in-package :asdf)

(defsystem "roboy_simulation_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :roboy_simulation_msgs-msg
)
  :components ((:file "_package")
    (:file "Energies" :depends-on ("_package_Energies"))
    (:file "_package_Energies" :depends-on ("_package"))
    (:file "GymGoal" :depends-on ("_package_GymGoal"))
    (:file "_package_GymGoal" :depends-on ("_package"))
    (:file "GymReset" :depends-on ("_package_GymReset"))
    (:file "_package_GymReset" :depends-on ("_package"))
    (:file "GymStep" :depends-on ("_package_GymStep"))
    (:file "_package_GymStep" :depends-on ("_package"))
    (:file "UpdateBodyInformation" :depends-on ("_package_UpdateBodyInformation"))
    (:file "_package_UpdateBodyInformation" :depends-on ("_package"))
    (:file "UpdateControllerParameters" :depends-on ("_package_UpdateControllerParameters"))
    (:file "_package_UpdateControllerParameters" :depends-on ("_package"))
  ))