;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetJoints)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetJoints (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETJOINTS")
  (make-package "ABB_NODE::ROBOT_SETJOINTS"))
(unless (find-package "ABB_NODE::ROBOT_SETJOINTSREQUEST")
  (make-package "ABB_NODE::ROBOT_SETJOINTSREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETJOINTSRESPONSE")
  (make-package "ABB_NODE::ROBOT_SETJOINTSRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetJointsRequest
  :super ros::object
  :slots (_position ))

(defmethod abb_node::robot_SetJointsRequest
  (:init
   (&key
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; float64[] _position
    (* 8    (length _position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass abb_node::robot_SetJointsResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetJointsResponse
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

(defclass abb_node::robot_SetJoints
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetJoints :md5sum-) "23982c479cd3fc1d1b9c7ca9addbaa85")
(setf (get abb_node::robot_SetJoints :datatype-) "abb_node/robot_SetJoints")
(setf (get abb_node::robot_SetJoints :request) abb_node::robot_SetJointsRequest)
(setf (get abb_node::robot_SetJoints :response) abb_node::robot_SetJointsResponse)

(defmethod abb_node::robot_SetJointsRequest
  (:response () (instance abb_node::robot_SetJointsResponse :init)))

(setf (get abb_node::robot_SetJointsRequest :md5sum-) "23982c479cd3fc1d1b9c7ca9addbaa85")
(setf (get abb_node::robot_SetJointsRequest :datatype-) "abb_node/robot_SetJointsRequest")
(setf (get abb_node::robot_SetJointsRequest :definition-)
      "# Service to Set Joints
float64[] position

---
int64 ret
string msg
")

(setf (get abb_node::robot_SetJointsResponse :md5sum-) "23982c479cd3fc1d1b9c7ca9addbaa85")
(setf (get abb_node::robot_SetJointsResponse :datatype-) "abb_node/robot_SetJointsResponse")
(setf (get abb_node::robot_SetJointsResponse :definition-)
      "# Service to Set Joints
float64[] position

---
int64 ret
string msg
")



(provide :abb_node/robot_SetJoints "23982c479cd3fc1d1b9c7ca9addbaa85")


