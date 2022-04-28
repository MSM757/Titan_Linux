#!/bin/bash
dialog --title "Reset Swap" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Clear and reset your swap space?" 7 60

response=$?
case $response in
   0) echo clear && swapoff -a && swapon -a && clear && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) echo exit;;
esac
exec bash;
