# Install script for directory: /workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioData.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioInfo.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/DirectionVector.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FaceCoordinates.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/FacialFeatures.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/SpeechSynthesis.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/AudioLocation.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedFaces.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/Faces.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/RecognizedSpeech.msg"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/msg/IceCream.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/srv" TYPE FILE FILES
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ApplyFilter.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/AssertProperty.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CallQuery.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckProperty.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CheckQuery.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/CreateInstance.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DataQuery.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DescribeScene.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectFace.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIntent.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DriveToLocation.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/EvalSeq2Seq.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindInstances.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/FindObject.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GenerateAnswer.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/GetObject.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LookAtSpeaker.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Payment.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/PlaySound.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTone.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/QualityOfTones.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeFaces.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeObject.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/RecognizeSpeech.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/SaveObject.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowInstances.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowProperty.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/ShowPropertyValue.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/Talk.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TalkToFile.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/TrainSeq2Seq.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/WhichTones.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/DetectIceCream.srv"
    "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/srv/LocalizeObject.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/action" TYPE FILE FILES "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/action/OrderIceCream.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/msg" TYPE FILE FILES
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamAction.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionResult.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamActionFeedback.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamGoal.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamResult.msg"
    "/workspace/ros_ws/devel/share/roboy_cognition_msgs/msg/OrderIceCreamFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_cognition_msgs/catkin_generated/installspace/roboy_cognition_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/include/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/roseus/ros/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/common-lisp/ros/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/share/gennodejs/ros/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/workspace/ros_ws/devel/lib/python3/dist-packages/roboy_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_cognition_msgs/catkin_generated/installspace/roboy_cognition_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/cmake" TYPE FILE FILES "/workspace/ros_ws/build/roboy_communication/roboy_cognition_msgs/catkin_generated/installspace/roboy_cognition_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs/cmake" TYPE FILE FILES
    "/workspace/ros_ws/build/roboy_communication/roboy_cognition_msgs/catkin_generated/installspace/roboy_cognition_msgsConfig.cmake"
    "/workspace/ros_ws/build/roboy_communication/roboy_cognition_msgs/catkin_generated/installspace/roboy_cognition_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_cognition_msgs" TYPE FILE FILES "/workspace/ros_ws/src/roboy_communication/roboy_cognition_msgs/package.xml")
endif()

