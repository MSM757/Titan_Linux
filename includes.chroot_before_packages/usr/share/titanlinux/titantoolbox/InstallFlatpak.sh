#!/bin/bash
dialog --title "Flatpak Support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install Flatpak support?" 7 60

response=$?
case $response in
   0) clear && sudo apt install flatpak plasma-discover-backend-flatpak flatpak-xdg-utils && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
