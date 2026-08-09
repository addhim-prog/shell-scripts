#!/bin/bash
echo " downloading and installing the web application"
#installing dependencies for the web application
sudo apt-get update -y  >>/dev/null
sudo apt-get install -y apache2 wget unzip  >>/dev/null

#starting the apache2 service
sudo systemctl start apache2
sudo systemctl enable apache2

#creating a temporary directory to download the web application
mkdir -p /tmp/webapp
cd /tmp/webapp

#downloading the web application
sudo wget https://www.tooplate.com/zip-templates/2142_cloud_sync.zip  >>/dev/null

#unzipping the web application
sudo unzip 2142_cloud_sync.zip >>/dev/null
#copying the web application to the apache2 root directory
sudo cp -r 2142_cloud_sync/* /var/www/html/
#restarting the apache2 service
sudo systemctl restart apache2

#removing the temporary directory
sudo rm -rf /tmp/webapp
#starting the firewall and allowing the http service
sudo ufw enable
sudo ufw allow 'Apache'




