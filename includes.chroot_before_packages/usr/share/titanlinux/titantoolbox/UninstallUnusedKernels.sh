#!/bin/bash
dialog --no-shadow --title "Remove Unused Kernels" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Uninstall all but the currently used kernel (Warning, use at your own risk! Cannot be undone.)" 7 60

response=$?
case $response in
   0) clear && sudo apt-get remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`) && sudo apt autoremove && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh
