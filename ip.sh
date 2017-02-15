#!/bin/bash

echo  "Getting Public IP of the existence instance and globally exporting variable called ip"
export ip=`curl  http://169.254.169.254/latest/meta-data/public-ipv4`

echo "Granting Ubuntu as a owner"
sudo chown ubuntu:ubuntu /usr/share/nginx/html  -R
cd /usr/share/nginx/html

echo "updating the ip "
sed -i "s/ip/$ip/g" "index.html"

echo $ip  >hi
