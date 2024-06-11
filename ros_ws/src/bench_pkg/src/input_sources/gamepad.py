#!/usr/bin/env python3

import rospy
import threading
import evdev
from evdev import InputDevice, ecodes
from bench_pkg.srv import DesiredKinematicsInputRequest, DesiredKinematicsInputResponse
from input_source import InputSource

class Gamepad(InputSource):
    def __init__(self):
        super().__init__()

        # Kinematics
        self._desired_angle = (self._max_angle + self._min_angle) / 2.0 # Start at the middle
        self._prev_desired_angle = 0.0
        self._desired_angular_velocity = 0.0
        self._prev_desired_angular_velocity = 0.0
        self._desired_angular_acceleration = 0.0

        # Gamepad
        self._gamepad_name = rospy.get_param('gamepad_name')
        self._joystick_range = rospy.get_param('joystick_range')
        self._gamepad = self._find_gamepad()

        # Start a thread to listen to the joystick
        self._stop_event = threading.Event()
        self._joystick_thread = threading.Thread(target=self._listen_to_joystick)
        self._joystick_thread.start()

        # Shutdown hook
        rospy.on_shutdown(self._shutdown_hook)

    def _find_gamepad(self) -> InputDevice:
        """Find the gamepad device as specified by gamepad_name in config file."""
        devices = [InputDevice(path) for path in evdev.list_devices()]
        for device in devices:
            if self._gamepad_name.lower() in device.name.lower():
                return device
        return None

    def _listen_to_joystick(self) -> None:
        """Listen to the joystick events and calculate the desired kinematics."""
        while not rospy.is_shutdown() and not self._stop_event.is_set():
            try:
                event = self._gamepad.read_one()
                if event:
                    if event.type == ecodes.EV_ABS:
                        self._calculate_kinematics(event)
            except Exception as e:
                print("Joystick listening error:", e)
                break

    def _calculate_kinematics(self, event: evdev.InputEvent) -> None:
        """Calculate the desired kinematics based on the joystick input."""
        if event.code in [ecodes.ABS_Y, ecodes.ABS_RZ]:
            joystick_coefficient = (self._max_angle - self._min_angle) / self._joystick_range
            
            # Angle
            self._prev_desired_angle = self._desired_angle
            self._desired_angle = self._min_angle + (joystick_coefficient * event.value)

            # Angular velocity
            self._prev_desired_angular_velocity = self._desired_angular_velocity
            self._desired_angular_velocity = (self._desired_angle - self._prev_desired_angle) /self._control_loop_rate

            # Angular acceleration
            self._desired_angular_acceleration = (self._desired_angular_velocity - self._prev_desired_angular_velocity) / self._control_loop_rate

    def _shutdown_hook(self) -> None:
        """Shutdown hook to stop the joystick thread."""
        self._stop_event.set()
        self._joystick_thread.join()

    ############################################## Gamepad API ##############################################
    def desired_kinematics_input(self, req: DesiredKinematicsInputRequest) -> DesiredKinematicsInputResponse:
        """Handle the desired kinematics input service."""

        response = DesiredKinematicsInputResponse()
        response.desired_angle = self._desired_angle
        response.desired_angular_velocity = self._desired_angular_velocity
        response.desired_angular_acceleration = self._desired_angular_acceleration
        return response

if __name__ == '__main__':
    rospy.init_node('gamepad')
    gamepad = Gamepad()
    rospy.spin()