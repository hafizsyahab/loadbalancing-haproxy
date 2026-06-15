#!/bin/bash
apt-get update -y
apt-get install -y apache2
echo "<h1>Apache Web Server 2 - 192.168.100.12</h1>" > /var/www/html/index.html
systemctl start apache2
systemctl enable apache2
