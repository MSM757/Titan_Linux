#!/bin/bash
response=$(dialog --no-shadow --title "APT Tools" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "Repair APT and DPKG" \
2 "Clean APT cache" \
3 "Dump package manifest" --stdout)


case $response in
   1) sh /usr/share/titanlinux/titantoolbox/RepairApt.sh;;
   2) sh /usr/share/titanlinux/titantoolbox/CleanApt.sh;;
   3) sh /usr/share/titanlinux/titantoolbox/DumpApt.sh;;
   255) exit;;
esac
exit
