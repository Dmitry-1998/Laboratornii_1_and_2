; Auto-generated. Do not edit!


(cl:in-package my_service-srv)


;//! \htmlinclude AddInts-request.msg.html

(cl:defclass <AddInts-request> (roslisp-msg-protocol:ros-message)
  ((rub
    :reader rub
    :initarg :rub
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddInts-request (<AddInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<AddInts-request> is deprecated: use my_service-srv:AddInts-request instead.")))

(cl:ensure-generic-function 'rub-val :lambda-list '(m))
(cl:defmethod rub-val ((m <AddInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:rub-val is deprecated.  Use my_service-srv:rub instead.")
  (rub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInts-request>) ostream)
  "Serializes a message object of type '<AddInts-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rub))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInts-request>) istream)
  "Deserializes a message object of type '<AddInts-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rub) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInts-request>)))
  "Returns string type for a service object of type '<AddInts-request>"
  "my_service/AddIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts-request)))
  "Returns string type for a service object of type 'AddInts-request"
  "my_service/AddIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInts-request>)))
  "Returns md5sum for a message object of type '<AddInts-request>"
  "3c72cd28ddbd098223277d9fa06286ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInts-request)))
  "Returns md5sum for a message object of type 'AddInts-request"
  "3c72cd28ddbd098223277d9fa06286ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInts-request>)))
  "Returns full string definition for message of type '<AddInts-request>"
  (cl:format cl:nil "float32 rub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInts-request)))
  "Returns full string definition for message of type 'AddInts-request"
  (cl:format cl:nil "float32 rub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInts-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInts-request
    (cl:cons ':rub (rub msg))
))
;//! \htmlinclude AddInts-response.msg.html

(cl:defclass <AddInts-response> (roslisp-msg-protocol:ros-message)
  ((usd
    :reader usd
    :initarg :usd
    :type cl:float
    :initform 0.0)
   (eur
    :reader eur
    :initarg :eur
    :type cl:float
    :initform 0.0)
   (gbp
    :reader gbp
    :initarg :gbp
    :type cl:float
    :initform 0.0)
   (ugx
    :reader ugx
    :initarg :ugx
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddInts-response (<AddInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_service-srv:<AddInts-response> is deprecated: use my_service-srv:AddInts-response instead.")))

(cl:ensure-generic-function 'usd-val :lambda-list '(m))
(cl:defmethod usd-val ((m <AddInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:usd-val is deprecated.  Use my_service-srv:usd instead.")
  (usd m))

(cl:ensure-generic-function 'eur-val :lambda-list '(m))
(cl:defmethod eur-val ((m <AddInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:eur-val is deprecated.  Use my_service-srv:eur instead.")
  (eur m))

(cl:ensure-generic-function 'gbp-val :lambda-list '(m))
(cl:defmethod gbp-val ((m <AddInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:gbp-val is deprecated.  Use my_service-srv:gbp instead.")
  (gbp m))

(cl:ensure-generic-function 'ugx-val :lambda-list '(m))
(cl:defmethod ugx-val ((m <AddInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_service-srv:ugx-val is deprecated.  Use my_service-srv:ugx instead.")
  (ugx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddInts-response>) ostream)
  "Serializes a message object of type '<AddInts-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'usd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eur))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gbp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ugx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddInts-response>) istream)
  "Deserializes a message object of type '<AddInts-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'usd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eur) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gbp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ugx) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddInts-response>)))
  "Returns string type for a service object of type '<AddInts-response>"
  "my_service/AddIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts-response)))
  "Returns string type for a service object of type 'AddInts-response"
  "my_service/AddIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddInts-response>)))
  "Returns md5sum for a message object of type '<AddInts-response>"
  "3c72cd28ddbd098223277d9fa06286ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddInts-response)))
  "Returns md5sum for a message object of type 'AddInts-response"
  "3c72cd28ddbd098223277d9fa06286ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddInts-response>)))
  "Returns full string definition for message of type '<AddInts-response>"
  (cl:format cl:nil "float32 usd~%float32 eur~%float32 gbp~%float32 ugx~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddInts-response)))
  "Returns full string definition for message of type 'AddInts-response"
  (cl:format cl:nil "float32 usd~%float32 eur~%float32 gbp~%float32 ugx~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddInts-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddInts-response
    (cl:cons ':usd (usd msg))
    (cl:cons ':eur (eur msg))
    (cl:cons ':gbp (gbp msg))
    (cl:cons ':ugx (ugx msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddInts)))
  'AddInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddInts)))
  'AddInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddInts)))
  "Returns string type for a service object of type '<AddInts>"
  "my_service/AddInts")