#!/bin/bash 

#Colors
CYAN="\033[0;36m"
END="\e[0m"

#Print Info
echo -e "${CYAN}OS:${END} $(lsb_release -d|awk '{print $2}')"
echo -e "${CYAN}Release:${END} $(lsb_release -rs)"
echo -e "${CYAN}Codename:${END} $(lsb_release -cs)"
echo -e "${CYAN}Architecture:${END} $(uname -m)"
echo -e "${CYAN}Uptime:${END} $(uptime -p)"
echo -e "${CYAN}Hostname:${END} $(hostname)"
echo -e "${CYAN}Kernel:${END} $(uname -r)"
echo -e "${CYAN}CPU:${END} $(lscpu | grep "Model name" | awk '{print $3,$4,$5}') | Core(s): $(nproc)"
echo -e "${CYAN}RAM:${END} $(free -h | grep "Mem" | awk '{print $2}')" 
echo -e "${CYAN}Disk:${END} $(df -h | grep "/$" | awk '{print $2}')"