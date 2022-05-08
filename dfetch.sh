#!/bin/bash 

#Print Info
echo "OS: $(lsb_release -d|awk '{print $2}')"
echo "Release: $(lsb_release -rs)"
echo "Codename: $(lsb_release -cs)"
echo "Architecture: $(uname -m)"
echo "Uptime: $(uptime -p)"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "CPU: $(lscpu | grep "Model name" | awk '{print $3,$4,$5}')"
echo "RAM: $(free -h | grep "Mem" | awk '{print $2}')" 
echo "Disk: $(df -h | grep "/$" | awk '{print $2}')"