;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_GetJoints)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_GetJoints (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_GETJOINTS")
  (make-package "ABB_NODE::ROBOT_GETJOINTS"))
(unless (find-package "ABB_NODE::ROBOT_GETJOINTSREQUEST")
  (make-package "ABB_NODE::ROBOT_GETJOINTSREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_GETJOINTSRESPONSE")
  (make-package "ABB_NODE::ROBOT_GETJOINTSRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_GetJointsRequest
  :super ros::object
  :slots ())

(defmethod abb_node::robot_GetJointsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass abb_node::robot_GetJointsResponse
  :super ros::object
  :slots (_j1 _j2 _j3 _j4 _j5 _j6 _ret _msg ))

(defmethod abb_node::robot_GetJointsResponse
  (:init
   (&key
    ((:j1 __j1) 0.0)
    ((:j2 __j2) 0.0)
    ((:j3 __j3) 0.0)
    ((:j4 __j4) 0.0)
    ((:j5 __j5) 0.0)
    ((:j6 __j6) 0.0)
    ((:ret __ret) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _j1 (float __j1))
   (setq _j2 (float __j2))
   (setq _j3 (float __j3))
   (setq _j4 (float __j4))
   (setq _j5 (float __j5))
   (setq _j6 (float __j6))
   (setq _ret (round __ret))
   (setq _msg (string __msg))
   self)
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:j2
   (&optional __j2)
   (if __j2 (setq _j2 __j2)) _j2)
  (:j3
   (&optional __j3)
   (if __j3 (setq _j3 __j3)) _j3)
  (:j4
   (&optional __j4)
   (if __j4 (setq _j4 __j4)) _j4)
  (:j5
   (&optional __j5)
   (if __j5 (setq _j5 __j5)) _j5)
  (:j6
   (&optional __j6)
   (if __j6 (setq _j6 __j6)) _j6)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; float64 _j1
    8
    ;; float64 _j2
    8
    ;; float64 _j3
    8
    ;; float64 _j4
    8
    ;; float64 _j5
    8
    ;; float64 _j6
    8
    ;; int64 _ret
    8
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _j1
       (sys::poke _j1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j2
       (sys::poke _j2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j3
       (sys::poke _j3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j4
       (sys::poke _j4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j5
       (sys::poke _j5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j6
       (sys::poke _j6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _j1
     (setq _j1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j2
     (setq _j2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j3
     (setq _j3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j4
     (setq _j4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j5
     (setq _j5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j6
     (setq _j6 (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(defclass abb_node::robot_GetJoints
  :super ros::object
  :slots ())

(setf (get abb_node::robot_GetJoints :md5sum-) "927b82d08077d046362055bd87d33b65")
(setf (get abb_node::robot_GetJoints :datatype-) "abb_node/robot_GetJoints")
(setf (get abb_node::robot_GetJoints :request) abb_node::robot_GetJointsRequest)
(setf (get abb_node::robot_GetJoints :response) abb_node::robot_GetJointsResponse)

(defmethod abb_node::robot_GetJointsRequest
  (:response () (instance abb_node::robot_GetJointsResponse :init)))

(setf (get abb_node::robot_GetJointsRequest :md5sum-) "927b82d08077d046362055bd87d33b65")
(setf (get abb_node::robot_GetJointsRequest :datatype-) "abb_node/robot_GetJointsRequest")
(setf (get abb_node::robot_GetJointsRequest :definition-)
      "# Service to get joint angles of the robot

---
float64 j1
float64 j2
float64 j3
float64 j4
float64 j5
float64 j6
int64 ret
string msg
")

(setf (get abb_node::robot_GetJointsResponse :md5sum-) "927b82d08077d046362055bd87d33b65")
(setf (get abb_node::robot_GetJointsResponse :datatype-) "abb_node/robot_GetJointsResponse")
(setf (get abb_node::robot_GetJointsResponse :definition-)
      "# Service to get joint angles of the robot

---
float64 j1
float64 j2
float64 j3
float64 j4
float64 j5
float64 j6
int64 ret
string msg
")



(provide :abb_node/robot_GetJoints "927b82d08077d046362055bd87d33b65")


