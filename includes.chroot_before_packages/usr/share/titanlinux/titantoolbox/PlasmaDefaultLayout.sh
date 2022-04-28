#!/bin/bash
dialog --title "Panel Reset" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Reset the panel to the Plasma 5 default?" 7 60

response=$?
case $response in
   0) clear && rm $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc && echo 'Success! Now run the Plasma Restart option in the Titan Toolbox.' && trap 'sleep infinity' EXIT;;
   1) exit;;
   255) exit;;
esac
