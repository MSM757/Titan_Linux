#!/bin/bash
dialog --no-shadow --title "Enable 32-bit library support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Enable 32-bit library support?" 7 60

response=$?
case $response in
   0) clear && sudo dpkg --add-architecture i386 && sudo apt update && echo Successful! && sleep 5 && sudo -k && sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
   1) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
