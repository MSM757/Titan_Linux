#!/bin/bash
dialog --title "Dump APT" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Dump names of all installed packages to a text file in your Home directory?" 7 60

response=$?
case $response in
   0) sudo dpkg-query -f '${binary:Package}\n' -W > packages_list.txt && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) echo exit;;
esac
exec bash;
