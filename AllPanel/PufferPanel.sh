#!/bin/bash
clear

# Custom 
NC="\033[0m"
BOLD="\033[01m"
DISABLE="\033[02m"

#Coler
BLUE="\033[1;34m" #ONLY INFO
RED="\033[0;91m" #ONLY 
DARKGREY="\033[90m"
WHITE="\033[37m"

echo -e "${WHITE}

██╗    ██╗██████╗██████╗██╗    ██████╗ ████████████╗ █████╗███████████████╗
██║    ████╔═══████╔══████║    ██╔══████╔════██╔══████╔══████╔════╚══██╔══╝
██║ █╗ ████║   ████████╔██║    ██║  ████║    ██████╔████████████╗    ██║   
██║███╗████║   ████╔══████║    ██║  ████║    ██╔══████╔══████╔══╝    ██║   
╚███╔███╔╚██████╔██║  ███████████████╔╚████████║  ████║  ████║       ██║   
 ╚══╝╚══╝ ╚═════╝╚═╝  ╚═╚══════╚═════╝ ╚═════╚═╝  ╚═╚═╝  ╚═╚═╝       ╚═╝   
                        ██╗    █████╗   ████╗  ██╗                             
                        ██║    ██████╗  ████║ ██╔╝                             
                        ██║    ████╔██╗ ███████╔╝                              
                        ██║    ████║╚██╗████╔═██╗                              
                        ███████████║ ╚██████║  ██╗                             
                        ╚══════╚═╚═╝  ╚═══╚═╝  ╚═╝                             
                                                                           
                      Author: WorldCraftLink
                      Last Updated: 2024-12-10"
     echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}You Suer you wnat to install the PufferPanel?${NC}"
      echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select an option:${NC}"
      echo -e "▶ 1 ${BOLD}${WHITE}| YES"
      echo -e "▶ 2 ${BOLD}${WHITE}| BACK"
        read option_PFP
           if [ $option_PFP -eq 1 ]; then
               sleep 5
               echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Downloading... Please Wait${NC}"
                sleep 2
                apt update && apt upgrade -y
                export SUDO_FORCE_REMOVE=yes
                apt remove sudo -y
                apt install lxde -y
                apt install xrdp -y
                echo "lxsession -s LXDE -e LXDE" >> /etc/xrdp/startwm.sh
                elif [ $option_PFP -eq 2]; then
                clear
                echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Downloading and installation completed!{NC}"
                echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select RDP Port"
                read selectedPort
                sed -i "s/port=3389/port=$selectedPort/g" /etc/xrdp/xrdp.ini
                clear
                service xrdp restart
                clear
                echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}RDP Created And Started on Port $selectedPort${NC}"
            elif [ $option_PFP -eq 2 ]; then
              bash <(curl -s https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/InstallSD/HostServer_SD.sh)
          else
   echo -e "${BOLD}${RED}[ERROR] ${DISABLE}Invalid option selected.${NC}"
fi