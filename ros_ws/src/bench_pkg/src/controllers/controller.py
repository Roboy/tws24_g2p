import rospy
import numpy as np
from bench_pkg.srv import Move, MoveRequest, MoveResponse
from abc import ABC, abstractmethod

class Controller(ABC):
    def __init__(self):
        
        # Control Parameters
        self._pwm_limit = rospy.get_param('pwm_limit')
        self._accuracy_threshold = rospy.get_param('accuracy_threshold')
        self._control_loop_rate = rospy.get_param('control_loop_rate')

        # Service
        self._move_service = rospy.Service('/bench_pkg/Move', Move, self.move)

    ############################################## Controller API ##############################################

    @abstractmethod
    def move(self,request: MoveRequest) -> MoveResponse:
        pass