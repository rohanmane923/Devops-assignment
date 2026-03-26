#!/bin/bash
 
df -h "Disk Usage"

free -h "memory usage"

systemctl status nginx | grep Active "nginx status"

lsof -i :8080 "port 80 status"
