#!/bin/bash
dialog --title "Chromium Browser" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the Chromium Browser?" 7 60

response=$?
case $response in
   0) clear && sudo apt-get install chromium -y && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
