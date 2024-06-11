;; Auto-generated. Do not edit!


(when (boundp 'roboy_cognition_msgs::Payment)
  (if (not (find-package "ROBOY_COGNITION_MSGS"))
    (make-package "ROBOY_COGNITION_MSGS"))
  (shadow 'Payment (find-package "ROBOY_COGNITION_MSGS")))
(unless (find-package "ROBOY_COGNITION_MSGS::PAYMENT")
  (make-package "ROBOY_COGNITION_MSGS::PAYMENT"))
(unless (find-package "ROBOY_COGNITION_MSGS::PAYMENTREQUEST")
  (make-package "ROBOY_COGNITION_MSGS::PAYMENTREQUEST"))
(unless (find-package "ROBOY_COGNITION_MSGS::PAYMENTRESPONSE")
  (make-package "ROBOY_COGNITION_MSGS::PAYMENTRESPONSE"))

(in-package "ROS")





(defclass roboy_cognition_msgs::PaymentRequest
  :super ros::object
  :slots (_price _payment_option _flavors _scoops ))

(defmethod roboy_cognition_msgs::PaymentRequest
  (:init
   (&key
    ((:price __price) 0)
    ((:payment_option __payment_option) 0)
    ((:flavors __flavors) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:scoops __scoops) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _price (round __price))
   (setq _payment_option (round __payment_option))
   (setq _flavors __flavors)
   (setq _scoops __scoops)
   self)
  (:price
   (&optional __price)
   (if __price (setq _price __price)) _price)
  (:payment_option
   (&optional __payment_option)
   (if __payment_option (setq _payment_option __payment_option)) _payment_option)
  (:flavors
   (&optional __flavors)
   (if __flavors (setq _flavors __flavors)) _flavors)
  (:scoops
   (&optional __scoops)
   (if __scoops (setq _scoops __scoops)) _scoops)
  (:serialization-length
   ()
   (+
    ;; uint16 _price
    2
    ;; uint8 _payment_option
    1
    ;; string[] _flavors
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _flavors)) 4
    ;; int32[] _scoops
    (* 4    (length _scoops)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _price
       (write-word _price s)
     ;; uint8 _payment_option
       (write-byte _payment_option s)
     ;; string[] _flavors
     (write-long (length _flavors) s)
     (dolist (elem _flavors)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _scoops
     (write-long (length _scoops) s)
     (dotimes (i (length _scoops))
       (write-long (elt _scoops i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _price
     (setq _price (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _payment_option
     (setq _payment_option (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _flavors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flavors (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _flavors i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _scoops
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scoops (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _scoops i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::PaymentResponse
  :super ros::object
  :slots (_amount_paid _customer_name _error_message ))

(defmethod roboy_cognition_msgs::PaymentResponse
  (:init
   (&key
    ((:amount_paid __amount_paid) 0)
    ((:customer_name __customer_name) "")
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _amount_paid (round __amount_paid))
   (setq _customer_name (string __customer_name))
   (setq _error_message (string __error_message))
   self)
  (:amount_paid
   (&optional __amount_paid)
   (if __amount_paid (setq _amount_paid __amount_paid)) _amount_paid)
  (:customer_name
   (&optional __customer_name)
   (if __customer_name (setq _customer_name __customer_name)) _customer_name)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; uint16 _amount_paid
    2
    ;; string _customer_name
    4 (length _customer_name)
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _amount_paid
       (write-word _amount_paid s)
     ;; string _customer_name
       (write-long (length _customer_name) s) (princ _customer_name s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _amount_paid
     (setq _amount_paid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _customer_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _customer_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboy_cognition_msgs::Payment
  :super ros::object
  :slots ())

(setf (get roboy_cognition_msgs::Payment :md5sum-) "18ef32c43804b67a38f74684445bd22f")
(setf (get roboy_cognition_msgs::Payment :datatype-) "roboy_cognition_msgs/Payment")
(setf (get roboy_cognition_msgs::Payment :request) roboy_cognition_msgs::PaymentRequest)
(setf (get roboy_cognition_msgs::Payment :response) roboy_cognition_msgs::PaymentResponse)

(defmethod roboy_cognition_msgs::PaymentRequest
  (:response () (instance roboy_cognition_msgs::PaymentResponse :init)))

(setf (get roboy_cognition_msgs::PaymentRequest :md5sum-) "18ef32c43804b67a38f74684445bd22f")
(setf (get roboy_cognition_msgs::PaymentRequest :datatype-) "roboy_cognition_msgs/PaymentRequest")
(setf (get roboy_cognition_msgs::PaymentRequest :definition-)
      "uint16 price
uint8 payment_option
string[] flavors
int32[] scoops
---
uint16 amount_paid
string customer_name
string error_message

")

(setf (get roboy_cognition_msgs::PaymentResponse :md5sum-) "18ef32c43804b67a38f74684445bd22f")
(setf (get roboy_cognition_msgs::PaymentResponse :datatype-) "roboy_cognition_msgs/PaymentResponse")
(setf (get roboy_cognition_msgs::PaymentResponse :definition-)
      "uint16 price
uint8 payment_option
string[] flavors
int32[] scoops
---
uint16 amount_paid
string customer_name
string error_message

")



(provide :roboy_cognition_msgs/Payment "18ef32c43804b67a38f74684445bd22f")


