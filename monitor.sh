#!/bin/bash

echo " Disk Usage "
df -h

echo " Memory Usage "
free -h


echo " Nginx Service Status "
sudo systemctl status nginx --no-pager

echo " Processes on Port 80 (Nginx) "
sudo lsof -i :80


echo " Processes on Port 8080  "
sudo lsof -i :8080

echo " EC2 Public IP "
curl -s http://169.254.169.254/latest/meta-data/public-ipv4

