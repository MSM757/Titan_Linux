#!/bin/bash
response=$(dialog --no-shadow --title "Hardware Info" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "View" \
2 "Dump to Text File in the Home directory" --stdout)

case $response in
   1) clear && inxi --full;;
   2) clear && inxi --full >> $HOME/hardware_info.txt && echo "Successful!" && sleep 5 && exit;;
   255) exit;;
esac
sleep infinity
