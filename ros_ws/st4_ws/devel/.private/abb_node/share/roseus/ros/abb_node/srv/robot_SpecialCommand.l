;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SpecialCommand)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SpecialCommand (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SPECIALCOMMAND")
  (make-package "ABB_NODE::ROBOT_SPECIALCOMMAND"))
(unless (find-package "ABB_NODE::ROBOT_SPECIALCOMMANDREQUEST")
  (make-package "ABB_NODE::ROBOT_SPECIALCOMMANDREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SPECIALCOMMANDRESPONSE")
  (make-package "ABB_NODE::ROBOT_SPECIALCOMMANDRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SpecialCommandRequest
  :super ros::object
  :slots (_command _param1 _param2 _param3 _param4 _param5 ))

(defmethod abb_node::robot_SpecialCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:param5 __param5) 0.0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _param5 (float __param5))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:param5
   (&optional __param5)
   (if __param5 (setq _param5 __param5)) _param5)
  (:serialization-length
   ()
   (+
    ;; int64 _command
    8
    ;; float64 _param1
    8
    ;; float64 _param2
    8
    ;; float64 _param3
    8
    ;; float64 _param4
    8
    ;; float64 _param5
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _command
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _command (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _command) (= (length (_command . bv)) 2)) ;; bignum
              (write-long (ash (elt (_command . bv) 0) 0) s)
              (write-long (ash (elt (_command . bv) 1) -1) s))
             ((and (class _command) (= (length (_command . bv)) 1)) ;; big1
              (write-long (elt (_command . bv) 0) s)
              (write-long (if (>= _command 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _command s)(write-long (if (>= _command 0) 0 #xffffffff) s)))
     ;; float64 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param5
       (sys::poke _param5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _command
#+(or :alpha :irix6 :x86_64)
      (setf _command (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _command (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _param1
     (setq _param1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param2
     (setq _param2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param3
     (setq _param3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param4
     (setq _param4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param5
     (setq _param5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass abb_node::robot_SpecialCommandResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SpecialCommandResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _msg (string __msg))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int64 _ret
    8
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ret
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ret (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ret) (= (length (_ret . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ret . bv) 0) 0) s)
              (write-long (ash (elt (_ret . bv) 1) -1) s))
             ((and (class _ret) (= (length (_ret . bv)) 1)) ;; big1
              (write-long (elt (_ret . bv) 0) s)
              (write-long (if (>= _ret 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ret s)(write-long (if (>= _ret 0) 0 #xffffffff) s)))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ret
#+(or :alpha :irix6 :x86_64)
      (setf _ret (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ret (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass abb_node::robot_SpecialCommand
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SpecialCommand :md5sum-) "dd470c01f667d001d212037b2fe2c918")
(setf (get abb_node::robot_SpecialCommand :datatype-) "abb_node/robot_SpecialCommand")
(setf (get abb_node::robot_SpecialCommand :request) abb_node::robot_SpecialCommandRequest)
(setf (get abb_node::robot_SpecialCommand :response) abb_node::robot_SpecialCommandResponse)

(defmethod abb_node::robot_SpecialCommandRequest
  (:response () (instance abb_node::robot_SpecialCommandResponse :init)))

(setf (get abb_node::robot_SpecialCommandRequest :md5sum-) "dd470c01f667d001d212037b2fe2c918")
(setf (get abb_node::robot_SpecialCommandRequest :datatype-) "abb_node/robot_SpecialCommandRequest")
(setf (get abb_node::robot_SpecialCommandRequest :definition-)
      "#Service to run spcial command

int64 command  #integer identificating the command to run
float64 param1 #Special purpose parameter number 1
float64 param2 #Special purpose parameter number 2
float64 param3 #Special purpose parameter number 3
float64 param4 #Special purpose parameter number 4
float64 param5 #Special purpose parameter number 5
---
int64 ret
string msg

")

(setf (get abb_node::robot_SpecialCommandResponse :md5sum-) "dd470c01f667d001d212037b2fe2c918")
(setf (get abb_node::robot_SpecialCommandResponse :datatype-) "abb_node/robot_SpecialCommandResponse")
(setf (get abb_node::robot_SpecialCommandResponse :definition-)
      "#Service to run spcial command

int64 command  #integer identificating the command to run
float64 param1 #Special purpose parameter number 1
float64 param2 #Special purpose parameter number 2
float64 param3 #Special purpose parameter number 3
float64 param4 #Special purpose parameter number 4
float64 param5 #Special purpose parameter number 5
---
int64 ret
string msg

")



(provide :abb_node/robot_SpecialCommand "dd470c01f667d001d212037b2fe2c918")


