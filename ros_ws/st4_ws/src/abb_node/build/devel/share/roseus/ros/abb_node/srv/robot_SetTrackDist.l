;; Auto-generated. Do not edit!


(when (boundp 'abb_node::robot_SetTrackDist)
  (if (not (find-package "ABB_NODE"))
    (make-package "ABB_NODE"))
  (shadow 'robot_SetTrackDist (find-package "ABB_NODE")))
(unless (find-package "ABB_NODE::ROBOT_SETTRACKDIST")
  (make-package "ABB_NODE::ROBOT_SETTRACKDIST"))
(unless (find-package "ABB_NODE::ROBOT_SETTRACKDISTREQUEST")
  (make-package "ABB_NODE::ROBOT_SETTRACKDISTREQUEST"))
(unless (find-package "ABB_NODE::ROBOT_SETTRACKDISTRESPONSE")
  (make-package "ABB_NODE::ROBOT_SETTRACKDISTRESPONSE"))

(in-package "ROS")





(defclass abb_node::robot_SetTrackDistRequest
  :super ros::object
  :slots (_pos_dist _ang_dist ))

(defmethod abb_node::robot_SetTrackDistRequest
  (:init
   (&key
    ((:pos_dist __pos_dist) 0.0)
    ((:ang_dist __ang_dist) 0.0)
    )
   (send-super :init)
   (setq _pos_dist (float __pos_dist))
   (setq _ang_dist (float __ang_dist))
   self)
  (:pos_dist
   (&optional __pos_dist)
   (if __pos_dist (setq _pos_dist __pos_dist)) _pos_dist)
  (:ang_dist
   (&optional __ang_dist)
   (if __ang_dist (setq _ang_dist __ang_dist)) _ang_dist)
  (:serialization-length
   ()
   (+
    ;; float64 _pos_dist
    8
    ;; float64 _ang_dist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pos_dist
       (sys::poke _pos_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ang_dist
       (sys::poke _ang_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pos_dist
     (setq _pos_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ang_dist
     (setq _ang_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass abb_node::robot_SetTrackDistResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod abb_node::robot_SetTrackDistResponse
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

(defclass abb_node::robot_SetTrackDist
  :super ros::object
  :slots ())

(setf (get abb_node::robot_SetTrackDist :md5sum-) "eb267eb8369d9c3a686d934285ba7a11")
(setf (get abb_node::robot_SetTrackDist :datatype-) "abb_node/robot_SetTrackDist")
(setf (get abb_node::robot_SetTrackDist :request) abb_node::robot_SetTrackDistRequest)
(setf (get abb_node::robot_SetTrackDist :response) abb_node::robot_SetTrackDistResponse)

(defmethod abb_node::robot_SetTrackDistRequest
  (:response () (instance abb_node::robot_SetTrackDistResponse :init)))

(setf (get abb_node::robot_SetTrackDistRequest :md5sum-) "eb267eb8369d9c3a686d934285ba7a11")
(setf (get abb_node::robot_SetTrackDistRequest :datatype-) "abb_node/robot_SetTrackDistRequest")
(setf (get abb_node::robot_SetTrackDistRequest :definition-)
<<<<<<< HEAD
      "# Service to Set the tracking distance of the robot while in non-blocking mode

float64 pos_dist  # mm
float64 ang_dist  # deg
---
int64 ret
string msg
=======
      "# Service to Set the tracking distance of the robot while in non-blocking mode

float64 pos_dist  # mm
float64 ang_dist  # deg
---
int64 ret
string msg
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f

")

(setf (get abb_node::robot_SetTrackDistResponse :md5sum-) "eb267eb8369d9c3a686d934285ba7a11")
(setf (get abb_node::robot_SetTrackDistResponse :datatype-) "abb_node/robot_SetTrackDistResponse")
(setf (get abb_node::robot_SetTrackDistResponse :definition-)
<<<<<<< HEAD
      "# Service to Set the tracking distance of the robot while in non-blocking mode

float64 pos_dist  # mm
float64 ang_dist  # deg
---
int64 ret
string msg
=======
      "# Service to Set the tracking distance of the robot while in non-blocking mode

float64 pos_dist  # mm
float64 ang_dist  # deg
---
int64 ret
string msg
>>>>>>> 1b1f87b6247333221ca1660d810eda01b82fd03f

")



(provide :abb_node/robot_SetTrackDist "eb267eb8369d9c3a686d934285ba7a11")


