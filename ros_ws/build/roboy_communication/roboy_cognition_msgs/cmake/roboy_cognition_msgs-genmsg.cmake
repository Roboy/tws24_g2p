# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_cognition_msgs: 18 messages, 34 services")

set(MSG_I_FLAGS "-Iroboy_cognition_msgs:/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg;-Iroboy_cognition_msgs:/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_cognition_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" "std_msgs/Header"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" "roboy_cognition_msgs/FacialFeatures"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" "std_msgs/MultiArrayLayout:geometry_msgs/Quaternion:std_msgs/MultiArrayDimension:geometry_msgs/Point:std_msgs/Float32MultiArray:geometry_msgs/Pose"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" "actionlib_msgs/GoalID:roboy_cognition_msgs/OrderIceCreamResult:roboy_cognition_msgs/OrderIceCreamFeedback:roboy_cognition_msgs/OrderIceCreamActionFeedback:roboy_cognition_msgs/OrderIceCreamGoal:std_msgs/Header:actionlib_msgs/GoalStatus:roboy_cognition_msgs/OrderIceCreamActionGoal:roboy_cognition_msgs/OrderIceCreamActionResult"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:roboy_cognition_msgs/OrderIceCreamGoal"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:roboy_cognition_msgs/OrderIceCreamResult"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:roboy_cognition_msgs/OrderIceCreamFeedback"
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" "roboy_cognition_msgs/FacialFeatures"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_custom_target(_roboy_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_cognition_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Services
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_cpp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Module File
_generate_module_cpp(roboy_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_cognition_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_cognition_msgs_generate_messages roboy_cognition_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_cpp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_cognition_msgs_gencpp)
add_dependencies(roboy_cognition_msgs_gencpp roboy_cognition_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_cognition_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_eus(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Services
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_eus(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Module File
_generate_module_eus(roboy_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_cognition_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_cognition_msgs_generate_messages roboy_cognition_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_eus _roboy_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_cognition_msgs_geneus)
add_dependencies(roboy_cognition_msgs_geneus roboy_cognition_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_cognition_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Services
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_lisp(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Module File
_generate_module_lisp(roboy_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_cognition_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_cognition_msgs_generate_messages roboy_cognition_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_lisp _roboy_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_cognition_msgs_genlisp)
add_dependencies(roboy_cognition_msgs_genlisp roboy_cognition_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_cognition_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Services
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_nodejs(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Module File
_generate_module_nodejs(roboy_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_cognition_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_cognition_msgs_generate_messages roboy_cognition_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_nodejs _roboy_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_cognition_msgs_gennodejs)
add_dependencies(roboy_cognition_msgs_gennodejs roboy_cognition_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_cognition_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_msg_py(roboy_cognition_msgs
  "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Services
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)
_generate_srv_py(roboy_cognition_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
)

### Generating Module File
_generate_module_py(roboy_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_cognition_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_cognition_msgs_generate_messages roboy_cognition_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv" NAME_WE)
add_dependencies(roboy_cognition_msgs_generate_messages_py _roboy_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_cognition_msgs_genpy)
add_dependencies(roboy_cognition_msgs_genpy roboy_cognition_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_cognition_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_cognition_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_cognition_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roboy_cognition_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(roboy_cognition_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_cognition_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_cognition_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roboy_cognition_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(roboy_cognition_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_cognition_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_cognition_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roboy_cognition_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(roboy_cognition_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_cognition_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_cognition_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roboy_cognition_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(roboy_cognition_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_cognition_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_cognition_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roboy_cognition_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(roboy_cognition_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
