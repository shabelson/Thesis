; Auto-generated. Do not edit!


(cl:in-package abb_node-srv)


;//! \htmlinclude robot_Ping-request.msg.html

(cl:defclass <robot_Ping-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass robot_Ping-request (<robot_Ping-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_Ping-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_Ping-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abb_node-srv:<robot_Ping-request> is deprecated: use abb_node-srv:robot_Ping-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_Ping-request>) ostream)
  "Serializes a message object of type '<robot_Ping-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_Ping-request>) istream)
  "Deserializes a message object of type '<robot_Ping-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_Ping-request>)))
  "Returns string type for a service object of type '<robot_Ping-request>"
  "abb_node/robot_PingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_Ping-request)))
  "Returns string type for a service object of type 'robot_Ping-request"
  "abb_node/robot_PingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_Ping-request>)))
  "Returns md5sum for a message object of type '<robot_Ping-request>"
  "1e32786be6359fbbb6259aee4f579d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_Ping-request)))
  "Returns md5sum for a message object of type 'robot_Ping-request"
  "1e32786be6359fbbb6259aee4f579d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_Ping-request>)))
  "Returns full string definition for message of type '<robot_Ping-request>"
  (cl:format cl:nil "#Service to Ping the robot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_Ping-request)))
  "Returns full string definition for message of type 'robot_Ping-request"
  (cl:format cl:nil "#Service to Ping the robot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_Ping-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_Ping-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_Ping-request
))
;//! \htmlinclude robot_Ping-response.msg.html

(cl:defclass <robot_Ping-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass robot_Ping-response (<robot_Ping-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_Ping-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_Ping-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name abb_node-srv:<robot_Ping-response> is deprecated: use abb_node-srv:robot_Ping-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <robot_Ping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:ret-val is deprecated.  Use abb_node-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <robot_Ping-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader abb_node-srv:msg-val is deprecated.  Use abb_node-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_Ping-response>) ostream)
  "Serializes a message object of type '<robot_Ping-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_Ping-response>) istream)
  "Deserializes a message object of type '<robot_Ping-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_Ping-response>)))
  "Returns string type for a service object of type '<robot_Ping-response>"
  "abb_node/robot_PingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_Ping-response)))
  "Returns string type for a service object of type 'robot_Ping-response"
  "abb_node/robot_PingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_Ping-response>)))
  "Returns md5sum for a message object of type '<robot_Ping-response>"
  "1e32786be6359fbbb6259aee4f579d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_Ping-response)))
  "Returns md5sum for a message object of type 'robot_Ping-response"
  "1e32786be6359fbbb6259aee4f579d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_Ping-response>)))
  "Returns full string definition for message of type '<robot_Ping-response>"
  (cl:format cl:nil "int64 ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_Ping-response)))
  "Returns full string definition for message of type 'robot_Ping-response"
  (cl:format cl:nil "int64 ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_Ping-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_Ping-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_Ping-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_Ping)))
  'robot_Ping-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_Ping)))
  'robot_Ping-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_Ping)))
  "Returns string type for a service object of type '<robot_Ping>"
  "abb_node/robot_Ping")