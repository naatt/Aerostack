#! /bin/bash

cd $DRONE_STACK
source setup.sh
roslaunch ${DRONE_STACK}/droneMidLevelAutopilotROSModule/launch/joyConverterToMidlevelAutopilot.launch --wait joy_device_name:="/dev/input/js1"

