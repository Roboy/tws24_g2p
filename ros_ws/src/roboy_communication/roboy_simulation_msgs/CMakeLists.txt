cmake_minimum_required(VERSION 2.8.3)
project( roboy_simulation_msgs )

find_package(catkin REQUIRED cmake_modules COMPONENTS
        roscpp
        std_msgs
        std_srvs
        message_generation
        geometry_msgs
        )
include_directories(    include
                        ${catkin_INCLUDE_DIRS})

add_message_files(
        DIRECTORY
        msg

        FILES
        Abortion.msg
        BodyPart.msg
        COM.msg
        ControllerParameters.msg
		ControllerType.msg
        ExternalForce.msg
        ForceTorque.msg
        IMU.msg
        Input.msg
        Joint.msg
        JointState.msg
        LegState.msg
	Model.msg
        MotorControl.msg
        RecordingControl.msg
        Tendon.msg
	TendonInitialization.msg
	TendonUpdate.msg
        VisualizationControl.msg
        Collision.msg
        ContactPoint.msg
        LinkInformation.msg
        BodyInformation.msg
)

add_service_files(
        DIRECTORY
		srv
        FILES
        UpdateBodyInformation.srv
        UpdateControllerParameters.srv
        Energies.srv
		GymStep.srv
		GymReset.srv
		GymGoal.srv
)

generate_messages(DEPENDENCIES std_msgs std_srvs geometry_msgs)

catkin_package( CATKIN_DEPENDS roscpp message_runtime message_generation)
