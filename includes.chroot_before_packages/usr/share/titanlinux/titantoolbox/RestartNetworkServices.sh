#!/bin/bash
dialog --title "Restart Network Services" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Restart the network services?" 7 60

response=$?
case $response in
   0) clear && sudo systemctl restart NetworkManager.service && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
