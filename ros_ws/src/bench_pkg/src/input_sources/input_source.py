import rospy
from bench_pkg.srv import DesiredKinematicsInput, DesiredKinematicsInputRequest, DesiredKinematicsInputResponse
from abc import ABC, abstractmethod

class InputSource(ABC):
    def __init__(self):

        # Control Parameters
        self._max_angle = rospy.get_param('max_angle')
        self._min_angle = rospy.get_param('min_angle')
        self._control_loop_rate = rospy.get_param('control_loop_rate')

        # Service
        self._desired_kinematics_input_service = rospy.Service('/bench_pkg/DesiredKinematicsInput', DesiredKinematicsInput, self.desired_kinematics_input)
    
    @abstractmethod
    def desired_kinematics_input(self, req: DesiredKinematicsInputRequest) -> DesiredKinematicsInputResponse:
        pass