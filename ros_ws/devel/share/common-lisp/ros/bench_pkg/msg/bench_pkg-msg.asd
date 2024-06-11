
(cl:in-package :asdf)

(defsystem "bench_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointAngleData" :depends-on ("_package_JointAngleData"))
    (:file "_package_JointAngleData" :depends-on ("_package"))
  ))