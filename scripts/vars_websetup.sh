#!/bin/bash

#declaration of variables
PACKAGE="apache2 wget unzip"
SVC="apache2"
URL="https://www.tooplate.com/zip-templates/2142_cloud_sync.zip"
ARTIFACT="2142_cloud_sync"
TEMP_DIR="/tmp/webapp"



echo " downloading and installing the web application"
#installing dependencies for the web application
sudo apt-get update -y  >>/dev/null
sudo apt-get install -y $PACKAGE  >>/dev/null

#starting the apache2 service
sudo systemctl start $SVC
sudo systemctl enable $SVC

#creating a temporary directory to download the web application
mkdir -p $TEMP_DIR
cd $TEMP_DIR

#downloading the web application
sudo wget $URL  >>/dev/null

#unzipping the web application
sudo unzip $ARTIFACT.zip >>/dev/null
#copying the web application to the apache2 root directory
sudo cp -r $ARTIFACT/* /var/www/html/
#restarting the apache2 service
sudo systemctl restart $SVC

#removing the temporary directory
sudo rm -rf $TEMP_DIR
#starting the firewall and allowing the http service
sudo ufw enable
sudo ufw allow 'Apache'




