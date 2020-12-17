;; Auto-generated. Do not edit!


(when (boundp 'my_service::AddInts)
  (if (not (find-package "MY_SERVICE"))
    (make-package "MY_SERVICE"))
  (shadow 'AddInts (find-package "MY_SERVICE")))
(unless (find-package "MY_SERVICE::ADDINTS")
  (make-package "MY_SERVICE::ADDINTS"))
(unless (find-package "MY_SERVICE::ADDINTSREQUEST")
  (make-package "MY_SERVICE::ADDINTSREQUEST"))
(unless (find-package "MY_SERVICE::ADDINTSRESPONSE")
  (make-package "MY_SERVICE::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass my_service::AddIntsRequest
  :super ros::object
  :slots (_rub ))

(defmethod my_service::AddIntsRequest
  (:init
   (&key
    ((:rub __rub) 0.0)
    )
   (send-super :init)
   (setq _rub (float __rub))
   self)
  (:rub
   (&optional __rub)
   (if __rub (setq _rub __rub)) _rub)
  (:serialization-length
   ()
   (+
    ;; float32 _rub
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rub
       (sys::poke _rub (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rub
     (setq _rub (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_service::AddIntsResponse
  :super ros::object
  :slots (_usd _eur _gbp _ugx ))

(defmethod my_service::AddIntsResponse
  (:init
   (&key
    ((:usd __usd) 0.0)
    ((:eur __eur) 0.0)
    ((:gbp __gbp) 0.0)
    ((:ugx __ugx) 0.0)
    )
   (send-super :init)
   (setq _usd (float __usd))
   (setq _eur (float __eur))
   (setq _gbp (float __gbp))
   (setq _ugx (float __ugx))
   self)
  (:usd
   (&optional __usd)
   (if __usd (setq _usd __usd)) _usd)
  (:eur
   (&optional __eur)
   (if __eur (setq _eur __eur)) _eur)
  (:gbp
   (&optional __gbp)
   (if __gbp (setq _gbp __gbp)) _gbp)
  (:ugx
   (&optional __ugx)
   (if __ugx (setq _ugx __ugx)) _ugx)
  (:serialization-length
   ()
   (+
    ;; float32 _usd
    4
    ;; float32 _eur
    4
    ;; float32 _gbp
    4
    ;; float32 _ugx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _usd
       (sys::poke _usd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _eur
       (sys::poke _eur (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gbp
       (sys::poke _gbp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ugx
       (sys::poke _ugx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _usd
     (setq _usd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _eur
     (setq _eur (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gbp
     (setq _gbp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ugx
     (setq _ugx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_service::AddInts
  :super ros::object
  :slots ())

(setf (get my_service::AddInts :md5sum-) "3c72cd28ddbd098223277d9fa06286ae")
(setf (get my_service::AddInts :datatype-) "my_service/AddInts")
(setf (get my_service::AddInts :request) my_service::AddIntsRequest)
(setf (get my_service::AddInts :response) my_service::AddIntsResponse)

(defmethod my_service::AddIntsRequest
  (:response () (instance my_service::AddIntsResponse :init)))

(setf (get my_service::AddIntsRequest :md5sum-) "3c72cd28ddbd098223277d9fa06286ae")
(setf (get my_service::AddIntsRequest :datatype-) "my_service/AddIntsRequest")
(setf (get my_service::AddIntsRequest :definition-)
      "float32 rub
---
float32 usd
float32 eur
float32 gbp
float32 ugx

")

(setf (get my_service::AddIntsResponse :md5sum-) "3c72cd28ddbd098223277d9fa06286ae")
(setf (get my_service::AddIntsResponse :datatype-) "my_service/AddIntsResponse")
(setf (get my_service::AddIntsResponse :definition-)
      "float32 rub
---
float32 usd
float32 eur
float32 gbp
float32 ugx

")



(provide :my_service/AddInts "3c72cd28ddbd098223277d9fa06286ae")


