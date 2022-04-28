#!/bin/bash
dialog --title "Chrome Browser" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install the Chrome Browser? This utility installs a 3rd party repository.)" 7 60

response=$?
case $response in
   0) clear && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt-get install ./google-chrome-stable_current_amd64.deb && sudo rm google-chrome-stable_current_amd64.deb && echo Successful! && sleep 5 && exit;;
   1) exit;;
   255) exit;;
esac
exec bash;
