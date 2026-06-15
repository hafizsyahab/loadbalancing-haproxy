#!/bin/bash
apt-get update -y
apt-get install -y apache2
echo "<h1>Apache Web Server 3 - 192.168.100.13</h1>" > /var/www/html/index.html
systemctl start apache2
systemctl enable apache2
