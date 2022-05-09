#!/bin/bash
dialog --no-shadow --title "Update Grub" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "ADVANCED: Update your grub configuration? This is required after making changes to the grub customizer utility." 7 60

response=$?
case $response in
   0) clear && sudo grub-mkconfig -o /boot/grub/grub.cfg && echo Successful! && sleep 5 && sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/AdvancedMenu.sh
