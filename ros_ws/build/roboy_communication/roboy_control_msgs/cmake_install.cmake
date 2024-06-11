# Install script for directory: /workspace/ros_ws/src/roboy_communication/roboy_control_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/workspace/ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Behavior.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/CameraPos.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ControlLeds.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Emotion.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DangerNotification.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/ErrorNotification.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/WarningNotification.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/DebugNotification.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/InfoNotification.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/SpatialUpdate.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/StartRecordTrajectory.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/msg/Strings.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/srv" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ListItems.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/MoveYaw.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetMode.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/SetControllerParameters.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/ShowEmotion.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/TranslationalPTPMotion.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/srv/GetLinkPose.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/action" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/action/LookAt.action"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/action/MoveEndEffector.action"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/action/PerformMovement.action"
    "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/action/PerformMovements.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtAction.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtActionFeedback.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/LookAtFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorAction.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorActionFeedback.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/MoveEndEffectorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementAction.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementActionFeedback.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsAction.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsActionFeedback.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsResult.msg"
    "/workspace/ros_ws/devel/share/roboy_control_msgs/msg/PerformMovementsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_control_msgs/catkin_generated/installspace/roboy_control_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/include/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/roseus/ros/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/common-lisp/ros/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/gennodejs/ros/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_control_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_control_msgs/catkin_generated/installspace/roboy_control_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_control_msgs/catkin_generated/installspace/roboy_control_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs/cmake" TYPE FILE FILES
    "/workspace/ros_ws/build/roboy_communication/roboy_control_msgs/catkin_generated/installspace/roboy_control_msgsConfig.cmake"
    "/workspace/ros_ws/build/roboy_communication/roboy_control_msgs/catkin_generated/installspace/roboy_control_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_control_msgs" TYPE FILE FILES "/workspace/ros_ws/src/roboy_communication/roboy_control_msgs/package.xml")
endif()

