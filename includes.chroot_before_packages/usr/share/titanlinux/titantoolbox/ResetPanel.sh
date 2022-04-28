#!/bin/bash
dialog --title "Panel Reset" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Reset the panel to Titan default?" 7 60

response=$?
case $response in
   0) clear && cp /usr/share/titanlinux/titantoolbox/desktop-layouts/TitanDark/plasma-org.kde.plasma.desktop-appletsrc $HOME/.config/ && echo 'Success! Now run the Plasma Restart option in the Titan Toolbox.' && trap 'sleep infinity' EXIT;;
   1) exit;;
   255) exit;;
esac
