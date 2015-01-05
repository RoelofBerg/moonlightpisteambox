#!/bin/sh
wakeonlan <ENTER MAC HERE e.g. 12:34:56:78:90:12>
sleep <ENTER BOOT TIME IN SECONDS HERE>
cd /home/pi/limelight
java -jar limelight.jar -mapping PS3.map stream <ENTER IP OR HOSTNAME OF PC HERE>
