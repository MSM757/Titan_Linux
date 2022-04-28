#!/bin/bash
dialog --title "Install Repositories" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install extra repos for more software and non-free support?" 7 60

response=$?
case $response in
   0) clear && sudo cp /usr/share/titanlinux/repos/sources.list /etc/apt/ && sudo cp /usr/share/titanlinux/repos/preferences /etc/apt/ && sudo apt update && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
