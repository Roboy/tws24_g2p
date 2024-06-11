import yaml
import subprocess
import os
import sys
from pathlib import Path

def load_config() -> dict:
    with open('config.yaml', 'r') as file:
        return yaml.safe_load(file)

def save_config(config: dict) -> None:
    with open('config.yaml', 'w') as file:
        yaml.safe_dump(config, file)

def check_network(expected_network: str) -> None:
    current_network = subprocess.check_output("iwgetid -r", shell=True).decode().strip()
    if current_network != expected_network:
        sys.exit(f"Please connect to the {expected_network} network before running this script.")

def check_docker() -> None:
    try:
        subprocess.check_output("command -v docker", shell=True)
    except subprocess.CalledProcessError:
        sys.exit("Docker is not installed. Please install Docker to proceed.")

def ping_device(ip: str, count: int = 3) -> None:
    result = subprocess.run(f"ping -c {count} {ip}", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if result.returncode != 0:
        sys.exit(f"Device {ip} is not reachable.")  

def get_host_ip() -> str:
    host_ip = subprocess.check_output("hostname -I | awk '{print $1}'", shell=True).decode().strip()
    if not host_ip:
        sys.exit("Failed to obtain the host IP address. Please check your network connection and try again.")
    return host_ip

def check_parameters(config: dict) -> None:

    if config['controller'] not in ['pid', 'g2p']:
        sys.exit("Invalid controller. Please select either 'pid' or 'g2p'.")

    if config['mode'] not in ['train', 'execute', 'p2p', 'sinusoidal']:
        sys.exit("Invalid mode. Please select either 'train' or 'execute'.")

    if config['input'] not in ['gamepad', 'terminal']:
        sys.exit("Invalid input. Please select either 'gamepad' or 'terminal'.")

    # Check valid combinations of controller and mode
    if config['controller'] == 'pid' and config['mode'] == 'train':
        sys.exit("PID controller cannot be trained. Please select 'execute' mode.")

    # Check if model_name already exists in models directory if mode is 'train'
    if config['mode'] == 'train':
        models_dir = Path.cwd() / 'models'
        if (models_dir / f"{config['model_name']}.h5").exists():
            sys.exit(f"Model {config['model_name']} already exists. Please choose a different model name.")

def rebuild_docker_image(image_name: str) -> None:
    build_cmd = f"docker build --no-cache -t {image_name} ."
    subprocess.run(build_cmd, shell=True, check=True)

def setup_tmux(config: dict) -> None:
    # Define the base Docker command
    docker_base_cmd = (
        f"docker run --rm -it --network='host' --privileged "
        f"--device=/dev/input:/dev/input -e ROS_MASTER_URI={config['ros_master_uri']} "
        f"-e ROS_IP={config['ros_ip']} -v \"{config['script_dir']}:/workspace\" {config['image_name']} "
        f"/bin/bash"
    )

    # Define the roslaunch command
    roslaunch_cmd = (
        f"roslaunch bench_pkg bench_pkg.launch controller:={config['controller']} mode:={config['mode']} dynamics:={config['dynamics']} accuracy_threshold:={config['accuracy_threshold']} gamepad_name:={config['gamepad_name']} "
        f"flex_myobrick_global_id:={config['flex_myobrick_global_id']} extend_myobrick_global_id:={config['extend_myobrick_global_id']} "
        f"control_loop_rate:={config['control_loop_rate']} joystick_range:={config['joystick_range']} input:={config['input']} "
        f"kp:={config['kp']} ki:={config['ki']} kd:={config['kd']} integral_limit:={config['integral_limit']} "
        f"model_name:={config['model_name']} architecture:={config['architecture']} babbling_seconds:={config['babbling_seconds']} "
        f"activation_generation_steps:={config['activation_generation_steps']} babbling_version:={config['babbling_version']} pass_chance:={config['pass_chance']} "
        f"max_pwm:={config['max_pwm']} min_pwm:={config['min_pwm']} min_spool_in_pwm:={config['min_spool_in_pwm']} non_active_pwm:={config['non_active_pwm']} "
        f"percentage_hold:={config['percentage_hold']} percentage_activate_flex:={config['percentage_activate_flex']} percentage_activate_extend:={config['percentage_activate_extend']} "
        f"max_angle:={config['max_angle']} min_angle:={config['min_angle']} pwm_limit:={config['pwm_limit']} torque_limit:={config['torque_limit']} "
        f"num_refinement_kinematics:={config['num_refinement_kinematics']} num_trials_phase_1:={config['num_trials_phase_1']} num_trials_phase_2:={config['num_trials_phase_2']} "
        f"reward_threshold:={config['reward_threshold']} phase_1_approach:={config['phase_1_approach']} phase_1_variation_threshold:={config['phase_1_variation_threshold']} "
        f"a:={config['a']} b:={config['b']} sigma:={config['sigma']} "
        f"num_periods:={config['num_periods']} start_angle_p2p:={config['start_angle_p2p']} end_angle_p2p:={config['end_angle_p2p']} max_move_time:={config['max_move_time']} "
        f"num_points:={config['num_points']} start_angle_sin:={config['start_angle_sin']} amplitude_deg:={config['amplitude_deg']} periode_sec:={config['periode_sec']}"
    )

    # tmux setup commands
    tmux_setup_cmds = [
        "tmux new-session -d -s thesis",
        "tmux split-window -h",
        "tmux split-window -v",
        "tmux select-layout even-vertical",
        "tmux split-window -v -t 0"
    ]

    # Execute tmux setup commands
    for cmd in tmux_setup_cmds:
        subprocess.run(cmd, shell=True)

    # Commands for each tmux pane
    commands = [
        docker_base_cmd,
        docker_base_cmd,
        docker_base_cmd,
        docker_base_cmd
    ]

    # Send keys to each tmux pane
    for index, cmd in enumerate(commands):
        subprocess.run(f"tmux send-keys -t {index} '{cmd}' C-m", shell=True)

        # Additional commands for specific panes
        if index == 0:
            subprocess.run(f"tmux send-keys -t {index} 'source /opt/ros/noetic/setup.bash && roscore' C-m", shell=True)
        elif index == 1:
            subprocess.run(f"tmux send-keys -t {index} 'sshpass -p {config['fpga_password']} ssh -o StrictHostKeyChecking=no root@{config['fpga_ip']}' C-m", shell=True)
            subprocess.run(f"tmux send-keys -t {index} 'export ROS_MASTER_URI={config['ros_master_uri']} && ./roboy_plexus pinky.yaml' C-m", shell=True)
        elif index == 2:
            subprocess.run(f"tmux send-keys -t {index} 'cd ros_ws && source /opt/ros/noetic/setup.bash && catkin_make' C-m", shell=True)
            subprocess.run(f"tmux send-keys -t {index} 'source devel/setup.bash && {roslaunch_cmd}' C-m", shell=True)
        elif index == 3:
            subprocess.run(f"tmux send-keys -t {index} 'cd ros_ws && source devel/setup.bash'", shell=True)
    # Attach to the tmux session
    subprocess.run("tmux attach-session -t thesis", shell=True)

def main():
    config = load_config()

    #rebuild_docker_image(config['image_name'])
    
    # # Update dynamic config variables
    # config['script_dir'] = str(Path.cwd())
    # config['host_ip'] = get_host_ip()
    # config['ros_ip'] = config['host_ip']
    # config['ros_master_uri'] = f"http://{config['host_ip']}:11311"
    
    # # Save updated configuration
    # save_config(config)
    
    # Check prerequisites
    check_network(config['wifi_name'])
    check_docker()
    ping_device(config['fpga_ip'])

    # Check for valid parameters from config file
    check_parameters(config)

    # Setup Docker and tmux
    setup_tmux(config)

if __name__ == "__main__":
    main()