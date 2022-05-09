#!/bin/bash
dialog --no-shadow --title "Kernel Headers" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Install the headers for the currently running kernel (Backported kernel only!) Warning: restart before using this utility if you had just installed the latest backported kernel.)" 7 60

response=$?
case $response in
   0) clear && sudo apt-get install -t bullseye-backports linux-headers-$(uname -r) && sleep 5 && sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh
