#!/bin/bash
response=$(dialog --no-shadow --title "Swappiness" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "Change the agreessiveness of the ram swapping to the disk." 0 0 0 \
1 "60 (default)"  \
2 "10 (recommended)" \
3 "5" \
4 "View Current Status" --stdout)

case $response in
   1) clear & sudo cp /usr/share/titanlinux/sysctl/default/sysctl.conf /etc/sysctl.conf && echo Successfull! Restart your computer to take effect. && sleep 5;;
   2) clear & sudo cp /usr/share/titanlinux/sysctl/10/sysctl.conf /etc/sysctl.conf && echo Successfull! Restart your computer to take effect. && sleep 5;;
   3) clear & sudo cp /usr/share/titanlinux/sysctl/5/sysctl.conf /etc/sysctl.conf && echo Successfull! Restart your computer to take effect. && sleep 5;;
   4) clear && sudo sysctl vm.swappiness && sleep 5 && sudo sh /usr/share/titanlinux/titantoolbox/Swappiness.sh;;
   255) exit;;
esac
exit
