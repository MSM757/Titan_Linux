#!/bin/bash
dialog --title "Librewolf Browser" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the LibreWolf Browser? This utility installs a 3rd party repository.)" 7 60

response=$?
case $response in
   0) clear && echo "deb [arch=amd64] http://deb.librewolf.net bullseye main" | sudo tee /etc/apt/sources.list.d/librewolf.list && sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg && sudo apt update && sudo apt install librewolf -y && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
