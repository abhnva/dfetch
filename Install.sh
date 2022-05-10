#!/bin/bash

#Colors
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
END="\e[0m"

#Install Dependencies
echo -e "${ORANGE}Updating Repositories...${END}"
sudo apt update

echo -e "${ORANGE}Installing Dependencies...${END}"
sudo apt install dmidecode


#Copy Dfetch
echo -e "${ORANGE}Copying Dfetch...${END}"
sudo cp -r ./dfetch /usr/local/bin/

echo -e "${ORANGE}Setting Permissions...${END}"
sudo chmod +x /usr/local/bin/dfetch

echo -e "${GREEN}Done!${END}"