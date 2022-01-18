;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetDIO)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetDIO (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETDIO")
  (make-package "ABB_NODE::ROBOT_SETDIO"))
(unless (find-package "ABB_NODE::ROBOT_SETDIOREQUEST")
  (make-package "ABB_NODE::ROBOT_SETDIOREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETDIORESPONSE")
  (make-package "ABB_NODE::ROBOT_SETDIORESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetDIORequest
  :super ros::object
  :slots (_DIO_num _state ))

(defmethod abb_node::robot_SetDIORequest
  (:init
   (&key
    ((:DIO_num __DIO_num) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _DIO_num (round __DIO_num))
   (setq _state __state)
   self)
  (:DIO_num
   (&optional __DIO_num)
   (if __DIO_num (setq _DIO_num __DIO_num)) _DIO_num)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int64 _DIO_num
    8
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _DIO_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _DIO_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _DIO_num) (= (length (_DIO_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_DIO_num . bv) 0) 0) s)
              (write-long (ash (elt (_DIO_num . bv) 1) -1) s))
             ((and (class _DIO_num) (= (length (_DIO_num . bv)) 1)) ;; big1
              (write-long (elt (_DIO_num . bv) 0) s)
              (write-long (if (>= _DIO_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _DIO_num s)(write-long (if (>= _DIO_num 0) 0 #xffffffff) s)))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _DIO_num
#+(or :alpha :irix6 :x86_64)
      (setf _DIO_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _DIO_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass abb_node::robot_SetDIOResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetDIOResponse
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

(defclass abb_node::robot_SetDIO
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetDIO :md5sum-) "40fbf43c0c353da283e0c44b43ee102f")
(setf (get abb_node::robot_SetDIO :datatype-) "abb_node/robot_SetDIO")
(setf (get abb_node::robot_SetDIO :request) abb_node::robot_SetDIORequest)
(setf (get abb_node::robot_SetDIO :response) abb_node::robot_SetDIOResponse)

(defmethod abb_node::robot_SetDIORequest
  (:response () (instance abb_node::robot_SetDIOResponse :init)))

(setf (get abb_node::robot_SetDIORequest :md5sum-) "40fbf43c0c353da283e0c44b43ee102f")
(setf (get abb_node::robot_SetDIORequest :datatype-) "abb_node/robot_SetDIORequest")
(setf (get abb_node::robot_SetDIORequest :definition-)
<<<<<<< HEAD
      "#Service to set digital outputs on/off
int64 DIO_num  #digital IO number
bool state  #1-on; 0-off
---
int64 ret
=======
      "#Service to set digital outputs on/off
int64 DIO_num  #digital IO number
bool state  #1-on; 0-off
---
int64 ret
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f
string msg
")

(setf (get abb_node::robot_SetDIOResponse :md5sum-) "40fbf43c0c353da283e0c44b43ee102f")
(setf (get abb_node::robot_SetDIOResponse :datatype-) "abb_node/robot_SetDIOResponse")
(setf (get abb_node::robot_SetDIOResponse :definition-)
<<<<<<< HEAD
      "#Service to set digital outputs on/off
int64 DIO_num  #digital IO number
bool state  #1-on; 0-off
---
int64 ret
=======
      "#Service to set digital outputs on/off
int64 DIO_num  #digital IO number
bool state  #1-on; 0-off
---
int64 ret
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f
string msg
")



(provide :abb_node/robot_SetDIO "40fbf43c0c353da283e0c44b43ee102f")


