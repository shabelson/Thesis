; Auto-generated. Do not edit!


(cl:in-package abb_node-srv)


;//! \htmlinclude robot_SetDIO-request.msg.html

(cl:defclass <robot_SetDIO-request> (roslisp-msg-protocol:ros-message)
  ((DIO_num
    :reader DIO_num
    :initarg :DIO_num
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass robot_SetDIO-request (<robot_SetDIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_SetDIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_SetDIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abb_node-srv:<robot_SetDIO-request> is deprecated: use abb_node-srv:robot_SetDIO-request instead.")))

(cl:ensure-generic-function 'DIO_num-val :lambda-list '(m))
(cl:defmethod DIO_num-val ((m <robot_SetDIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:DIO_num-val is deprecated.  Use abb_node-srv:DIO_num instead.")
  (DIO_num m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <robot_SetDIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:state-val is deprecated.  Use abb_node-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_SetDIO-request>) ostream)
  "Serializes a message object of type '<robot_SetDIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'DIO_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_SetDIO-request>) istream)
  "Deserializes a message object of type '<robot_SetDIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DIO_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_SetDIO-request>)))
  "Returns string type for a service object of type '<robot_SetDIO-request>"
  "abb_node/robot_SetDIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_SetDIO-request)))
  "Returns string type for a service object of type 'robot_SetDIO-request"
  "abb_node/robot_SetDIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_SetDIO-request>)))
  "Returns md5sum for a message object of type '<robot_SetDIO-request>"
  "40fbf43c0c353da283e0c44b43ee102f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_SetDIO-request)))
  "Returns md5sum for a message object of type 'robot_SetDIO-request"
  "40fbf43c0c353da283e0c44b43ee102f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_SetDIO-request>)))
  "Returns full string definition for message of type '<robot_SetDIO-request>"
  (cl:format cl:nil "#Service to set digital outputs on/off~%int64 DIO_num  #digital IO number~%bool state  #1-on; 0-off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_SetDIO-request)))
  "Returns full string definition for message of type 'robot_SetDIO-request"
  (cl:format cl:nil "#Service to set digital outputs on/off~%int64 DIO_num  #digital IO number~%bool state  #1-on; 0-off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_SetDIO-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_SetDIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_SetDIO-request
    (cl:cons ':DIO_num (DIO_num msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude robot_SetDIO-response.msg.html

(cl:defclass <robot_SetDIO-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass robot_SetDIO-response (<robot_SetDIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_SetDIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_SetDIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abb_node-srv:<robot_SetDIO-response> is deprecated: use abb_node-srv:robot_SetDIO-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <robot_SetDIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:ret-val is deprecated.  Use abb_node-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <robot_SetDIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:msg-val is deprecated.  Use abb_node-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_SetDIO-response>) ostream)
  "Serializes a message object of type '<robot_SetDIO-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_SetDIO-response>) istream)
  "Deserializes a message object of type '<robot_SetDIO-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_SetDIO-response>)))
  "Returns string type for a service object of type '<robot_SetDIO-response>"
  "abb_node/robot_SetDIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_SetDIO-response)))
  "Returns string type for a service object of type 'robot_SetDIO-response"
  "abb_node/robot_SetDIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_SetDIO-response>)))
  "Returns md5sum for a message object of type '<robot_SetDIO-response>"
  "40fbf43c0c353da283e0c44b43ee102f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_SetDIO-response)))
  "Returns md5sum for a message object of type 'robot_SetDIO-response"
  "40fbf43c0c353da283e0c44b43ee102f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_SetDIO-response>)))
  "Returns full string definition for message of type '<robot_SetDIO-response>"
  (cl:format cl:nil "int64 ret~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_SetDIO-response)))
  "Returns full string definition for message of type 'robot_SetDIO-response"
  (cl:format cl:nil "int64 ret~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_SetDIO-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_SetDIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_SetDIO-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_SetDIO)))
  'robot_SetDIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_SetDIO)))
  'robot_SetDIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_SetDIO)))
  "Returns string type for a service object of type '<robot_SetDIO>"
  "abb_node/robot_SetDIO")