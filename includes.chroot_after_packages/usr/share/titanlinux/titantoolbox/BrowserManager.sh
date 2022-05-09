#!/bin/bash
response=$(dialog --no-shadow --title "Browser Manager" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "Choose a browser to install:" 0 0 0 \
1 "Brave" \
2 "Chrome" \
3 "Chromium" \
4 "Firefox ESR" \
5 "LibreWolf" \
6 "Vivaldi" \
7 "Pale Moon" --stdout)

case $response in
   1) clear && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install brave-browser -y && echo Successful! && sleep 5 && sudo -k;;
   2) clear && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt-get install ./google-chrome-stable_current_amd64.deb && sudo rm google-chrome-stable_current_amd64.deb && echo Successful! && sleep 5;;
   3) clear && sudo apt-get install chromium -y && echo Successful! && sleep 5 && sudo -k;;
   4) clear && sudo apt-get install firefox-esr -y && echo Successful! && sleep 5 && sudo -k;;
   5) clear && echo "deb [arch=amd64] http://deb.librewolf.net bullseye main" | sudo tee /etc/apt/sources.list.d/librewolf.list && sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg && sudo apt update && sudo apt install librewolf -y && echo Successful! && sleep 5 && sudo -k;;
   6) clear && wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg && echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list && sudo apt update && sudo apt install vivaldi-stable && echo Successful! && sleep 5 && sudo -k;;
   7) clear && echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list && curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null && sudo apt update && sudo apt install palemoon -y && echo Successful! && sleep 5 && sudo -k;;
   255) /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh
