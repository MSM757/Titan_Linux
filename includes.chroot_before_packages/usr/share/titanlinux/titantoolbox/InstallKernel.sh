#!/bin/bash
dialog --no-shadow --title "Install Latest Available Kernel" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Install an updated kernel from the Backports? (requires the backports to be enabled with Enable Extra Software Repositories in the Titan Toolbox)" 7 60

response=$?
case $response in
   0) clear && sudo apt install -t bullseye-backports linux-image-amd64 firmware-linux firmware-linux-nonfree firmware-misc-nonfree && echo Successful! && sleep 5;;
   1) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
esac
sudo -k
sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh
