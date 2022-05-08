#!/bin/bash 

#Colors
CYAN="\033[0;36m"
RED="\033[0;31m"
END="\e[0m"

#Print Info
echo " "
echo -e "\t ${CYAN}OS${END} : ${RED}$(lsb_release -d|awk '{print $2}')${END}"
echo -e "\t ${CYAN}Release${END} : ${RED}$(lsb_release -rs)${END}"
echo -e "\t ${CYAN}Codename${END} : ${RED}$(lsb_release -cs)${END}"
echo -e "\t ${CYAN}Architecture${END} : ${RED}$(uname -m)${END}"
echo -e "\t ${CYAN}Uptime${END} : ${RED}$(uptime -p)${END}"
echo -e "\t ${CYAN}Hostname${END} : ${RED}$(hostname)${END}"
echo -e "\t ${CYAN}Kernel${END} : ${RED}$(uname -r)${END}"
echo -e "\t ${CYAN}CPU${END} : ${RED}$(lscpu | grep "Model name" | awk '{print $3,$4,$5}') | Core(s): $(nproc)${END}"
echo -e "\t ${CYAN}RAM${END} : ${RED}$(free -h | grep "Mem" | awk '{print $2}')"${END} 
echo -e "\t ${CYAN}Disk${END} : ${RED}$(df -h | grep "/$" | awk '{print $2}')${END}"