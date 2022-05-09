#!/bin/bash
response=$(dialog --no-shadow --title "Firewall Options" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "Enable" \
2 "Disable" \
3 "View Status" --stdout)

case $response in
   1) clear && sudo ufw enable && echo "Successful!";;
   2) clear && sudo ufw disable && echo "Successful!";;
   3) clear && sudo ufw status && sleep 5;;
   255) exit;;
esac
sudo sh /usr/share/titanlinux/titantoolbox/Firewall.sh
