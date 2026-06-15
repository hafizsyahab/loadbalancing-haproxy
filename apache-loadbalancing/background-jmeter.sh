#!/bin/bash
apt-get update -y
apt-get install -y default-jdk wget unzip

# Download JMeter
wget -q https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.6.3.tgz

# Extract JMeter
tar -xzf apache-jmeter-5.6.3.tgz -C /opt/

# Buat shortcut
ln -s /opt/apache-jmeter-5.6.3/bin/jmeter /usr/local/bin/jmeter

echo "JMeter installed successfully!"
