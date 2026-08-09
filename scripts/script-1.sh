#!/bin/bash

#this script is used to display the system information



echo "welcome to bash scripting"
echo 

#checking the uptime of the system
echo "the uptime of the system is :"
uptime
echo "#########################################"
#checking the memory and disk utilization of the system
echo "memory utilization is : "
free -m 
echo "#########################################"
echo "disk utilization is : "
df -h

echo "#########################################"