#!/bin/bash
dialog --no-shadow --title "Clean APT" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Clean the apt cache?" 7 60

response=$?
case $response in
   0) clear && sudo apt clean && sudo apt update && clear && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh
