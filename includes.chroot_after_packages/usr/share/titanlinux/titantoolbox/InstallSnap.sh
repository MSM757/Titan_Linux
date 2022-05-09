#!/bin/bash
dialog --no-shadow --title "Snap Support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install Snap support?" 7 60

response=$?
case $response in
   0) clear && sudo apt install snap snapd plasma-discover-backend-snap && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh
