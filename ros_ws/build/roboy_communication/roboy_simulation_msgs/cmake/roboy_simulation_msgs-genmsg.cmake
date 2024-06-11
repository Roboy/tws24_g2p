# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_simulation_msgs: 23 messages, 6 services")

set(MSG_I_FLAGS "-Iroboy_simulation_msgs:/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_simulation_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" "geometry_msgs/Vector3:roboy_simulation_msgs/ContactPoint:std_msgs/Header"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Pose"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" "geometry_msgs/Point:roboy_simulation_msgs/LinkInformation:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" "geometry_msgs/Point:roboy_simulation_msgs/BodyInformation:roboy_simulation_msgs/LinkInformation:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" "roboy_simulation_msgs/ControllerParameters"
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" ""
)

get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_custom_target(_roboy_simulation_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_simulation_msgs" "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Services
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_cpp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Module File
_generate_module_cpp(roboy_simulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_simulation_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_simulation_msgs_generate_messages roboy_simulation_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_cpp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_simulation_msgs_gencpp)
add_dependencies(roboy_simulation_msgs_gencpp roboy_simulation_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_simulation_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Services
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_eus(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Module File
_generate_module_eus(roboy_simulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_simulation_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_simulation_msgs_generate_messages roboy_simulation_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_eus _roboy_simulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_simulation_msgs_geneus)
add_dependencies(roboy_simulation_msgs_geneus roboy_simulation_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_simulation_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Services
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_lisp(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Module File
_generate_module_lisp(roboy_simulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_simulation_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_simulation_msgs_generate_messages roboy_simulation_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_lisp _roboy_simulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_simulation_msgs_genlisp)
add_dependencies(roboy_simulation_msgs_genlisp roboy_simulation_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_simulation_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Services
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_nodejs(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Module File
_generate_module_nodejs(roboy_simulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_simulation_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_simulation_msgs_generate_messages roboy_simulation_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_nodejs _roboy_simulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_simulation_msgs_gennodejs)
add_dependencies(roboy_simulation_msgs_gennodejs roboy_simulation_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_simulation_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_msg_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Services
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg;/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)
_generate_srv_py(roboy_simulation_msgs
  "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
)

### Generating Module File
_generate_module_py(roboy_simulation_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_simulation_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_simulation_msgs_generate_messages roboy_simulation_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Abortion.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyPart.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/COM.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ControllerType.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/IMU.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Input.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Joint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LegState.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Model.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/MotorControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Tendon.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/Collision.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/ContactPoint.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/LinkInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/msg/BodyInformation.msg" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateBodyInformation.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/Energies.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymStep.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymReset.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/workspace/ros_ws/src/roboy_communication/roboy_simulation_msgs/srv/GymGoal.srv" NAME_WE)
add_dependencies(roboy_simulation_msgs_generate_messages_py _roboy_simulation_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_simulation_msgs_genpy)
add_dependencies(roboy_simulation_msgs_genpy roboy_simulation_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_simulation_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_simulation_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_simulation_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(roboy_simulation_msgs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roboy_simulation_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_simulation_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_simulation_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(roboy_simulation_msgs_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roboy_simulation_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_simulation_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_simulation_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(roboy_simulation_msgs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roboy_simulation_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_simulation_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_simulation_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(roboy_simulation_msgs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roboy_simulation_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_simulation_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_simulation_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(roboy_simulation_msgs_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roboy_simulation_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
