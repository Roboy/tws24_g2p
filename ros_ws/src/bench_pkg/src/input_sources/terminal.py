#!/usr/bin/env python3

import rospy
import time
from bench_pkg.srv import DesiredKinematicsInputRequest, DesiredKinematicsInputResponse
from input_source import InputSource

class Terminal(InputSource):
    def __init__(self):
        super().__init__()

    ############################################## Terminal API ##############################################
    def desired_kinematics_input(self, req: DesiredKinematicsInputRequest) -> DesiredKinematicsInputResponse:
        """Query the user for the desired angle and return DesiredKinematicsInputResponse containing the kinematics"""
        
        # Prompt the user for the desired kinematics in docker tmux terminal
        desired_angle = float(input("Enter desired angle: "))
        desired_angular_velocity = float(input("Enter desired angular velocity: "))
        desired_angular_acceleration = float(input("Enter desired angular acceleration: "))

        # Create and return the response containing the desired kinematics
        response = DesiredKinematicsInputResponse()
        response.desired_angle = desired_angle
        response.desired_angular_velocity = desired_angular_velocity
        response.desired_angular_acceleration = desired_angular_acceleration
        return response

if __name__ == '__main__':
    rospy.init_node('terminal')
    terminal = Terminal()
    rospy.spin()