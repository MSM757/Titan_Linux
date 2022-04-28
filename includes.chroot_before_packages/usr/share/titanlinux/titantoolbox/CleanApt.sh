#!/bin/bash
dialog --title "Clean APT" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Clean the apt cache?" 7 60

response=$?
case $response in
   0) clear && sudo apt clean && sudo apt update && clear && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
