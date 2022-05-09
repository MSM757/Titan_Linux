#!/bin/bash
dialog --no-shadow --title "Flatpak Support" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install Flatpak support?" 7 60

response=$?
case $response in
   0) clear && sudo apt install flatpak plasma-discover-backend-flatpak flatpak-xdg-utils && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh
