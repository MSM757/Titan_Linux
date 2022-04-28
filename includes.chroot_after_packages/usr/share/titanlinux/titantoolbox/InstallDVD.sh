#!/bin/bash
dialog --title "Encrypted DVD Playback" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install encrypted DVD support? (requires conrib from the Enable Extra Software Repositories in the Titan Toolbox)" 7 60

response=$?
case $response in
   0) clear && sudo apt install libdvd-pkg -y && sudo dpkg-reconfigure libdvd-pkg && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
