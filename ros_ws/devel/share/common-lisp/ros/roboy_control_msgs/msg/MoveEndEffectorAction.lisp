; Auto-generated. Do not edit!


(cl:in-package roboy_control_msgs-msg)


;//! \htmlinclude MoveEndEffectorAction.msg.html

(cl:defclass <MoveEndEffectorAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type roboy_control_msgs-msg:MoveEndEffectorActionGoal
    :initform (cl:make-instance 'roboy_control_msgs-msg:MoveEndEffectorActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type roboy_control_msgs-msg:MoveEndEffectorActionResult
    :initform (cl:make-instance 'roboy_control_msgs-msg:MoveEndEffectorActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type roboy_control_msgs-msg:MoveEndEffectorActionFeedback
    :initform (cl:make-instance 'roboy_control_msgs-msg:MoveEndEffectorActionFeedback)))
)

(cl:defclass MoveEndEffectorAction (<MoveEndEffectorAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveEndEffectorAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveEndEffectorAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboy_control_msgs-msg:<MoveEndEffectorAction> is deprecated: use roboy_control_msgs-msg:MoveEndEffectorAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <MoveEndEffectorAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:action_goal-val is deprecated.  Use roboy_control_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <MoveEndEffectorAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:action_result-val is deprecated.  Use roboy_control_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <MoveEndEffectorAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboy_control_msgs-msg:action_feedback-val is deprecated.  Use roboy_control_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveEndEffectorAction>) ostream)
  "Serializes a message object of type '<MoveEndEffectorAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveEndEffectorAction>) istream)
  "Deserializes a message object of type '<MoveEndEffectorAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveEndEffectorAction>)))
  "Returns string type for a message object of type '<MoveEndEffectorAction>"
  "roboy_control_msgs/MoveEndEffectorAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveEndEffectorAction)))
  "Returns string type for a message object of type 'MoveEndEffectorAction"
  "roboy_control_msgs/MoveEndEffectorAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveEndEffectorAction>)))
  "Returns md5sum for a message object of type '<MoveEndEffectorAction>"
  "bfb125a395f10a1e30967a457e31c981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveEndEffectorAction)))
  "Returns md5sum for a message object of type 'MoveEndEffectorAction"
  "bfb125a395f10a1e30967a457e31c981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveEndEffectorAction>)))
  "Returns full string definition for message of type '<MoveEndEffectorAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%MoveEndEffectorActionGoal action_goal~%MoveEndEffectorActionResult action_result~%MoveEndEffectorActionFeedback action_feedback~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MoveEndEffectorGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string endeffector~%# 0: pose in world frame 1: pose relative to target_frame~%int8 type~%# 0: position and orientation 1: position only 2: orientation only~%int8 ik_type~%geometry_msgs/Pose pose~%string target_frame~%int32 timeout~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MoveEndEffectorResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32[] q~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MoveEndEffectorFeedback feedback~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveEndEffectorAction)))
  "Returns full string definition for message of type 'MoveEndEffectorAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%MoveEndEffectorActionGoal action_goal~%MoveEndEffectorActionResult action_result~%MoveEndEffectorActionFeedback action_feedback~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%MoveEndEffectorGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string endeffector~%# 0: pose in world frame 1: pose relative to target_frame~%int8 type~%# 0: position and orientation 1: position only 2: orientation only~%int8 ik_type~%geometry_msgs/Pose pose~%string target_frame~%int32 timeout~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MoveEndEffectorResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32[] q~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%MoveEndEffectorFeedback feedback~%~%================================================================================~%MSG: roboy_control_msgs/MoveEndEffectorFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float32 error~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveEndEffectorAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveEndEffectorAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveEndEffectorAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
