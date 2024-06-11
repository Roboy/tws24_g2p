#!/usr/bin/env python3

import rospy
from controller import Controller
from bench_pkg.srv import MoveRequest, MoveResponse

class PIDController(Controller):
    def __init__(self):
        super().__init__()
        
        # PID Parameters
        self._kp = rospy.get_param('kp')
        self._ki = rospy.get_param('ki')
        self._kd = rospy.get_param('kd')

        # Error Variables
        self._error = 0.0
        self._integral_error = 0.0
        self._derivative_error = 0.0
        self._previous_error = 0.0
        self._output = 0.0
        self._integral_limit = rospy.get_param('integral_limit')

        # PWM Variables
        self._flex_myobrick_pwm = 0.0
        self._extend_myobrick_pwm = 0.0

    ############################################## PID API ##############################################
    def move(self, req: MoveRequest) -> MoveResponse:
        """Calculate motor activations for the given desired kinematics."""
        current_angle = req.current_angle
        desired_angle = req.desired_angle

        rospy.loginfo(f"Current Angle: {current_angle}, Desired Angle: {desired_angle}")

        # Calculate error
        self._error = desired_angle - current_angle

        # Integral Error with anti windup
        self._integral_error += self._error
        self._integral_error = max(min(self._integral_error, self._integral_limit), -self._integral_limit)

        # Derivative Error
        self._derivative_error = self._error - self._previous_error

        # Set output to 0 if error is within accuracy threshold
        if abs(self._error) < self._accuracy_threshold:
            self._output = 0.0
            self._integral_error = 0.0
            return MoveResponse(0.0, 0.0)
        else:
            # PID Output
            self._output = self._kp * self._error + self._ki * self._integral_error + self._kd * self._derivative_error

            # PWM Limit
            self._output = max(min(self._output, self._pwm_limit), -self._pwm_limit)

        # Set PWM signals based on output
        if self._output > 0:
            self._flex_myobrick_pwm = -1.0
            self._extend_myobrick_pwm = self._output
        else:
            self._flex_myobrick_pwm = abs(self._output)
            self._extend_myobrick_pwm = -1.0

        # Update previous error
        self._previous_error = self._error

        # Return response
        return MoveResponse(self._flex_myobrick_pwm, self._extend_myobrick_pwm)

if __name__ == '__main__':
    rospy.init_node('pid_controller')
    PIDController()
    rospy.spin()