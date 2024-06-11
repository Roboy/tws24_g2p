#!/usr/bin/env python3

import rospy
import numpy as np
import pandas as pd
import os
import sklearn
from sklearn.neural_network import MLPRegressor
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
from matplotlib import pyplot as plt
import joblib
from bench_pkg.srv import (SetPWM, GetCurrentKinematics,
                           Activate, ActivateRequest, ActivateResponse,
                           Babble, BabbleRequest, BabbleResponse,
                           Refine, RefineRequest, RefineResponse)

class MovementHandler:
    def __init__(self):

        # BenchInterface clients
        self._set_pwm_client = None
        self._get_current_kinematics_client = None
        self._control_loop_rate = rospy.get_param('control_loop_rate')
        self._accuracy_threshold = rospy.get_param('accuracy_threshold')
        self._wait_for_environment()

        # General Learning  & Control Variables
        self._model_name = rospy.get_param('model_name')
        self._dynamics = rospy.get_param('dynamics')
        self._architecture = rospy.get_param('architecture')
        self._babbling_seconds = rospy.get_param('babbling_seconds')
        self._activation_generation_steps = rospy.get_param('activation_generation_steps')
        self._pass_chance = rospy.get_param('pass_chance')
        self._max_pwm = rospy.get_param('max_pwm')
        self._min_pwm = rospy.get_param('min_pwm')
        self._max_angle = rospy.get_param('max_angle')
        self._min_angle = rospy.get_param('min_angle')
        self._mid_angle = self._min_angle + ((self._max_angle - self._min_angle) / 2)
        self._babbling_version = rospy.get_param('babbling_version')
        self._min_spool_in_pwm = rospy.get_param('min_spool_in_pwm')
        self._non_active_pwm = rospy.get_param('non_active_pwm')
        self._percentage_hold = rospy.get_param('percentage_hold')
        self._percentage_activate_flex = rospy.get_param('percentage_activate_flex')
        self._percentage_activate_extend = rospy.get_param('percentage_activate_extend')
        self._num_samples = 0
        self._flex_myobrick_activations = []
        self._extend_myobrick_activations = []
        self._average_angle_change = 0
        self._training_data = pd.DataFrame(columns=['flex_myobrick_pwm',
                                                    'extend_myobrick_pwm',
                                                    'current_angle',
                                                    'current_angular_velocity',
                                                    'current_angular_acceleration',
                                                    'desired_angle',
                                                    'desired_angular_velocity',
                                                    'desired_angular_acceleration'])
        
        # Initialize the model based on selected architecture
        if self._architecture == "original":
            self._model = MLPRegressor(
                hidden_layer_sizes=15,
                activation="logistic",
                verbose=True,
                early_stopping=True,
                warm_start=False,
                max_iter=1000
            )
        elif self._architecture == "optimized":
            self._model = MLPRegressor(
                hidden_layer_sizes=(64, 32),
                activation="logistic",
                verbose=True,
                early_stopping=True,
                warm_start=False,
                max_iter=1000
            )

        # Reinforcement Learning Variables
        self._num_refinement_kinematics = rospy.get_param('num_refinement_kinematics')
        self._initial_angles = [self._min_angle, self._mid_angle, self._max_angle]
        self._num_trials_phase_1 = rospy.get_param('num_trials_phase_1')
        self._num_trials_phase_2 = rospy.get_param('num_trials_phase_2')
        self._reward_threshold = rospy.get_param('reward_threshold')
        self._phase_1_approach = rospy.get_param('phase_1_approach')
        self._phase_1_variation_threshold = rospy.get_param('phase_1_variation_threshold')
        self._a = rospy.get_param('a')
        self._b = rospy.get_param('b')
        self._sigma = rospy.get_param('sigma')
        self._phase_2_rewards = []
        self._best_reward = None
        self._best_activations = None
        self._activations_vector = None
        self._kinematics_vector = None
        self._actual_kinematics_vector = None
        self._random_desired_angle = 0.0
        self._random_desired_angular_velocity = 0.0
        self._random_desired_angular_acceleration = 0.0

        # Services
        self._activate_service = rospy.Service('/bench_pkg/Activate', Activate, self.activate)
        self._activate_client = rospy.ServiceProxy('/bench_pkg/Activate', Activate)
        self._babble_service = rospy.Service('/bench_pkg/Babble', Babble, self.babble)
        self._refine_service = rospy.Service('/bench_pkg/Refine', Refine, self.refine)

    def _wait_for_environment(self) -> None:
        try:
            rospy.wait_for_service('/bench_pkg/SetPWM', timeout=10)
            rospy.wait_for_service('/bench_pkg/GetCurrentKinematics', timeout=10)
        except rospy.ROSException:
            rospy.logerr("BenchInterface not ready. Exiting.")
            return
        self._set_pwm_client = rospy.ServiceProxy('/bench_pkg/SetPWM', SetPWM)
        self._get_current_kinematics_client = rospy.ServiceProxy('/bench_pkg/GetCurrentKinematics', GetCurrentKinematics)        

    def _generate_activations(self) -> np.ndarray:

        # Initialize the activations vector (dimension: num_samples x 2) with zeros
        activations = np.zeros((self._num_samples, 2))

        # Babbling Version: Original
        if self._babbling_version == "original":
            possible_activations = np.arange(self._min_pwm, self._max_pwm + self._activation_generation_steps, self._activation_generation_steps)
            # Randomly choose the activations for the flex and extend myobricks
            for i in range(self._num_samples):
                if np.random.rand() < self._pass_chance:
                    activations[i] = np.random.choice(possible_activations, 2)
                else:
                    activations[i] = activations[i - 1]
            
        # Babbling Version: Optimized
        # Similar to biological muscles with agonist and antagonist, one myobrick is activated while the other receives PWM -1 (non active)
        # PWM -1 reduces the resistance of the myobrick to the movement of the other myobrick, while not spooling out tendons thus not producing slackness
        # The value for the activated myobrick is randomly chosen between min_spool_in_pwm (gently activated) and pwm_max (fully activate)
        # For example: 20% of the time, both activations are set to 3 so that the ann learns to hold the joint in position
        # The myobricks get roughly equal times of activation ( For example 40% each) to ensure fair distribution of activations but the activator is chosen randomly
        # Similar to the original babbling, the myobrick activations are changed with a certain pass chance
        if self._babbling_version == "optimized":
            possible_activations = np.arange(self._min_spool_in_pwm, self._max_pwm + self._activation_generation_steps, self._activation_generation_steps)
            for i in range(self._num_samples):
                if np.random.rand() < self._pass_chance:
                    
                    # Randomly choose the activations for the flex and extend myobricks based on the percentage parameters
                    random_number = np.random.rand()

                    if random_number < self._percentage_hold:
                        # Hold the joint in position for given percentage of the time
                        activations[i] = [3, 3]

                    elif random_number < self._percentage_hold + self._percentage_activate_flex:
                        # Activate the flex myobrick 40% of the time
                        activations[i][0] = np.random.choice(possible_activations)
                        activations[i][1] = self._non_active_pwm

                    elif random_number < self._percentage_hold + self._percentage_activate_flex + self._percentage_activate_extend:
                        # Activate the extend myobrick 40% of the time
                        activations[i][0] = self._non_active_pwm
                        activations[i][1] = np.random.choice(possible_activations)
                else:
                    activations[i] = activations[i - 1]

        return activations
        
    def _prepare_training_data(self) -> tuple:
        
        # Extract the input and output data
        if self._dynamics == 'kinematic':
            input = self._training_data[['current_angle',
                                         'current_angular_velocity',
                                         'current_angular_acceleration',
                                         'desired_angle',
                                         'desired_angular_velocity',
                                         'desired_angular_acceleration']]
        elif self._dynamics == 'angle_only':
            input = self._training_data[['current_angle', 'desired_angle']]
        
        output = self._training_data[['flex_myobrick_pwm', 'extend_myobrick_pwm']]
        
        # Normalize the data with MinMaxScaler
        scalerInput = MinMaxScaler()
        scalerOutput = MinMaxScaler()
        input_scaled = scalerInput.fit_transform(input)
        output_scaled = scalerOutput.fit_transform(output)

        # Split the data into training and testing sets
        input_train, input_test, output_train, output_test = train_test_split(input_scaled, output_scaled, test_size=0.2)

        return input_train, input_test, output_train, output_test, scalerInput, scalerOutput

    def _remove_non_deterministic_data(self) -> None:
        """Remove non deterministic data if vector (current_angle, flex_myobrick_pwm, extend_myobrick_pwm) has more than one desired_angle"""

        # Round the necessary columns to the first decimal
        self._training_data['current_angle_rounded'] = self._training_data['current_angle'].round(1)
        self._training_data['desired_angle_rounded'] = self._training_data['desired_angle'].round(1)

        # Group by the rounded columns and flex/extend_pwm columns
        grouped = self._training_data.groupby(['current_angle_rounded', 'flex_myobrick_pwm', 'extend_myobrick_pwm'])

        # Find groups with more than one unique desired_angle_rounded and difference greater than 0.1
        def filter_groups(group):
            unique_angles = group['desired_angle_rounded'].unique()
            if len(unique_angles) > 1:
                max_diff = unique_angles.max() - unique_angles.min()
                return max_diff > 0.1
            return False

        to_drop = grouped.filter(filter_groups)

        # Drop these rows from the original dataframe
        self._training_data.drop(to_drop.index)

        # Drop the temporary columns used for rounding
        self._training_data = self._training_data.drop(columns=['current_angle_rounded', 'desired_angle_rounded'])

    def _merge_similar_rows(self) -> None:
        """Choose one representative pwm pair for each vector (current_angle, desired_angle)"""

        # Step 1: Round the necessary columns to the first decimal
        self._training_data['current_angle_rounded'] = self._training_data['current_angle'].round(1)
        self._training_data['desired_angle_rounded'] = self._training_data['desired_angle'].round(1)

        # Step 2: Group by the rounded columns
        grouped = self._training_data.groupby(['current_angle_rounded', 'desired_angle_rounded'])

        # Step 3: For each group, choose one representative for flex_myobrick_pwm and extend_myobrick_pwm
        self._training_data = grouped.apply(lambda group: group.iloc[0]).reset_index(drop=True)

        # Step 4: Drop the temporary rounding columns
        self._training_data = self._training_data.drop(columns=['current_angle_rounded', 'desired_angle_rounded'])

    def _clean_training_data(self) -> None:
        self._remove_non_deterministic_data()
        self._merge_similar_rows()

    def _move_to_initial_position(self, position: int) -> None:

        # Apply 3 PWM to both flex and extend myobricks to hold the joint in position while allowing the operator to move the joint
        self._set_pwm_client(3,3)

        # Prompt the operator to position the joint to the initial position until the joint is positioned to the initial position
        while(True):
            current_kinematics_response = self._get_current_kinematics_client()
            rospy.loginfo(f"Please position the joint to {position} degrees. Current Angle: {current_kinematics_response.current_angle}")

            # Check if the joint is positioned to the initial position
            if abs(current_kinematics_response.current_angle - position) < self._accuracy_threshold:
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

    def _reward_function(self, desired_kinematics_vector, actual_kinematics_vector) -> float:
        # Calculate the reward based on the desired and actual kinematics vectors
        # Reward is the negative of the mean squared error between the desired and actual kinematics vectors at each index. These mse values are then averaged.
        # For now only consider the angle (first column) in the vectors

        desired_angles = desired_kinematics_vector[:, 0]
        actual_angles = actual_kinematics_vector[:, 0]

        squared_difference = (desired_angles - actual_angles) ** 2

        mse = squared_difference.mean()
       
        return -mse

    ############################################## MovementHandler API ##############################################
    def activate(self, req: ActivateRequest) -> ActivateResponse:

        flex_myobrick_pwm = req.flex_myobrick_pwm
        extend_myobrick_pwm = req.extend_myobrick_pwm
        duration = req.duration

        # Activate the motors and return the current kinematics after the specified duration. Stop the motors after the duration.
        self._set_pwm_client(flex_myobrick_pwm, extend_myobrick_pwm)
        rospy.sleep(duration)
        current_kinematics = self._get_current_kinematics_client()
        return ActivateResponse(current_kinematics.current_angle, current_kinematics.current_angular_velocity, current_kinematics.current_angular_acceleration)
    
    def babble(self, req: BabbleRequest) -> BabbleResponse:
        
        rospy.loginfo("Applying and recording babbling data...")

        # Generate random activations for the flex and extend myobricks
        self._num_samples = int(np.round(self._babbling_seconds / self._control_loop_rate))
        activations = self._generate_activations()
        self._flex_myobrick_activations = activations[:, 0]
        self._extend_myobrick_activations = activations[:, 1]
        
        # Get the current kinematics
        current_kinematics_response = self._get_current_kinematics_client()
        current_angle = current_kinematics_response.current_angle
        current_angular_velocity = current_kinematics_response.current_angular_velocity
        current_angular_acceleration = current_kinematics_response.current_angular_acceleration
        
        # Activate the motors with the generated activations and append the training data
        for i in range(self._num_samples):
            activate_response = self._activate_client(self._flex_myobrick_activations[i], self._extend_myobrick_activations[i], self._control_loop_rate)
            new_row = {
                'flex_myobrick_pwm': self._flex_myobrick_activations[i], 
                'extend_myobrick_pwm': self._extend_myobrick_activations[i],
                'current_angle': current_angle,
                'current_angular_velocity': current_angular_velocity,
                'current_angular_acceleration': current_angular_acceleration,
                'desired_angle': activate_response.current_angle,
                'desired_angular_velocity': activate_response.current_angular_velocity,
                'desired_angular_acceleration': activate_response.current_angular_acceleration
            }
            self._training_data = pd.concat([self._training_data, pd.DataFrame(new_row, index=[0])])
            
            # Update the current kinematics
            current_angle = activate_response.current_angle
            current_angular_velocity = activate_response.current_angular_velocity
            current_angular_acceleration = activate_response.current_angular_acceleration

        # Stop Motors when babbling is done
        self._set_pwm_client(3, 3)

        # Save the dirty training data in dataset directory at /workspace/datasets
        self._training_data.to_csv(f'/workspace/datasets/{self._model_name}_dirty.csv', index=False)
        rospy.loginfo(f"Babbling data recorded and saved as /workspace/datasets/{self._model_name}_dirty.csv")

        # Clean and save the cleaned training data
        rospy.loginfo("Cleaning and preparing training data...")
        self._clean_training_data()
        self._training_data.to_csv(f'/workspace/datasets/{self._model_name}.csv', index=False)
        rospy.loginfo(f"Training data cleaned and saved as /workspace/datasets/{self._model_name}.csv")

        # Calculate the average angle change from the babbling data
        self._average_angle_change = self._training_data['current_angle'].diff().abs().mean()

        #Preparing the data for training
        input_train, input_test, output_train, output_test, self._scalerInput, self._scalerOutput = self._prepare_training_data()

        # Train the model
        rospy.loginfo("Training ANN...")
        self._model.fit(input_train, output_train)

        # Save the model in models directory at /workspace/models
        joblib.dump(self._model, f'/workspace/models/{self._model_name}.pkl')

        # Save the scalers in scalers directory at /workspace/scalers
        joblib.dump(self._scalerInput, f'/workspace/scalers/{self._model_name}_input_scaler.pkl')
        joblib.dump(self._scalerOutput, f'/workspace/scalers/{self._model_name}_output_scaler.pkl')

        # Plot learning curve (training loss) and save it in plots directory at /workspace/plots. Print mean squared error on test data.
        output_predicted = self._model.predict(input_test)
        mse = mean_squared_error(output_test, output_predicted)
        rospy.loginfo(f"Mean Squared Error on test data: {mse}")

        plt.figure(figsize=(10, 5))
        plt.plot(self._model.loss_curve_, label="Training Loss")
        plt.title("Motor Babbling Learning Curve")
        plt.xlabel("Iterations")
        plt.ylabel("Loss")
        plt.legend()
        plt.savefig(f'/workspace/plots/{self._model_name}_mb_learning_curve.png')

        rospy.loginfo(f"Training completed and model saved as /workspace/models/{self._model_name}.pkl\n"
                      f"Scalers saved as /workspace/scalers/{self._model_name}_input_scaler.pkl and /workspace/scalers/{self._model_name}_output_scaler.pkl\n"
                      f"Plots saved as /workspace/plots/{self._model_name}_mb_learning_curve.png\n"
                      )

        # Return the babbling response
        return BabbleResponse(True)

    def refine(self, req: RefineRequest) -> RefineResponse:

        rospy.loginfo("Refining the model...")

        # Loading the model, scalers and training data
        self._model = joblib.load(f'/workspace/models/{self._model_name}.pkl')
        self._scalerInput = joblib.load(f'/workspace/scalers/{self._model_name}_input_scaler.pkl')
        self._scalerOutput = joblib.load(f'/workspace/scalers/{self._model_name}_output_scaler.pkl')
        self._training_data = pd.read_csv(f'/workspace/datasets/{self._model_name}.csv')

        # Refinement Loop
        for _ in range(self._num_refinement_kinematics):

            # Random Desired Kinematics. Only the desired angle is considered for now
            self._random_desired_angle = np.random.uniform(low=self._min_angle, high=self._max_angle)
            self._random_desired_angular_velocity = 0
            self._random_desired_angular_acceleration = 0

            # Refine the model for the desired angle starting at each of the initial positions
            for angle in self._initial_angles:

                # Prompt Operator to position the joint to the initial position
                self._move_to_initial_position(angle)

                # Kinematic steps to reach the desired angle
                self._average_angle_change = self._training_data['current_angle'].diff().abs().mean()
                n = int(abs(self._random_desired_angle - angle) / self._average_angle_change) + 1

                rospy.loginfo(f"Refining the model for the random desired angle {self._random_desired_angle} with {n} kinematic steps starting at position {angle}...")

                # Initialize the kinematics vector (Dimension: n x 6) with the n intermediate kinematic steps (incrementing/decrementig intermediate angle at each step according to average_angle_change)
                if angle < self._random_desired_angle:
                    intermediate_angles = np.arange(angle, self._random_desired_angle, self._average_angle_change)
                    intermediate_angles_shifted = np.arange(angle + self._average_angle_change, self._random_desired_angle + self._average_angle_change, self._average_angle_change)
                else:
                    intermediate_angles = np.arange(angle, self._random_desired_angle, -self._average_angle_change)
                    intermediate_angles_shifted = np.arange(angle - self._average_angle_change, self._random_desired_angle - self._average_angle_change, -self._average_angle_change)

                self._kinematics_vector = np.zeros((n, 6))
                self._kinematics_vector[:, 0] = intermediate_angles
                self._kinematics_vector[:, 3] = intermediate_angles_shifted

                # Initialize the actual kinematics vector (Dimension: n x 3) with the actual kinematics achieved by applying the activations vector on the test bench
                self._actual_kinematics_vector = np.zeros((n, 3))

                # Initialize the activations vector (Dimension: n x 2) with the n intermediate activations to reach the desired kinematics as predicted by the ANN
                if self._dynamics == 'kinematic':
                    input_scaled = self._scalerInput.transform(self._kinematics_vector)
                elif self._dynamics == 'angle_only':
                    input_scaled = self._scalerInput.transform(self._kinematics_vector[:, [0, 3]])

                output_scaled = self._model.predict(input_scaled)
                self._activations_vector = self._scalerOutput.inverse_transform(output_scaled)
                
                # Refinement Phase 1: Semi Random variation of activations vector until reward threshold is surpassed. The reward is determined by the reward function
                for i in range(self._num_trials_phase_1):

                    rospy.loginfo(f"Refinement Phase 1: Trial {i}. Trying to reach random desired angle {self._random_desired_angle} in {n} steps...")
                    
                    # Approach 2: vary the activations vector randomly (add or subtract a value within a certain range defined by a and b)
                    if self._phase_1_approach == "original":
                        self._activations_vector = self._activations_vector + np.random.uniform(low=self._a, high=self._b, size=self._activations_vector.shape)
                    
                    # Approach 1: Semi Random: Randomly move the activations closer or further apart from each other depending on the distance between them
                    # Vary each activation pair in the activations vector as follows:
                    # If the distance between flex and extend activations is below 2, increase the smaller activation by random value between 0 and 1 and decrease the larger activation by another random value between 0 and 1.
                    # If the distance between flex and extend activations is above 2, increase the smaller activation by random value between 0 and 1 and decrease the larger activation by another random value between 0 and 1.
                    # Reason: The ANN understands the general movement which we want to refine. If it predicts 2 activations that are close to each other, it means that the movement is already close to the desired movement. 
                    # If the activations are far from each other, it means that the movement is not close to the desired movement and that it wants to move up or down.
                    if self._phase_1_approach == "optimized":
                        for j in range(n):
                            if abs(self._activations_vector[j][0] - self._activations_vector[j][1]) < self._phase_1_variation_threshold:
                                # Activations are close to each other: Move them closer to gether by increasing the smaller activation and decreasing the larger activation
                                if self._activations_vector[j][0] < self._activations_vector[j][1]:
                                    self._activations_vector[j][0] += np.random.uniform(low=0, high=1)
                                    self._activations_vector[j][1] -= np.random.uniform(low=0, high=1)
                                else:
                                    self._activations_vector[j][0] -= np.random.uniform(low=0, high=1)
                                    self._activations_vector[j][1] += np.random.uniform(low=0, high=1)
                            else:
                                # Activations are far from each other: Move them further apart by decreasing the smaller activation and increasing the larger activation
                                if self._activations_vector[j][0] < self._activations_vector[j][1]:
                                    self._activations_vector[j][0] -= np.random.uniform(low=0, high=1)
                                    self._activations_vector[j][1] += np.random.uniform(low=0, high=1)
                                else:
                                    self._activations_vector[j][0] += np.random.uniform(low=0, high=1)
                                    self._activations_vector[j][1] -= np.random.uniform(low=0, high=1)

                    # Apply the activations vector on the test bench and get the final achieved kinematics. These values are not added to the training data.
                    for j in range(n):
                        activate_response = self._activate_client(self._activations_vector[j][0], self._activations_vector[j][1], self._control_loop_rate)
                        self._actual_kinematics_vector[j] = [activate_response.current_angle, activate_response.current_angular_velocity, activate_response.current_angular_acceleration]

                    # Calculate the reward for the desired kinematics in the kinematics vector (last 3 columns) and the actual kinematics in the actual kinematics vector
                    reward = self._reward_function(self._kinematics_vector[:, 3:], self._actual_kinematics_vector)
                    rospy.loginfo(f"Reward after trial {i}: {reward}")

                    # Check if the reward surpasses the threshold and update the best reward and activations vector
                    if reward > self._reward_threshold:
                        self._best_reward = reward
                        self._best_activations = self._activations_vector
                        break

                    # Prompt the operator to reposition the joint to the initial position
                    if i < self._num_trials_phase_1 - 1:
                        self._move_to_initial_position(angle)

                # If reward did not surpass the threshold abort refinement and inform operator to try again with new motor babbling data
                if self._best_reward is None:
                    rospy.loginfo(f"Refinement failed because reward did not surpass the threshold after {self._num_trials_phase_1} trials. Please try again with new motor babbling data.")
                    return RefineResponse(False)
                
                # Inform the operator that the refinement phase 1 was successful and the reward surpassed the threshold
                if self._best_reward > self._reward_threshold:
                    rospy.loginfo(f"Refinement Phase 1 successful. Reward surpassed the threshold after {i} trials.")

                # Refinement Phase 2: Multi-variant Gaussian Distribution based Stochastic Search
                for j in range(self._num_trials_phase_2):

                    # Prompt Operator to reposition the joint to the initial position
                    self._move_to_initial_position(angle)

                    # Randomly generate activations vector based on the best activations vector and a multi-variant gaussian distribution
                    self._activations_vector = np.random.normal(loc=self._best_activations, scale=self._sigma)

                    # Apply the activations vector on the test bench and get the final achieved kinematics.
                    # Add the results to the training data to learn from every iteration (experience)
                    for k in range(n):
                        current_kinematics_response = self._get_current_kinematics_client()
                        activate_response = self._activate_client(self._activations_vector[k][0], self._activations_vector[k][1], self._control_loop_rate)
                        new_row = {
                            'flex_myobrick_pwm': self._activations_vector[k][0],
                            'extend_myobrick_pwm': self._activations_vector[k][1],
                            'current_angle': current_kinematics_response.current_angle,
                            'current_angular_velocity': current_kinematics_response.current_angular_velocity,
                            'current_angular_acceleration': current_kinematics_response.current_angular_acceleration,
                            'desired_angle': activate_response.current_angle,
                            'desired_angular_velocity': activate_response.current_angular_velocity,
                            'desired_angular_acceleration': activate_response.current_angular_acceleration
                        }
                        self._training_data = pd.concat([self._training_data, pd.DataFrame(new_row, index=[0])])
                        self._actual_kinematics_vector[k] = [activate_response.current_angle, activate_response.current_angular_velocity, activate_response.current_angular_acceleration]

                    # Calculate the reward for the desired kinematics in the kinematics vector (last 3 columns) and the actual kinematics in the actual kinematics vector
                    reward = self._reward_function(self._kinematics_vector[:, 3:], self._actual_kinematics_vector)
                    rospy.loginfo(f"Reward after trial {j}: {reward}")

                    # Check if the reward surpasses the threshold and the best reward. If it surpasses the best reward, update the best reward and activations vector
                    if reward > self._reward_threshold and reward > self._best_reward:
                        self._best_reward = reward
                        self._best_activations = self._activations_vector

                    # Retrain ANN with the appended refined data
                    #self._clean_training_data()
                    input_train, input_test, output_train, output_test, self._scalerInput, self._scalerOutput = self._prepare_training_data()
                    self._model.fit(input_train, output_train)

                    # Save the model in models directory at /workspace/models
                    joblib.dump(self._model, f'/workspace/models/{self._model_name}.pkl')

                    # Save the training data in dataset directory at /workspace/datasets
                    self._training_data.to_csv(f'/workspace/datasets/{self._model_name}.csv', index=False)

                    # Save the scalers in scalers directory at /workspace/scalers
                    joblib.dump(self._scalerInput, f'/workspace/scalers/{self._model_name}_input_scaler.pkl')
                    joblib.dump(self._scalerOutput, f'/workspace/scalers/{self._model_name}_output_scaler.pkl')

                    # Calculate the average angle change from the refined data
                    self._average_angle_change = self._training_data['current_angle'].diff().abs().mean()

                    # Plot learning curve (training loss) and save it in plots directory at /workspace/plots. Print mean squared error on test data.
                    output_predicted = self._model.predict(input_test)
                    mse = mean_squared_error(output_test, output_predicted)
                    rospy.loginfo(f"Mean Squared Error on test data: {mse}")

                    plt.figure(figsize=(10, 5))
                    plt.plot(self._model.loss_curve_, label="Training Loss")
                    plt.title(f"Refinement Learning Curve after {j} trials")
                    plt.xlabel("Iterations")
                    plt.ylabel("Loss")
                    plt.legend()
                    plt.savefig(f'/workspace/plots/{self._model_name}_refinement_learning_curve_starting_at_{angle}_trial_{j}.png')


        rospy.loginfo(f"Refinement completed and model saved as /workspace/models/{self._model_name}.pkl\n"
                        f"Scalers saved as /workspace/scalers/{self._model_name}_input_scaler.pkl and /workspace/scalers/{self._model_name}_output_scaler.pkl\n"
                        f"Plots saved as /workspace/plots/{self._model_name}_refinement_learning_curve_starting_at_pos_trial_j.png\n"
                        )

        return RefineResponse(True)

if __name__ == '__main__':
    rospy.init_node('movement_handler')
    movement_handler = MovementHandler()
    rospy.spin()