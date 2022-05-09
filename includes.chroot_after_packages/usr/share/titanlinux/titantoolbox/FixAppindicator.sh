#!/bin/bash
dialog --title "Install Legacy Libappindicator" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Install Legacy Libappindicator? Fixes dependency issues for the .deb binary of electron apps such as Discord." 7 60

response=$?
case $response in
   0) clear && wget http://ftp.us.debian.org/debian/pool/main/liba/libappindicator/libappindicator1_0.4.92-7_amd64.deb && wget http://ftp.us.debian.org/debian/pool/main/libi/libindicator/libindicator7_0.5.0-4_amd64.deb && sudo apt-get install ./libindicator7_0.5.0-4_amd64.deb -y && sudo apt install ./libappindicator1_0.4.92-7_amd64.deb -y && rm libappindicator1_0.4.92-7_amd64.deb && rm libindicator7_0.5.0-4_amd64.deb && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh
