#!/usr/bin/env python3

import rospy
import numpy as np
import matplotlib.pyplot as plt
from bench_pkg.srv import SetPWM, Move, Activate, Babble, Refine, DesiredKinematicsInput, GetCurrentKinematics

class ControlLoop:
    def __init__(self):

        # Control Loop Variables
        self._control_loop_rate = rospy.get_param('control_loop_rate')
        self._mode = rospy.get_param('mode')
        self._accuracy_threshold = rospy.get_param('accuracy_threshold')

        # Experiment Variables
        self._num_periods = rospy.get_param('num_periods')
        self._start_angle_p2p = rospy.get_param('start_angle_p2p')
        self._end_angle_p2p = rospy.get_param('end_angle_p2p')
        self._max_move_time = rospy.get_param('max_move_time')
        self._num_points = rospy.get_param('num_points')
        self._start_angle_sin = rospy.get_param('start_angle_sin')
        self._amplitude_deg = rospy.get_param('amplitude_deg')
        self._periode_sec = rospy.get_param('periode_sec')
        self._controller = rospy.get_param('controller')
        self._model_name = rospy.get_param('model_name')

        # Kinematics Variables
        self._current_angle = 0.0
        self._current_angular_velocity = 0.0
        self._current_angular_acceleration = 0.0

        # BenchInterface clients
        self._set_pwm_client = None                          # Set the PWM on the motors
        self._get_current_kinematics_client = None           # Get the current joint kinematics

        # Controller client
        self._controller_client = None                       # Get required motor PWM to achieve desired kinematics. Only available in 'execute' mode

        # MovementHandler clients
        self._activate_client = None                         # Apply the retrieved PWM from the controller to the motors for certain duration and return current kinematics and desired kinematics
        self._babble_client = None                           # Execute G2P babbling
        self._refine_client = None                           # Execute G2P refinement

        # InputSource client
        self._desired_kinematics_input_client = None         # Get the desired kinematics from the input source

        # Wait for all the services to be available
        self._wait_for_environment()

        # Start the control loop
        self._control_loop()

    def _move_to_initial_position(self, angle: int) -> None:

        # Apply 3 PWM to both flex and extend myobricks to hold the joint in position while allowing the operator to move the joint
        self._set_pwm_client(3,3)

        # Prompt the operator to position the joint to the initial position until the joint is positioned to the initial position
        while(True):
            current_kinematics_response = self._get_current_kinematics_client()
            rospy.loginfo(f"Please position the joint to {angle} degrees. Current Angle: {current_kinematics_response.current_angle}")

            # Check if the joint is positioned to the initial position
            if abs(current_kinematics_response.current_angle - angle) < self._accuracy_threshold:
                # Let the operator know that the position is reached and wait 2 seconds before releasing the joint
                rospy.loginfo(f"Position reached. Please release the joint.")
                rospy.sleep(2)
                break

        # Current Kinematics after the joint is positioned to the initial position (This can vary slightly from the desired position because of the accuracy threshold)
        current_kinematics_response = self._get_current_kinematics_client()
        self._current_angle = current_kinematics_response.current_angle
        self._current_angular_velocity = current_kinematics_response.current_angular_velocity
        self._current_angular_acceleration = current_kinematics_response.current_angular_acceleration

        return

    def _p2p_experiment(self) -> None:
        """
        Define <num_points> Equidistant Points between <_start_angle_p2p> and <_end_angle_p2p>.
        Command the controller to move the joint to each point and hold for <hold_time> seconds.
        Measure the mse between the desired angle and the actual angle.
        Create a plot of the mse over the angle and save it in plots directory.
        """

        # Initialize Variables
        step_length = (self._end_angle_p2p - self._start_angle_p2p) / self._num_points
        desired_angles = np.arange(self._start_angle_p2p, self._end_angle_p2p + step_length, step_length)
        actual_achieved_angles = []
        mse = []

        # Prompt the operator to position the joint to the initial position
        self._move_to_initial_position(self._start_angle_p2p)

        for angle in desired_angles:

            # Move the joint until the desired angle is reached (within accuracy threshold) or max move time
            start_time = rospy.get_time()

            while(rospy.get_time() - start_time < self._max_move_time):
           
                try:

                    # Get the required motor PWM to get from the current kinematics to the desired kinematics
                    controller_response = self._controller_client(  self._current_angle,
                                                                    self._current_angular_velocity,
                                                                    self._current_angular_acceleration,
                                                                    angle,
                                                                    0.0,
                                                                    0.0)
                    
                    # Apply the PWM values to the motors and return the current kinematics after the specified duration
                    activate_response = self._activate_client(controller_response.flex_myobrick_pwm, controller_response.extend_myobrick_pwm, self._control_loop_rate)
                    
                    # Update kinematic variables with resulting kinematics after activation
                    self._current_angle = activate_response.current_angle
                    self._current_angular_velocity = activate_response.current_angular_velocity
                    self._current_angular_acceleration = activate_response.current_angular_acceleration

                except rospy.ServiceException as e:
                    rospy.loginfo("Exciting control loop")
                    break

            # Measure mse
            mse.append((angle - self._current_angle)**2)
            actual_achieved_angles.append(self._current_angle)

        # Create a plot of the desired angle vs actual achieved angle and include the mse
        fig, ax1 = plt.subplots()

        ax1.scatter(desired_angles, desired_angles, label='Desired Angle', color='blue')
        ax1.scatter(desired_angles, actual_achieved_angles, label='Actual Achieved Angle', color='green')
        ax1.set_xlabel('Angle (degrees)')
        ax1.set_ylabel('Angle (degrees)')
        ax1.legend(loc='upper left')
        ax1.set_title('P2P Experiment')

        ax2 = ax1.twinx()
        ax2.plot(desired_angles, mse, label='MSE', color='red')
        ax2.set_ylabel('MSE')
        ax2.legend(loc='upper right')

        plt.grid(True)
        plt.tight_layout()

        if self._controller == 'g2p':
            plt.savefig(f'/workspace/plots/p2p_experiment_g2p_{self._model_name}.png')
        else:
            plt.savefig(f'/workspace/plots/p2p_experiment_pid.png')

    def _sinusoidal_experiment(self) -> None:
        """
        Move the joint in a sinusoidal pattern based on given amplitude and period.
        Measure the mse between the desired angle and the actual angle.
        Create a plot of the desired and actual angles over time and save it in the plots directory.
        """
        # Time parameters
        total_time = self._periode_sec * self._num_periods
        granularity = int(total_time / self._control_loop_rate)
        time_points = np.linspace(0, total_time, granularity)

        self._move_to_initial_position(self._start_angle_sin)

        # Desired angles based on sinusoidal function
        desired_angles = self._current_angle + self._amplitude_deg * np.sin(2 * np.pi * time_points / self._periode_sec)
        actual_achieved_angles = []
        mse = []

        for t, desired_angle in zip(time_points, desired_angles):

            try:
                controller_response = self._controller_client(
                    self._current_angle,
                    self._current_angular_velocity,
                    self._current_angular_acceleration,
                    desired_angle,
                    0.0,
                    0.0
                )
                
                activate_response = self._activate_client(
                    controller_response.flex_myobrick_pwm,
                    controller_response.extend_myobrick_pwm,
                    self._control_loop_rate
                )
                
                self._current_angle = activate_response.current_angle
                self._current_angular_velocity = activate_response.current_angular_velocity
                self._current_angular_acceleration = activate_response.current_angular_acceleration

            except rospy.ServiceException as e:
                rospy.loginfo("Exiting control loop")
                break

            # Apply 3 PWM to both flex and extend myobricks to hold the joint in position while allowing the operator to move the joint
            self._set_pwm_client(3,3)

            mse.append((desired_angle - self._current_angle)**2)
            actual_achieved_angles.append(self._current_angle)

        fig, ax1 = plt.subplots()

        ax1.plot(time_points, desired_angles, label='Desired Angle', color='blue')
        ax1.plot(time_points, actual_achieved_angles, label='Actual Achieved Angle', color='green')
        ax1.set_xlabel('Time (seconds)')
        ax1.set_ylabel('Angle (degrees)')
        ax1.legend(loc='upper left')
        ax1.set_title('Sinusoidal Experiment')

        ax2 = ax1.twinx()
        ax2.plot(time_points, mse, label='MSE', color='red')
        ax2.set_ylabel('MSE')
        ax2.legend(loc='upper right')

        plt.grid(True)
        plt.tight_layout()

        if self._controller == 'g2p':
            plt.savefig(f'/workspace/plots/sinusoidal_experiment_g2p_{self._model_name}.png')
        else:
            plt.savefig(f'/workspace/plots/sinusoidal_experiment_pid.png')

    def _wait_for_environment(self) -> None:
        rospy.loginfo("Waiting for BenchInterface...")
        try:
            rospy.wait_for_service('/bench_pkg/SetPWM', timeout=10)
            rospy.wait_for_service('/bench_pkg/GetCurrentKinematics', timeout=10)
        except rospy.ROSException:
            rospy.logerr("BenchInterface not ready. Exiting.")
            return
        self._set_pwm_client = rospy.ServiceProxy('/bench_pkg/SetPWM', SetPWM)
        self._get_current_kinematics_client = rospy.ServiceProxy('/bench_pkg/GetCurrentKinematics', GetCurrentKinematics)
        rospy.loginfo("BenchInterface ready.")

        if self._mode == 'execute' or self._mode == 'p2p' or self._mode == 'sinusoidal':
            rospy.loginfo("Waiting for Controller...")
            try:
                rospy.wait_for_service('/bench_pkg/Move', timeout=10)
            except rospy.ROSException:
                rospy.logerr("Controller not ready. Exiting.")
                return
            self._controller_client = rospy.ServiceProxy('/bench_pkg/Move', Move)
            rospy.loginfo("Controller ready.")

        rospy.loginfo("Waiting for MovementHandler...")
        try:
            rospy.wait_for_service('/bench_pkg/Activate', timeout=10)
            rospy.wait_for_service('/bench_pkg/Babble', timeout=10)
            rospy.wait_for_service('/bench_pkg/Refine', timeout=10)
        except rospy.ROSException:
            rospy.logerr("MovementHandler not ready. Exiting.")
            return
        self._activate_client = rospy.ServiceProxy('/bench_pkg/Activate', Activate)
        self._babble_client = rospy.ServiceProxy('/bench_pkg/Babble', Babble)
        self._refine_client = rospy.ServiceProxy('/bench_pkg/Refine', Refine)
        rospy.loginfo("MovementHandler ready.")

        rospy.loginfo("Waiting for InputSource...")
        try:
            rospy.wait_for_service('/bench_pkg/DesiredKinematicsInput', timeout=10)
        except rospy.ROSException:
            rospy.logerr("InputSource not ready. Exiting.")
            return
        self._desired_kinematics_input_client = rospy.ServiceProxy('/bench_pkg/DesiredKinematicsInput', DesiredKinematicsInput)
        rospy.loginfo("InputSource ready.")

    def _control_loop(self) -> None:
        # Spool in tendons for 10 seconds to avoid tendon slackness at the start of the control loop
        rospy.loginfo("Spooling in tendons for 10 seconds...")
        self._activate_client(3.0, 3.0, 10)
        rospy.loginfo("Tendons spooled in.")

        # Retrieve the current kinematics at the start of the control loop
        current_kinematics_response = self._get_current_kinematics_client()
        self._current_angle = current_kinematics_response.current_angle
        self._current_angular_velocity = current_kinematics_response.current_angular_velocity
        self._current_angular_acceleration = current_kinematics_response.current_angular_acceleration

        # Execute the control loop based on the mode. The control loop can be in 'train', 'execute', 'p2p' or 'sinusoidal' mode
        if self._mode == 'train':
                rospy.loginfo("Training G2P Controller")
                self._babble_client()

                # Ask operator to press enter if they want to proceed with refinement or enter q to exit
                user_input = input("Press enter to proceed with refinement or q and enter to exit: ")
                if user_input == 'q':
                    rospy.loginfo("Exiting control loop")
                    return             

                self._refine_client()

                rospy.loginfo("G2P Controller trained and refined. Exiting control loop")
                return

        elif self._mode == 'execute':
            rospy.loginfo("Executing Control Loop")
            while not rospy.is_shutdown():

                try:
                    # Retrieve the desired kinematics from the input source
                    desired_kinematics_respons = self._desired_kinematics_input_client()

                    # Get the required motor PWM to get from the current kinematics to the desired kinematics
                    controller_response = self._controller_client(  self._current_angle,
                                                                    self._current_angular_velocity,
                                                                    self._current_angular_acceleration,
                                                                    desired_kinematics_respons.desired_angle,
                                                                    desired_kinematics_respons.desired_angular_velocity,
                                                                    desired_kinematics_respons.desired_angular_acceleration)
                    
                    # Apply the PWM values to the motors and return the current kinematics after the specified duration
                    activate_response = self._activate_client(controller_response.flex_myobrick_pwm, controller_response.extend_myobrick_pwm, self._control_loop_rate)
                    
                    # Update kinematic variables with resulting kinematics after activation
                    self._current_angle = activate_response.current_angle
                    self._current_angular_velocity = activate_response.current_angular_velocity
                    self._current_angular_acceleration = activate_response.current_angular_acceleration
                except rospy.ServiceException as e:
                    rospy.loginfo("Exciting control loop")
                    break
            
            rospy.loginfo("Control Loop Completed")
            return

        elif self._mode == 'p2p':
            rospy.loginfo("Executing P2P Experiment")
            self._p2p_experiment()
            rospy.loginfo("P2P Experiment Completed")
            return
        
        elif self._mode == 'sinusoidal':
            rospy.loginfo("Executing Sinusoidal Experiment")
            self._sinusoidal_experiment()
            rospy.loginfo("Sinusoidal Experiment Completed")
            return
            
if __name__ == '__main__':
    rospy.init_node('control_loop')
    control_loop = ControlLoop()
    rospy.spin()