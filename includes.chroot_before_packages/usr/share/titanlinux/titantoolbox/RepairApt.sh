#!/bin/bash
dialog --no-shadow --title "Repair APT" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Repair APT and DPKG?" 7 60

response=$?
case $response in
   0) clear && sudo apt update && sudo apt install -f && sudo dpkg --configure -a && sudo apt update && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh
