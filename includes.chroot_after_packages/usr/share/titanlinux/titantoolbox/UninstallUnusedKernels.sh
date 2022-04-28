#!/bin/bash
dialog --title "Remove Unused Kernels" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Uninstall all but the currently used kernel (Warning, use at your own risk! Cannot be undone.)" 7 60

response=$?
case $response in
   0) clear && sudo apt-get remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`) && sudo apt autoremove && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
