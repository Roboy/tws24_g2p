#!/usr/bin/env python3

import rospy
import math
import threading
from sensor_msgs.msg import JointState
from roboy_middleware_msgs.msg import MotorCommand
from roboy_middleware_msgs.srv import ControlMode, ControlModeRequest
from bench_pkg.srv import GetCurrentKinematics, GetCurrentKinematicsRequest, GetCurrentKinematicsResponse
from bench_pkg.srv import SetPWM, SetPWMRequest, SetPWMResponse

class BenchInterface:

    def __init__(self):

        # Myobrick Variables
        self._flex_myobrick_global_id = rospy.get_param('flex_myobrick_global_id')
        self._extend_myobrick_global_id = rospy.get_param('extend_myobrick_global_id')

        # Angle Sensor Offset
        self._sensor1_offset = -156      #Offset in degrees -> knee_left_axis0 at 180 degrees 
        self._sensor2_offset = 0         #Offset in degrees -> knee_right_axis0 at 180 degrees

        # Kinematics Variables
        self._current_angle = 0.0
        self._prev_angle = 0.0
        self._current_angular_velocity = 0.0
        self._prev_angular_velocity = 0.0
        self._current_angular_acceleration = 0.0
        self._control_loop_rate = rospy.get_param('control_loop_rate')

        # Subscriber
        self._kinematics_subscriber = rospy.Subscriber('/roboy/pinky/sensing/external_joint_states', JointState, self._kinematics_callback)

        # Publisher
        self._motor_command_publisher = rospy.Publisher('/roboy/pinky/middleware/MotorCommand', MotorCommand, queue_size=10)

        # Services
        self._get_current_kinematics_service = rospy.Service('/bench_pkg/GetCurrentKinematics', GetCurrentKinematics, self.get_current_kinematics)
        self._set_pwm_service = rospy.Service('/bench_pkg/SetPWM', SetPWM, self.set_pwm)

        # Setting Myobrick control mode to PWM
        self._set_control_mode()

    def _kinematics_callback(self, msg: JointState) -> None:
        """Calculates the current angle, angular velocity and angular acceleration of the joint"""
            
        if(msg.name[2] == 'knee_left_axis0' and msg.name[3] == 'knee_left_axis1'):
                    
            # Retriev correct angle from message
            angle1 = math.degrees(msg.position[2]) + self._sensor1_offset
            angle2 = math.degrees(msg.position[0]) + self._sensor2_offset

            # Update kinematics variables
            self._prev_angle = self._current_angle
            self._current_angle = angle1 - angle2
            self._prev_angular_velocity = self._current_angular_velocity
            self._current_angular_velocity = (self._current_angle - self._prev_angle) / self._control_loop_rate
            self._current_angular_acceleration = (self._current_angular_velocity - self._prev_angular_velocity) / self._control_loop_rate

    def _set_control_mode(self) -> None:
        """Sets the control mode for the Myobricks to PWM"""

        service_name = '/roboy/pinky/middleware/ControlMode'
        rospy.wait_for_service(service_name)
        try:
            control_mode_service = rospy.ServiceProxy(service_name, ControlMode)
            request = ControlModeRequest()
            request.control_mode = 3 # PWM mode
            request.set_points = [0]
            request.global_id = [self._flex_myobrick_global_id, self._extend_myobrick_global_id]

            response = control_mode_service(request)
            rospy.loginfo("Myobrick control mode set to PWM")
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s", e)

    ############################################## Bench API ##############################################
    def get_current_kinematics(self, request: GetCurrentKinematicsRequest) -> GetCurrentKinematicsResponse:
        """Returns the current kinematics of the joint"""
        
        response = GetCurrentKinematicsResponse()
        response.current_angle = self._current_angle
        response.current_angular_velocity = self._current_angular_velocity
        response.current_angular_acceleration = self._current_angular_acceleration
        return response

    def set_pwm(self, request: SetPWMRequest) -> SetPWMResponse:
        """Applies the PWM values to the Myobricks when Safety checks are passed"""

        # Retrieve the PWM values from the request
        flex_myobrick_pwm = request.flex_myobrick_pwm
        extend_myobrick_pwm = request.extend_myobrick_pwm

        # Publish the PWM values to the Myobricks
        motor_command = MotorCommand()
        motor_command.global_id = [self._flex_myobrick_global_id, self._extend_myobrick_global_id]
        motor_command.setpoint = [flex_myobrick_pwm, extend_myobrick_pwm]
        self._motor_command_publisher.publish(motor_command)

        # Return true if successful
        response = SetPWMResponse()
        response.success = True
        return response
    
if __name__ == '__main__':
    rospy.init_node("bench_interface")
    BenchInterface()
    rospy.spin()