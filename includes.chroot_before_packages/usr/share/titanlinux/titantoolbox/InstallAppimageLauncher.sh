#!/bin/bash
dialog --no-shadow --title "Appimage Launcher" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the Appimage Launcher? This utility installs a 3rd party Debian binary.)" 7 60

response=$?
case $response in
   0) clear && wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb && sudo apt-get install ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb -y && sudo rm appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
   255) sh //usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh
