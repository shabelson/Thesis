;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetZone)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetZone (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETZONE")
  (make-package "ABB_NODE::ROBOT_SETZONE"))
(unless (find-package "ABB_NODE::ROBOT_SETZONEREQUEST")
  (make-package "ABB_NODE::ROBOT_SETZONEREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETZONERESPONSE")
  (make-package "ABB_NODE::ROBOT_SETZONERESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetZoneRequest
  :super ros::object
  :slots (_mode ))

(defmethod abb_node::robot_SetZoneRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int64 _mode
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _mode
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mode (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mode) (= (length (_mode . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mode . bv) 0) 0) s)
              (write-long (ash (elt (_mode . bv) 1) -1) s))
             ((and (class _mode) (= (length (_mode . bv)) 1)) ;; big1
              (write-long (elt (_mode . bv) 0) s)
              (write-long (if (>= _mode 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mode s)(write-long (if (>= _mode 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _mode
#+(or :alpha :irix6 :x86_64)
      (setf _mode (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mode (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass abb_node::robot_SetZoneResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetZoneResponse
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

(defclass abb_node::robot_SetZone
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetZone :md5sum-) "9a8139bbede588258d8a8cdc808e7b88")
(setf (get abb_node::robot_SetZone :datatype-) "abb_node/robot_SetZone")
(setf (get abb_node::robot_SetZone :request) abb_node::robot_SetZoneRequest)
(setf (get abb_node::robot_SetZone :response) abb_node::robot_SetZoneResponse)

(defmethod abb_node::robot_SetZoneRequest
  (:response () (instance abb_node::robot_SetZoneResponse :init)))

(setf (get abb_node::robot_SetZoneRequest :md5sum-) "9a8139bbede588258d8a8cdc808e7b88")
(setf (get abb_node::robot_SetZoneRequest :datatype-) "abb_node/robot_SetZoneRequest")
(setf (get abb_node::robot_SetZoneRequest :definition-)
      "# Service to Set the Zone of the robot
# Mode - Name in RAPID - Linear  - Orientation
#   0        fine         0 mm        0°
#   1         z0          0.3 mm      0.03°  <- Default and recommended value.
#   2         z1          1 mm        0.1°
#   3         z5          5 mm        0.8°
#   4         z10         10 mm       1.5°

int64 mode
---
int64 ret
string msg

")

(setf (get abb_node::robot_SetZoneResponse :md5sum-) "9a8139bbede588258d8a8cdc808e7b88")
(setf (get abb_node::robot_SetZoneResponse :datatype-) "abb_node/robot_SetZoneResponse")
(setf (get abb_node::robot_SetZoneResponse :definition-)
      "# Service to Set the Zone of the robot
# Mode - Name in RAPID - Linear  - Orientation
#   0        fine         0 mm        0°
#   1         z0          0.3 mm      0.03°  <- Default and recommended value.
#   2         z1          1 mm        0.1°
#   3         z5          5 mm        0.8°
#   4         z10         10 mm       1.5°

int64 mode
---
int64 ret
string msg

")



(provide :abb_node/robot_SetZone "9a8139bbede588258d8a8cdc808e7b88")


