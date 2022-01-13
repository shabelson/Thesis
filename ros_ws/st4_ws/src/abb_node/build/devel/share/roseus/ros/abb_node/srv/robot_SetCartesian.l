;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetCartesian)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetCartesian (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETCARTESIAN")
  (make-package "ABB_NODE::ROBOT_SETCARTESIAN"))
(unless (find-package "ABB_NODE::ROBOT_SETCARTESIANREQUEST")
  (make-package "ABB_NODE::ROBOT_SETCARTESIANREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETCARTESIANRESPONSE")
  (make-package "ABB_NODE::ROBOT_SETCARTESIANRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetCartesianRequest
  :super ros::object
  :slots (_cartesian _quaternion ))

(defmethod abb_node::robot_SetCartesianRequest
  (:init
   (&key
    ((:cartesian __cartesian) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quaternion __quaternion) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cartesian __cartesian)
   (setq _quaternion __quaternion)
   self)
  (:cartesian
   (&optional __cartesian)
   (if __cartesian (setq _cartesian __cartesian)) _cartesian)
  (:quaternion
   (&optional __quaternion)
   (if __quaternion (setq _quaternion __quaternion)) _quaternion)
  (:serialization-length
   ()
   (+
    ;; float64[] _cartesian
    (* 8    (length _cartesian)) 4
    ;; float64[] _quaternion
    (* 8    (length _quaternion)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _cartesian
     (write-long (length _cartesian) s)
     (dotimes (i (length _cartesian))
       (sys::poke (elt _cartesian i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _quaternion
     (write-long (length _quaternion) s)
     (dotimes (i (length _quaternion))
       (sys::poke (elt _quaternion i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _cartesian
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cartesian (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cartesian i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _quaternion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quaternion (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quaternion i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass abb_node::robot_SetCartesianResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetCartesianResponse
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

(defclass abb_node::robot_SetCartesian
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetCartesian :md5sum-) "4aa959d966f8a29fdd7f035d2997b10c")
(setf (get abb_node::robot_SetCartesian :datatype-) "abb_node/robot_SetCartesian")
(setf (get abb_node::robot_SetCartesian :request) abb_node::robot_SetCartesianRequest)
(setf (get abb_node::robot_SetCartesian :response) abb_node::robot_SetCartesianResponse)

(defmethod abb_node::robot_SetCartesianRequest
  (:response () (instance abb_node::robot_SetCartesianResponse :init)))

(setf (get abb_node::robot_SetCartesianRequest :md5sum-) "4aa959d966f8a29fdd7f035d2997b10c")
(setf (get abb_node::robot_SetCartesianRequest :datatype-) "abb_node/robot_SetCartesianRequest")
(setf (get abb_node::robot_SetCartesianRequest :definition-)
      "# Service to Set Cartesians
float64[] cartesian
float64[] quaternion
---
int64 ret
string msg
")

(setf (get abb_node::robot_SetCartesianResponse :md5sum-) "4aa959d966f8a29fdd7f035d2997b10c")
(setf (get abb_node::robot_SetCartesianResponse :datatype-) "abb_node/robot_SetCartesianResponse")
(setf (get abb_node::robot_SetCartesianResponse :definition-)
      "# Service to Set Cartesians
float64[] cartesian
float64[] quaternion
---
int64 ret
string msg
")



(provide :abb_node/robot_SetCartesian "4aa959d966f8a29fdd7f035d2997b10c")


