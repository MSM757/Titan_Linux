#!/bin/bash
dialog --title "Enable 32-bit library support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Enable 32-bit library support?" 7 60

response=$?
case $response in
   0) clear && sudo dpkg --add-architecture i386 && sudo apt update && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
