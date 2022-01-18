;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetVacuum)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetVacuum (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETVACUUM")
  (make-package "ABB_NODE::ROBOT_SETVACUUM"))
(unless (find-package "ABB_NODE::ROBOT_SETVACUUMREQUEST")
  (make-package "ABB_NODE::ROBOT_SETVACUUMREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETVACUUMRESPONSE")
  (make-package "ABB_NODE::ROBOT_SETVACUUMRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetVacuumRequest
  :super ros::object
  :slots (_vacuum ))

(defmethod abb_node::robot_SetVacuumRequest
  (:init
   (&key
    ((:vacuum __vacuum) 0)
    )
   (send-super :init)
   (setq _vacuum (round __vacuum))
   self)
  (:vacuum
   (&optional __vacuum)
   (if __vacuum (setq _vacuum __vacuum)) _vacuum)
  (:serialization-length
   ()
   (+
    ;; int64 _vacuum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _vacuum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _vacuum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _vacuum) (= (length (_vacuum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_vacuum . bv) 0) 0) s)
              (write-long (ash (elt (_vacuum . bv) 1) -1) s))
             ((and (class _vacuum) (= (length (_vacuum . bv)) 1)) ;; big1
              (write-long (elt (_vacuum . bv) 0) s)
              (write-long (if (>= _vacuum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _vacuum s)(write-long (if (>= _vacuum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _vacuum
#+(or :alpha :irix6 :x86_64)
      (setf _vacuum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _vacuum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass abb_node::robot_SetVacuumResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetVacuumResponse
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

(defclass abb_node::robot_SetVacuum
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetVacuum :md5sum-) "bc2b2a4e5d5d788edc958a62cf84dc1f")
(setf (get abb_node::robot_SetVacuum :datatype-) "abb_node/robot_SetVacuum")
(setf (get abb_node::robot_SetVacuum :request) abb_node::robot_SetVacuumRequest)
(setf (get abb_node::robot_SetVacuum :response) abb_node::robot_SetVacuumResponse)

(defmethod abb_node::robot_SetVacuumRequest
  (:response () (instance abb_node::robot_SetVacuumResponse :init)))

(setf (get abb_node::robot_SetVacuumRequest :md5sum-) "bc2b2a4e5d5d788edc958a62cf84dc1f")
(setf (get abb_node::robot_SetVacuumRequest :datatype-) "abb_node/robot_SetVacuumRequest")
(setf (get abb_node::robot_SetVacuumRequest :definition-)
<<<<<<< HEAD
      "#Service to set vacuum on/off

int64 vacuum  #1-on; 0-off
---
int64 ret
=======
      "#Service to set vacuum on/off

int64 vacuum  #1-on; 0-off
---
int64 ret
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f
string msg
")

(setf (get abb_node::robot_SetVacuumResponse :md5sum-) "bc2b2a4e5d5d788edc958a62cf84dc1f")
(setf (get abb_node::robot_SetVacuumResponse :datatype-) "abb_node/robot_SetVacuumResponse")
(setf (get abb_node::robot_SetVacuumResponse :definition-)
<<<<<<< HEAD
      "#Service to set vacuum on/off

int64 vacuum  #1-on; 0-off
---
int64 ret
=======
      "#Service to set vacuum on/off

int64 vacuum  #1-on; 0-off
---
int64 ret
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f
string msg
")



(provide :abb_node/robot_SetVacuum "bc2b2a4e5d5d788edc958a62cf84dc1f")


