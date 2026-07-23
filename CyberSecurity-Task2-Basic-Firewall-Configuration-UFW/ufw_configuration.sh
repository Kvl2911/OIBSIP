#!/bin/bash

echo "Enabling UFW Firewall..."
sudo ufw --force enable

echo "Allowing SSH..."
sudo ufw allow ssh

echo "Blocking HTTP..."
sudo ufw deny http

echo "Allowing HTTPS..."
sudo ufw allow https

echo "Blocking Telnet (Port 23)..."
sudo ufw deny 23

echo "Displaying Firewall Status..."
sudo ufw status verbose

echo "UFW configuration completed."
