#!/bin/bash

#Colors
ORANGE="\033[1;33m"
GREEN="\033[1;32m"
END="\e[0m"

#Update

#Pull Latest Version
echo -e "${ORANGE}Fetching latest version of Dfetch...${END}"
git pull

#Copy Dfetch
echo -e "${ORANGE}Copying Dfetch...${END}"
sudo cp -r ./dfetch /usr/local/bin/

#Set Permissions
echo -e "${ORANGE}Setting Permissions...${END}"
sudo chmod +x /usr/local/bin/dfetch

#Done
echo -e "${GREEN}Done!${END}"
