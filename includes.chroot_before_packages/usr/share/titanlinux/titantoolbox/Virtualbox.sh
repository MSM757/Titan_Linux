#!/bin/bash
dialog --no-shadow --title "Virtualbox Installer" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install Virtualbox? This utility adds a 3rd party repository." 7 60

response=$?
case $response in
   0) clear && sudo apt install fasttrack-archive-keyring -y && sudo echo 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib non-free' > /etc/apt/sources.list.d/fasttrack.list && sudo apt update && sudo apt install virtualbox virtualbox-qt virtualbox-guest-x11 -y && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh
