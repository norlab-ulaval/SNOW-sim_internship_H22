#!/bin/bash

# Custom output color
RED=$'\e[1;91m'
BLUE=$'\e[0;94m'
GREEN=$'\e[32m'
YELLOW=$'\e[1;33m'
PURPLE=$'\e[1;95m'
WHITE=$'\033[0m'

echo ""
echo "${PURPLE}"
echo " __________________________________"
echo "|                                  |"
echo "|              NORLAB              |"
echo "|         Project: SnowSIM         |"
echo "|                                  |"
echo "|          Gazebo Ignition         |"
echo "|          Test ROS Bridge         |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""


echo "${YELLOW}"
echo " __________________________________"
echo "|                                  |"
echo "|              TESTS               |"
echo "|                                  |"
echo "|     - Start ROS Noetic           |"
echo "|     - Start Gazebo Ignition      |"
echo "|     - Running images             |"
echo "|     - Publishing images          |"
echo "|     - Run the Bridge             |"
echo "|     - See current images         |"
echo "|     - Close all tab              |"
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
echo "| STEP 1: START ROS NOETIC         |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""


# Terminal A -> Start ROS 1 Noetic
gnome-terminal --tab -- bash -c " \
	printf '\033]2;TERMINAL A\a'; \
	echo '${RED}'; \
	echo ' __________________________________ '; \
	echo '|                                  |'; \
	echo '|         TERMINAL A               |'; \
	echo '|       -> Start ROS 1 Noetic      |'; \
	echo '|__________________________________|'; \
	echo '${WHITE}'; \
	echo ''; \
	echo '${BLUE}-> Press CTRL+C to stop ROS Noetic and close this terminal when you are finish${WHITE}'; \
	. /opt/ros/noetic/setup.bash; \
	roscore; \
	echo ''; \
	exec bash"
echo "TERMINAL A Done"
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 2: START GAZEBO IGNITION    |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Terminal B ->  Start Gazebo
#gnome-terminal --tab -- bash -c "echo '${GREEN}# Terminal B${WHITE}'; pwd; echo '# if you do not see the camera image in the Image Display and it stays grey, press the orange refresh button'; ign gazebo -r camera_sensor.sdf; echo 'Done'; exec bash"
gnome-terminal --tab -- bash -c " \
	printf '\033]2;TERMINAL B\a'; \
	echo '${RED}'; \
	echo ' __________________________________ '; \
	echo '|                                  |'; \
	echo '|         TERMINAL B               |'; \
	echo '|       -> Start Gazebo Ignition   |'; \
	echo '|__________________________________|'; \
	echo '${WHITE}'; \
	echo ''; \
	echo '${GREEN}# If you do not see the camera image in the Image Display and it stays grey, press the orange refresh button${WHITE}'; \
	echo '${BLUE}-> Please, after you see the picture of the camera topic, close the application${WHITE}'; \
	ign gazebo -r camera_sensor.sdf; \
	echo ''; \
	exec bash"
echo "TERMINAL B Done"
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 3: RUN & PUBLISH IMAGES     |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Terminal C -> Running and Publishing images over the /camera topic
#gnome-terminal --tab -- bash -c "echo '${GREEN}# Terminal C${WHITE}'; pwd; ign topic -l | grep '^/camera'; echo 'Done'; exec bash"
gnome-terminal --tab -- bash -c " \
	printf '\033]2;TERMINAL C\a'; \
	echo '${RED}'; \
	echo ' __________________________________ '; \
	echo '|                                  |'; \
	echo '|         TERMINAL C               |'; \
	echo '|  -> Running & Publishing images  |'; \
	echo '|     over the /camera topic       |'; \
	echo '|__________________________________|'; \
	echo '${WHITE}'; \
	echo ''; \
	echo '${BLUE}-> Close this terminal when you are finish${WHITE}'; \
	ign topic -l | grep '^/camera'; \
	echo ''; \
	exec bash"
echo "TERMINAL C Done"
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 4: RUN THE BRIDGE           |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Terminal D -> Run the bridge
#gnome-terminal --tab -- bash -c "echo '${GREEN}# Terminal D${WHITE}'; pwd; echo '# If installed from source, make sure you have sourced the ros-ign packages too'; . /opt/ros/noetic/setup.bash; rosrun ros_ign_bridge parameter_bridge /camera@sensor_msgs/Image@ignition.msgs.Image; echo 'Done'; exec bash"
gnome-terminal --tab -- bash -c " \
	printf '\033]2;TERMINAL D\a'; \
	echo '${RED}'; \
	echo ' __________________________________ '; \
	echo '|                                  |'; \
	echo '|         TERMINAL D               |'; \
	echo '|     -> Run the bridge            |'; \
	echo '|__________________________________|'; \
	echo '${WHITE}'; \
	echo ''; \
	echo '${GREEN}# If installed from source, make sure you have sourced the ros-ign packages too${WHITE}'; \
	echo '${BLUE}-> Press CTRL+C to stop ROS bridge and close this terminal when you are finish${WHITE}'; \
	. /opt/ros/noetic/setup.bash; \
	rosrun ros_ign_bridge parameter_bridge /camera@sensor_msgs/Image@ignition.msgs.Image; \
	echo ''; \
	exec bash"
echo "TERMINAL D Done"
echo ""
echo ""


echo "${RED}"
echo " __________________________________"
echo "|                                  |"
echo "| STEP 5: SEE CURRENT IMAGE        |"
echo "|__________________________________|"
echo "${WHITE}"
echo ""

# Terminal E  -> See the current images from Gazebo
#gnome-terminal --tab -- bash -c "echo '${GREEN}# Terminal E${WHITE}'; pwd; . /opt/ros/noetic/setup.bash; sudo apt-get install ros-noetic-rqt-image-view; rqt_image_view /camera; echo 'Done'; exec bash"
gnome-terminal --tab -- bash -c " \
	printf '\033]2;TERMINAL E\a'; \
	echo '${RED}'; \
	echo ' __________________________________ '; \
	echo '|                                  |'; \
	echo '|         TERMINAL E               |'; \
	echo '|   -> See the current images      |'; \
	echo '|      from Gazebo                 |'; \
	echo '|__________________________________|'; \
	echo '${WHITE}'; \
	echo ''; \
	echo '${GREEN}# Setup ROS Noetic${WHITE}'; \
	. /opt/ros/noetic/setup.bash; \
	echo '${GREEN}# Install ros-noetic-rqt-image-view${WHITE}'; \
	sudo apt-get install ros-noetic-rqt-image-view; \	
	echo '${GREEN}# Running ros-noetic-rqt-image-view over cameras${WHITE}'; \
	echo '${BLUE}-> Close this terminal when you are finish${WHITE}'; \
	rqt_image_view /camera; \
	echo ''; \
	exec bash"
echo "TERMINAL E Done"
echo ""
echo ""


echo "${WHITE}"
echo " __________________________________"
echo "|                                  |"
echo "|              NORLAB              |"
echo "|      End tests on ROS Bridge     |"
echo "|__________________________________|"
echo ""
echo ""
echo ""
#exit 0
