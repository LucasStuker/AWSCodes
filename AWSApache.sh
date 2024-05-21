#!/bin/bash
########################################
#####USE IN AMAZON LINUX 2#############
#####CONFIGURA O APACHE NA EC2#######

yum update -y
yum install httpd -y
echo "<h1>Apache running $(hostname -f)</h1>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
