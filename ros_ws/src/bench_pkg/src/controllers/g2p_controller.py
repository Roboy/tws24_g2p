#!/usr/bin/env python3

import rospy
from controller import Controller
import joblib
import sklearn
import pandas as pd
import os
from bench_pkg.srv import MoveRequest, MoveResponse

class G2PController(Controller):
    def __init__(self):
        super().__init__()

        self._model_name = rospy.get_param('model_name')
        self._dynamics = rospy.get_param('dynamics')
        self._model = None
        self._scalerIn = None
        self._scalerOut = None
        self._training_data = None
        self._average_angle_change = None
        self._average_angluar_velocity_change = None
        self._average_angular_acceleration_change = None
        self._load_model_variables()

    def _model_input_preprocessor(  self, current_angle: float,
                                    current_angular_velocity: float,
                                    current_angular_acceleration: float,
                                    desired_angle: float,
                                    desired_angular_velocity: float,
                                    desired_angular_acceleration: float) -> pd.DataFrame:
        
        """Preprocesses the difference between current and desired kinematics into smaller steps according to the average change rates of the training data."""
        
        # Calculate the difference between current and desired kinematics
        angle_difference = abs(current_angle - desired_angle)
        angular_velocity_difference = abs(current_angular_velocity - desired_angular_velocity)
        angular_acceleration_difference = abs(current_angular_acceleration - desired_angular_acceleration)

        # Initialize intermediate desired kinematics
        intermediate_desired_angle = None
        intermediate_desired_angular_velocity = None
        intermediate_desired_angular_acceleration = None

        # Calculate intermediate desired angle
        if angle_difference > self._average_angle_change:
            if current_angle < desired_angle:
                intermediate_desired_angle = current_angle + self._average_angle_change
            else:
                intermediate_desired_angle = current_angle - self._average_angle_change
        else:
            intermediate_desired_angle = desired_angle

        # Calculate intermediate desired angular velocity
        if angular_velocity_difference > self._average_angluar_velocity_change:
            if current_angular_velocity < desired_angular_velocity:
                intermediate_desired_angular_velocity = current_angular_velocity + self._average_angluar_velocity_change
            else:
                intermediate_desired_angular_velocity = current_angular_velocity - self._average_angluar_velocity_change
        else:
            intermediate_desired_angular_velocity = desired_angular_velocity

        # Calculate intermediate desired angular acceleration
        if angular_acceleration_difference > self._average_angular_acceleration_change:
            if current_angular_acceleration < desired_angular_acceleration:
                intermediate_desired_angular_acceleration = current_angular_acceleration + self._average_angular_acceleration_change
            else:
                intermediate_desired_angular_acceleration = current_angular_acceleration - self._average_angular_acceleration_change
        else:
            intermediate_desired_angular_acceleration = desired_angular_acceleration

        # Create and return dataframe 
        columns=['current_angle', 'current_angular_velocity', 'current_angular_acceleration', 'desired_angle', 'desired_angular_velocity', 'desired_angular_acceleration']
        df = pd.DataFrame([[current_angle, current_angular_velocity, current_angular_acceleration, intermediate_desired_angle, intermediate_desired_angular_velocity, intermediate_desired_angular_acceleration]], columns=columns)

        return df
            
    def _load_model_variables(self) -> None:
        """Load model, scalers and training data. Calculate average angle change of the training data for preprocessing."""

        # Load model
        self._model = joblib.load(f'/workspace/models/{self._model_name}.pkl')
        # Check if model input layer size is 6 when using kinematic dynamics or 2 when using angle only dynamics
        if self._dynamics == 'kinematic':
            if self._model.n_features_in_ != 6:
                rospy.logerr(f"Model input layer size is not 6 for the kinematic dynamics. Model input layer size: {self._model.n_features_in_}")
                exit()
        elif self._dynamics == 'angle_only':
            if self._model.n_features_in_ != 2:
                rospy.logerr(f"Model input layer size is not 2 for the angle only dynamics. Model input layer size: {self._model.n_features_in_}")
                exit()

        # Load scalers and training data
        self._scalerIn = joblib.load(f'/workspace/scalers/{self._model_name}_input_scaler.pkl')
        self._scalerOut = joblib.load(f'/workspace/scalers/{self._model_name}_output_scaler.pkl')
        self._training_data = pd.read_csv(f'/workspace/datasets/{self._model_name}.csv')

        # Calculate the average kinematic changes of the training data between two consecutive samples
        self._average_angle_change = self._training_data['current_angle'].diff().abs().mean()
        self._average_angluar_velocity_change = self._training_data['current_angular_velocity'].diff().abs().mean()
        self._average_angular_acceleration_change = self._training_data['current_angular_acceleration'].diff().abs().mean()

    ############################################## G2P API ##############################################
    def move(self, req: MoveRequest) -> MoveResponse:
        """Predict motor activations for the given desired kinematics."""

        # Retrieve current and desired kinematics
        current_angle = req.current_angle
        current_angular_velocity = req.current_angular_velocity
        current_angular_acceleration = req.current_angular_acceleration
        desired_angle = req.desired_angle
        desired_angular_velocity = req.desired_angular_velocity
        desired_angular_acceleration = req.desired_angular_acceleration

        # Preprocess the desired kinematics
        if self._dynamics == 'kinematic':
            preprocessed_input = self._model_input_preprocessor(current_angle, current_angular_velocity, current_angular_acceleration, desired_angle, desired_angular_velocity, desired_angular_acceleration)
            rospy.loginfo(f"Preprocessed input: Current angle: {preprocessed_input['current_angle']} Intermediate desired angle: {preprocessed_input['desired_angle']} Desired angle: {desired_angle}")

        # No need to preprocess the desired kinematics when using angle only dynamics
        elif self._dynamics == 'angle_only':
            preprocessed_input = [[current_angle, desired_angle]]
            rospy.loginfo(f"Preprocessed input: Current angle: {current_angle} Desired angle: {desired_angle}")

        # Scale the preprocessed input
        scaled_input = self._scalerIn.transform(preprocessed_input)

        # Predict the motor activations
        predicted_output = self._model.predict(scaled_input)

        # Scale the predicted output
        predicted_output = self._scalerOut.inverse_transform(predicted_output)

        # Return the predicted motor activations for the small step
        return MoveResponse(predicted_output[0][0], predicted_output[0][1])

if __name__ == '__main__':
    rospy.init_node('g2p_controller')
    G2PController()
    rospy.spin()