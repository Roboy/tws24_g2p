# Start with ROS Noetic base image
FROM ros:noetic-ros-base-focal

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    wget \
    git \
    lsb-release \
    nano \
    python3-pip \
    libhdf5-dev \
    libusb-1.0-0-dev \
    sshpass \
    x11-apps \
    usbutils \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Python packages
RUN python3 -m pip install --upgrade pip && pip install \
    tensorflow \
    tf-agents \
    numpy \
    pandas \
    scikit-learn \
    matplotlib \
    scipy \
    joblib \
    evdev \
    PyYAML

ENV DISPLAY=:0

# Set the working directory
WORKDIR /workspace