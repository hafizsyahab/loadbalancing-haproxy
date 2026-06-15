#!/bin/bash
apt-get update -y
apt-get install -y apache2

cat > /var/www/html/index.html << 'EOF'
<html>
  <head>
    <title>Web Server 1</title>
  </head>
  <body>
    <h1>webserver1 dijalankan</h1>
  </body>
</html>
EOF

systemctl start apache2
systemctl enable apache2
