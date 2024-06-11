cmake_minimum_required(VERSION 2.8.3)
project( roboy_control_msgs )

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

find_package(catkin REQUIRED cmake_modules COMPONENTS
        roscpp
        std_msgs
        std_srvs
        message_generation
        actionlib_msgs
		    geometry_msgs
)

include_directories(
        # include
        ${catkin_INCLUDE_DIRS}
)

add_message_files(
	DIRECTORY
	msg
	FILES
	Behavior.msg
	CameraPos.msg
	ControlLeds.msg
	Emotion.msg
	DangerNotification.msg
	ErrorNotification.msg
	WarningNotification.msg
	DebugNotification.msg
	InfoNotification.msg
	SpatialUpdate.msg
	StartRecordTrajectory.msg
	Strings.msg
        # PerformMovementActionFeedback.msg
        # PerformMovementActionGoal.msg
        # PerformMovementAction.msg
        # PerformMovementActionResult.msg
        # PerformMovementFeedback.msg
        # PerformMovementGoal.msg
        # PerformMovementResult.msg
        # PerformMovementsActionFeedback.msg
        # PerformMovementsActionGoal.msg
        # PerformMovementsAction.msg
        # PerformMovementsActionResult.msg
        # PerformMovementsFeedback.msg
        # PerformMovementsGoal.msg
        # PerformMovementsResult.msg
)

add_service_files(
        DIRECTORY
        srv
        FILES
        ListItems.srv
        MoveYaw.srv
		SetMode.srv
		SetControllerParameters.srv
        ShowEmotion.srv
		TranslationalPTPMotion.srv    
        GetLinkPose.srv
)

add_action_files(
        DIRECTORY
        action
        FILES
        LookAt.action
        MoveEndEffector.action
        PerformMovement.action
        PerformMovements.action
)

generate_messages(
        DEPENDENCIES std_msgs std_srvs actionlib_msgs geometry_msgs
)

catkin_package( CATKIN_DEPENDS roscpp message_runtime message_generation actionlib_msgs
                INCLUDE_DIRS)
