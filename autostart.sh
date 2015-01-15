#!/bin/bash

#Start PC
wakeonlan <ENTER MAC HERE e.g. 12:34:56:78:90:12>

#Wait until steam is reachable
echo Connecting to the PC ...
while ! nc -z -w5 <ENTER IP OR HOSTNAME OF PC HERE> 27036 &>/dev/null; do :; done

#Start limelight
echo PC available, starting limelight
cd /home/pi/limelight
java -jar limelight.jar -mapping xbox.map stream <ENTER IP OR HOSTNAME OF PC HERE>
