; Auto-generated. Do not edit!


(cl:in-package actionlib_lutorials-msg)


;//! \htmlinclude AveragingAction.msg.html

(cl:defclass <AveragingAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type actionlib_lutorials-msg:AveragingActionGoal
    :initform (cl:make-instance 'actionlib_lutorials-msg:AveragingActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type actionlib_lutorials-msg:AveragingActionResult
    :initform (cl:make-instance 'actionlib_lutorials-msg:AveragingActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type actionlib_lutorials-msg:AveragingActionFeedback
    :initform (cl:make-instance 'actionlib_lutorials-msg:AveragingActionFeedback)))
)

(cl:defclass AveragingAction (<AveragingAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AveragingAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AveragingAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_lutorials-msg:<AveragingAction> is deprecated: use actionlib_lutorials-msg:AveragingAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <AveragingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_lutorials-msg:action_goal-val is deprecated.  Use actionlib_lutorials-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <AveragingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_lutorials-msg:action_result-val is deprecated.  Use actionlib_lutorials-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <AveragingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_lutorials-msg:action_feedback-val is deprecated.  Use actionlib_lutorials-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AveragingAction>) ostream)
  "Serializes a message object of type '<AveragingAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AveragingAction>) istream)
  "Deserializes a message object of type '<AveragingAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AveragingAction>)))
  "Returns string type for a message object of type '<AveragingAction>"
  "actionlib_lutorials/AveragingAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AveragingAction)))
  "Returns string type for a message object of type 'AveragingAction"
  "actionlib_lutorials/AveragingAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AveragingAction>)))
  "Returns md5sum for a message object of type '<AveragingAction>"
  "628678f2b4fa6a5951746a4a2d39e716")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AveragingAction)))
  "Returns md5sum for a message object of type 'AveragingAction"
  "628678f2b4fa6a5951746a4a2d39e716")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AveragingAction>)))
  "Returns full string definition for message of type '<AveragingAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%AveragingActionGoal action_goal~%AveragingActionResult action_result~%AveragingActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%AveragingGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib_lutorials/AveragingGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## ?????? /catkin_ws/devel/include/actionlib_lutorials/?????????????????? ????????????+Action?????????????????????~%## AveragingAction.h  AveragingActionFeedback.h   AveragingActionGoal.h AveragingActionResult.h~%# ???????????????????????????????????????~%#AveragingFeedback.h   AveragingGoal.h AveragingResult.h~%# ?????? roscd actionlib_tutorials     ??????????????????????????? ~%#rosrun actionlib_msgs genaction.py -o msg/ action/Averaging.action~%# ???.action ???????????? .msg ??????????????????~%~%#goal definition   ??? ??? ?????? ?????? ~%int32 samples~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%AveragingResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_lutorials/AveragingResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition ???????????? ???????????? ~%float32 mean       # average~%float32 std_dev    # standard deviation ~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%AveragingFeedback feedback~%~%================================================================================~%MSG: actionlib_lutorials/AveragingFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback          ???????????? ???????????? ~%int32 sample~%float32 data~%float32 mean~%float32 std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AveragingAction)))
  "Returns full string definition for message of type 'AveragingAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%AveragingActionGoal action_goal~%AveragingActionResult action_result~%AveragingActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%AveragingGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: actionlib_lutorials/AveragingGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## ?????? /catkin_ws/devel/include/actionlib_lutorials/?????????????????? ????????????+Action?????????????????????~%## AveragingAction.h  AveragingActionFeedback.h   AveragingActionGoal.h AveragingActionResult.h~%# ???????????????????????????????????????~%#AveragingFeedback.h   AveragingGoal.h AveragingResult.h~%# ?????? roscd actionlib_tutorials     ??????????????????????????? ~%#rosrun actionlib_msgs genaction.py -o msg/ action/Averaging.action~%# ???.action ???????????? .msg ??????????????????~%~%#goal definition   ??? ??? ?????? ?????? ~%int32 samples~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%AveragingResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_lutorials/AveragingResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition ???????????? ???????????? ~%float32 mean       # average~%float32 std_dev    # standard deviation ~%~%================================================================================~%MSG: actionlib_lutorials/AveragingActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%AveragingFeedback feedback~%~%================================================================================~%MSG: actionlib_lutorials/AveragingFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback          ???????????? ???????????? ~%int32 sample~%float32 data~%float32 mean~%float32 std_dev~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AveragingAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AveragingAction>))
  "Converts a ROS message object to a list"
  (cl:list 'AveragingAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
