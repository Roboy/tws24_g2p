# Install script for directory: /workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/ADCvalue.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/ArmStatus.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/ArucoPose.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/BodyPart.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/ControllerState.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DanceCommand.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DarkRoom.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DarkRoomOOTX.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DarkRoomSensor.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DarkRoomStatistics.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/DarkRoomStatus.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/HandCommand.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/JointStatus.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/LighthousePoseCorrection.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MagneticSensor.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorAngle.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorCommand.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorConfig.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorState.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorStatus.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/MotorInfo.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/Neopixel.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/RoboyState.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/SystemStatus.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/msg/Force.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs/srv" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/ControlMode.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/EmergencyStop.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/FrameIK.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/ForwardKinematics.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/InverseKinematics.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/InverseKinematicsMultipleFrames.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/MotorCalibrationService.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/MotorConfigService.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/MyoBrickCalibrationService.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/SetInt16.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/SetStrings.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/SystemCheck.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/TorqueControl.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/srv/XL320.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_middleware_msgs/catkin_generated/installspace/roboy_middleware_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/include/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/roseus/ros/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/common-lisp/ros/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/gennodejs/ros/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_middleware_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_middleware_msgs/catkin_generated/installspace/roboy_middleware_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_middleware_msgs/catkin_generated/installspace/roboy_middleware_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs/cmake" TYPE FILE FILES
    "/workspace/ros_ws/build/roboy_communication/roboy_middleware_msgs/catkin_generated/installspace/roboy_middleware_msgsConfig.cmake"
    "/workspace/ros_ws/build/roboy_communication/roboy_middleware_msgs/catkin_generated/installspace/roboy_middleware_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_middleware_msgs" TYPE FILE FILES "/workspace/ros_ws/src/roboy_communication/roboy_middleware_msgs/package.xml")
endif()

