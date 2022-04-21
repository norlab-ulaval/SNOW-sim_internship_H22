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
echo "|         Gazebo Ignition          |"
echo "|              TESTS               |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""


echo "${YELLOW}"
echo " __________________________________"
echo "|                                  |"
echo "|              TESTS               |"
echo "|                                  |"
echo "|          - Run a file            |"
echo "|          - Record & Play a video |"
echo "|          - Run the headless mode |"
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
sudo apt-get install ruby-full
ruby --version
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 1: RUN A FILE               |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

echo "${GREEN}# Click on the play button for see the simulation${WHITE}"
echo "${GREEN}# When you finish, click on X for exit${WHITE}"
ign gazebo shapes.sdf 
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 2: RECORD & PLAY A VIDEO    |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""
# List of worlds to simulate
echo "${GREEN}# List of worlds to simulate${WHITE}"
cd /usr/share/ignition/ignition-gazebo6/worlds
ls
cd
echo ""

# For example we choose rolling_shapes.sdf
echo "${GREEN}# For example we choose rolling_shapes.sdf ${WHITE}"
sudo ign gazebo -r --record-path ./rolling_shapes rolling_shapes.sdf
sudo ign gazebo --playback ./rolling_shapes
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 3: RUN THE HEADLESS MODE    |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Install some necessary tools
echo "${GREEN}# Install some necessary tools: ${WHITE}"
sudo apt-get update
echo ""

# Run headless mode
echo "${GREEN}# Run headless mode ${WHITE}"
echo "${GREEN}# For exit headless mode: CTRL + C${WHITE}"
echo ""

ign gazebo -s shapes.sdf 
#sudo ign gazebo -s -r --record-path ./wind wind.sdf
#sudo ign gazebo --playback ./wind
echo ""
echo ""


echo "${YELLOW}"
echo " __________________________________"
echo "|                                  |"
echo "|              NORLAB              |"
echo "|            End tests             |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""
#exit 0
