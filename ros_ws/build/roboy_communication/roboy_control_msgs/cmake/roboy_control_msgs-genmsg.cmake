# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_control_msgs: 40 messages, 7 services")

set(MSG_I_FLAGS "-Iroboy_control_msgs:/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg;-Iroboy_control_msgs:/workspace/ros_ws/devel/share/roboy_control_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_control_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" "roboy_control_msgs/LookAtFeedback:actionlib_msgs/GoalID:roboy_control_msgs/LookAtGoal:roboy_control_msgs/LookAtActionGoal:roboy_control_msgs/LookAtActionFeedback:geometry_msgs/Vector3:std_msgs/Header:roboy_control_msgs/LookAtActionResult:roboy_control_msgs/LookAtResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Vector3:roboy_control_msgs/LookAtGoal:std_msgs/Header"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" "actionlib_msgs/GoalID:roboy_control_msgs/LookAtResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" "actionlib_msgs/GoalID:roboy_control_msgs/LookAtFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" "roboy_control_msgs/MoveEndEffectorActionGoal:geometry_msgs/Point:actionlib_msgs/GoalID:roboy_control_msgs/MoveEndEffectorFeedback:roboy_control_msgs/MoveEndEffectorGoal:roboy_control_msgs/MoveEndEffectorActionFeedback:std_msgs/Header:roboy_control_msgs/MoveEndEffectorActionResult:geometry_msgs/Quaternion:roboy_control_msgs/MoveEndEffectorResult:actionlib_msgs/GoalStatus:geometry_msgs/Pose"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" "geometry_msgs/Point:actionlib_msgs/GoalID:roboy_control_msgs/MoveEndEffectorGoal:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" "actionlib_msgs/GoalID:roboy_control_msgs/MoveEndEffectorResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:roboy_control_msgs/MoveEndEffectorFeedback"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" "roboy_control_msgs/PerformMovementActionGoal:actionlib_msgs/GoalID:roboy_control_msgs/PerformMovementFeedback:roboy_control_msgs/PerformMovementActionFeedback:roboy_control_msgs/PerformMovementActionResult:roboy_control_msgs/PerformMovementGoal:roboy_control_msgs/PerformMovementResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:roboy_control_msgs/PerformMovementGoal"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:roboy_control_msgs/PerformMovementResult"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" "actionlib_msgs/GoalID:roboy_control_msgs/PerformMovementFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" "roboy_control_msgs/PerformMovementsResult:actionlib_msgs/GoalID:roboy_control_msgs/PerformMovementsFeedback:roboy_control_msgs/PerformMovementsActionResult:std_msgs/Header:roboy_control_msgs/PerformMovementsActionGoal:roboy_control_msgs/PerformMovementsGoal:actionlib_msgs/GoalStatus:roboy_control_msgs/PerformMovementsActionFeedback"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:roboy_control_msgs/PerformMovementsGoal"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" "actionlib_msgs/GoalID:roboy_control_msgs/PerformMovementsResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" "actionlib_msgs/GoalID:roboy_control_msgs/PerformMovementsFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_custom_target(_roboy_control_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_control_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_cpp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)

### Generating Services
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_cpp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
)

### Generating Module File
_generate_module_cpp(roboy_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_control_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_control_msgs_generate_messages roboy_control_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_cpp _roboy_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_control_msgs_gencpp)
add_dependencies(roboy_control_msgs_gencpp roboy_control_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_control_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_eus(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)

### Generating Services
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_eus(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
)

### Generating Module File
_generate_module_eus(roboy_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_control_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_control_msgs_generate_messages roboy_control_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_eus _roboy_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_control_msgs_geneus)
add_dependencies(roboy_control_msgs_geneus roboy_control_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_control_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_lisp(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)

### Generating Services
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_lisp(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
)

### Generating Module File
_generate_module_lisp(roboy_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_control_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_control_msgs_generate_messages roboy_control_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_lisp _roboy_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_control_msgs_genlisp)
add_dependencies(roboy_control_msgs_genlisp roboy_control_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_control_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_nodejs(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)

### Generating Services
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_nodejs(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
)

### Generating Module File
_generate_module_nodejs(roboy_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_control_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_control_msgs_generate_messages roboy_control_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_nodejs _roboy_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_control_msgs_gennodejs)
add_dependencies(roboy_control_msgs_gennodejs roboy_control_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_control_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_msg_py(roboy_control_msgs
  "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)

### Generating Services
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)
_generate_srv_py(roboy_control_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
)

### Generating Module File
_generate_module_py(roboy_control_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_control_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_control_msgs_generate_messages roboy_control_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv" NAME_WE)
add_dependencies(roboy_control_msgs_generate_messages_py _roboy_control_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_control_msgs_genpy)
add_dependencies(roboy_control_msgs_genpy roboy_control_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_control_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_control_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_control_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(roboy_control_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(roboy_control_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roboy_control_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_control_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_control_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(roboy_control_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(roboy_control_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roboy_control_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_control_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_control_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(roboy_control_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(roboy_control_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roboy_control_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_control_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_control_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(roboy_control_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(roboy_control_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roboy_control_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_control_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_control_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(roboy_control_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(roboy_control_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roboy_control_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
