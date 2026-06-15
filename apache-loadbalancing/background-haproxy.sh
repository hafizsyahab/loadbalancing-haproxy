#!/bin/bash
apt-get update -y
apt-get install -y haproxy

cat > /etc/haproxy/haproxy.cfg << 'EOF'
defaults
    mode http
    timeout client 5s
    timeout connect 10s
    timeout server 10s
    timeout http-request 10s

frontend my_frontend
    bind *:80
    default_backend my_backend

backend my_backend
    balance leastconn
    server server1 apache1:80 check
    server server2 apache2:80 check
    server server3 apache3:80 check

listen stats
    bind :8081
    stats enable
    stats uri /stats
    stats auth admin:admin
EOF

systemctl restart haproxy
systemctl enable haproxy
