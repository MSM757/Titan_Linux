#!/bin/bash
dialog --title "Firefox ESR Browser" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the Firefox ESR Browser?" 7 60

response=$?
case $response in
   0) clear && sudo apt-get install firefox-esr -y && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
