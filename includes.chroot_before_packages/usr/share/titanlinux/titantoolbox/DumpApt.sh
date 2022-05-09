#!/bin/bash
dialog --title "Dump APT" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Dump names of all installed packages to a text file in your Home directory?" 7 60

response=$?
case $response in
   0) sudo dpkg-query -f '${binary:Package}\n' -W > packages_list.txt && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AptToolsMenu.sh
