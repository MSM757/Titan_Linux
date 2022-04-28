#!/bin/bash
dialog --title "Snap Support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install Snap support?" 7 60

response=$?
case $response in
   0) clear && sudo apt install snap snapd plasma-discover-backend-snap && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
