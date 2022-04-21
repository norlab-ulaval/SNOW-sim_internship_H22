#!/bin/bash


# Custom output color
RED=$'\e[1;91m'
BLUE=$'\e[0;94m'
GREEN=$'\e[32m'
YELLOW=$'\e[1;33m'
PURPLE=$'\e[1;95m'
WHITE=$'\033[0m'


echo "${PURPLE}"
echo " __________________________________"
echo "|                                  |"
echo "|              NORLAB              |"
echo "|         Project: SnowSIM         |"
echo "|                                  |"
echo "|          Gazebo Ignition         |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""


echo "${YELLOW}"
echo " __________________________________"
echo "|                                  |"
echo "|          INSTALLATIONS           |"
echo "|                                  |"
echo "|    - Gazebo Ignition Fortress    |"
echo "|    - ROS 1 Noetic                |"
echo "|    - ROS Bridge                  |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 0: SOME UPDATES             |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""
sudo apt-get update
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 1: INSTALL GAZEBO IGNITION  |"
echo "|         -> Version Fortress      |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Link: https://ignitionrobotics.org/docs/fortress/install
echo "${GREEN}# Link: ${BLUE}https://ignitionrobotics.org/docs/fortress/install ${WHITE}"
echo ""

# Install some necessary tools
echo "${GREEN}# Install some necessary tools: ${WHITE}"
sudo apt-get install lsb-release wget gnupg
echo "-> lsb-release"
echo "-> wget"
echo "-> gnupg" 
echo ""

# Get key for Gazebo Ignition
echo "${GREEN}# Get Key for Gazebo Ignition: ${WHITE}"
sudo wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
echo ""

# Update
echo "${GREEN}# Update: ${WHITE}"
sudo apt-get update
echo ""

# Installation Ignition Fortress
echo "${GREEN}# Install Ignition Fortress: ${WHITE}"
sudo apt-get install ignition-fortress
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 2: INSTALL ROS             |"
echo "|         -> Version ROS Noetic    |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""
# Link: http://wiki.ros.org/noetic/Installation/Ubuntu
echo "${GREEN}# Link: ${BLUE}http://wiki.ros.org/noetic/Installation/Ubuntu ${WHITE}"
echo ""

# Setup your source
echo "${GREEN}# Install some necessary tools: ${WHITE}"
echo "-> Package Debian"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list'
echo ""

# Set up your keys
echo "${GREEN}# Set up your keys: ${WHITE}"
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
echo ""

# Install Ros Noetic Desktop Full
echo "${GREEN}# Install Ros Noetic Desktop Full: ${WHITE}"
sudo apt update
sudo apt install ros-noetic-desktop-full
echo ""

# Environment setup
echo "${GREEN}# Environment setup: ${WHITE}"
echo "${WHITE}echo 'source /opt/ros/noetic/setup.bash' >> ~/.bashrc${WHITE}"
source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo ""

# Dependencies for building packages
echo "${GREEN}# Dependencies for building packages: ${WHITE}"
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo apt install python3-rosdep
sudo rosdep init
rosdep update
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 3: INSTALL ROS BRIDGE       |"
echo "|         -> Version ROS Noetic    |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Link: https://github.com/ignitionrobotics/ros_ign/tree/noetic#from-source
echo "${GREEN}# Link: ${BLUE}https://github.com/ignitionrobotics/ros_ign/tree/noetic#from-source ${WHITE}"
echo ""

# Some update
echo "${GREEN}# Some update: ${WHITE}"
sudo apt-get update
echo ""

# Install ros_ing
echo "${GREEN}# Install ros_ing: ${WHITE}"
sudo apt install ros-noetic-ros-ign
echo ""

# Some update
echo "${GREEN}# Some update: ${WHITE}"
sudo apt-get update
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 4: TEST GAZEBO IGNITION     |"
echo "|         -> Version Fortress      |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

echo "${GREEN}# Click on the play button for see the simulation${WHITE}"
echo "${GREEN}# When you finish, click on X for exit${WHITE}"
ign gazebo shapes.sdf 
echo ""
echo ""

 
echo "${YELLOW}"
echo " __________________________________"
echo "|                                  |"
echo "|              NORLAB              |"
echo "|         End installations        |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""
echo ""
echo ""
#exit 0 
