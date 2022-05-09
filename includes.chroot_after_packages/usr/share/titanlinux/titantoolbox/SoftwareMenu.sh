#!/bin/bash
response=$(dialog --no-shadow --title "Extra Software" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "Install harder to install software more quicker." 0 0 0 \
1 "Browser Installer" \
2 "LibreOffice Installer" \
3 "Install Encrypted DVD Support" \
4 "Virt-manager Hypervisor" \
5 "Virtualbox Hypervisor" \
6 "Appimage Launcher" --stdout)



case $response in
   1) sh /usr/share/titanlinux/titantoolbox/BrowserManager.sh;;
   2) sh /usr/share/titanlinux/titantoolbox/LibreOffice.sh;;
   3) sh /usr/share/titanlinux/titantoolbox/InstallDVD.sh;;  
   4) sh /usr/share/titanlinux/titantoolbox/VirtManager.sh;;   
   5) sh /usr/share/titanlinux/titantoolbox/Virtualbox.sh;;
   6) sh /usr/share/titanlinux/titantoolbox/InstallAppimageLauncher.sh;;      
   255) exit;;
esac
exit;
