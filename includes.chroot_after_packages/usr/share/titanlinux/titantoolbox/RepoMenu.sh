#!/bin/bash
response=$(dialog --no-shadow --title "Enable Extra Repositories & Helpers" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "Enable extra repositories to have access to even more software." 0 0 0 \
1 "Enable non-free, contrib and backports" \
2 "Enable 32-bit architecture repository" \
3 "Install Snap Support"  \
4 "Install Flatpak Support" --stdout)

case $response in
   1) sh /usr/share/titanlinux/titantoolbox/InstallRepos.sh;;
   2) sh /usr/share/titanlinux/titantoolbox/Install32Bit.sh;;
   3) sh /usr/share/titanlinux/titantoolbox/InstallSnap.sh;;
   4) sh /usr/share/titanlinux/titantoolbox/InstallFlatpak.sh;;
   255) exit;;
esac
exit
exit
