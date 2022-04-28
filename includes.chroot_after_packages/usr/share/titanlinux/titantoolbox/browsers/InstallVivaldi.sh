#!/bin/bash
dialog --title "Vivaldi Browser" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the Vivaldi Browser? This utility installs a 3rd party repository.)" 7 60

response=$?
case $response in
   0) clear && wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg && echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list && sudo apt update && sudo apt install vivaldi-stable && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
