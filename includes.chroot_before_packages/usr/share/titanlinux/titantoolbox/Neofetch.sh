#!/bin/bash
response=$(dialog --no-shadow --title "Neofetch" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "Enable Neofetch when the Terminal starts" \
2 "Disable Neofetch when the Terminal starts" --stdout)

case $response in
   1) clear && echo 'neofetch' >> $HOME/.bash_startup && sleep 5 && sh /usr/share/titanlinux/titantoolbox/TweaksMenu.sh;;
   2) clear && sed -i '/neofetch/d' $HOME/.bash_startup && sleep 5 && sh /usr/share/titanlinux/titantoolbox/TweaksMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/TweaksMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/TweaksMenu.sh
