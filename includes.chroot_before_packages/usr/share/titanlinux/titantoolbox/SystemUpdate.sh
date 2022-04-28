#!/bin/bash
dialog --title "System Update" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Update your system?" 7 60

response=$?
case $response in
   0) clear && sudo apt update && sudo apt upgrade && sudo apt full-upgrade && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
