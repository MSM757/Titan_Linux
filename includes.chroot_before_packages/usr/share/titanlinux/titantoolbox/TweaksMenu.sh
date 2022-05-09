#!/bin/bash
response=$(dialog --no-shadow --title "Titan Tweak Tool" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "Various tweaks for your Titan Linux system." 0 0 0 \
1 "Toggle Neofetch on terminal startup" \
2 "Configure the aggressiveness of swap" --stdout)

case $response in
   1) sh /usr/share/titanlinux/titantoolbox/Neofetch.sh;;
   2) sudo sh /usr/share/titanlinux/titantoolbox/Swappiness.sh;;
   255) exit;;
esac
exit
