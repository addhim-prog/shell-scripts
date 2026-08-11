#!/bin/bash

echo "welcome $USER on $HOSTNAME"

echo "###########################################"

FREEMEM=$(free -m | grep Mem | awk '{print $4}')
echo "Free memory available is $FREEMEM MB"

FREELOAD=$(uptime | awk '{print $9}')
echo "Load average is $FREELOAD"

ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')
echo "Free space available in root partition is $ROOTFREE"



