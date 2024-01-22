#!/bin/bash

sudo yum update -y                      #updates nginx packages
sudo yum info nginx                     #get info on nginx
sudo systemctl install nginx            #install nginx automatically
sudo systemctl start nginx              #starts nginx service
sudo systemctl status nginx             #gives the status of the nginx service
sudo systemctl enable nginx             #enables nginx service
sudo firewall-cmd --permanent --zone=public --add-service=http --add-service=https      #adjusts, reloads, and initiates firewall access
sudo firewall-cmd --reload
sudo firewall-cmd --list-services --zone=public
echo “IPv4 address:” ‘curl -4 icanhazip.com’    #list ipv4 address
sudo chmod 777 /usr/share/nginx                 #grant ownership to all over nginx directory

#HTML custom script
echo "<!DOCTYPE html>
<html>
<body>

<h1>Welcome to LUIT - GREEN TEAM!!!!!</h1>

</body>
</html>"
