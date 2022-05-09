#!/bin/bash
response=$(dialog --no-shadow --title "LibreOffice Installer" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "Writer" \
2 "Calc" \
3 "Impress" \
4 "Draw" \
5 "Math" \
6 "Base" \
7 "Help Files" \
8 "Clipart" \
9 "Extra Interface Languages" \
10 "BACK..." --stdout)

case $response in
   1) clear && sudo apt install libreoffice-writer libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   2) clear && sudo apt install libreoffice-calc libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   3) clear && sudo apt install libreoffice-impress libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   4) clear && sudo apt install libreoffice-draw libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   5) clear && sudo apt install libreoffice-math libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   6) clear && sudo apt install libreoffice-base libreoffice-kde5 libreoffice-style-breeze && echo Successful! && sleep 5 && sudo -k;;
   7) clear && sudo apt install libreoffice-help-common && echo Successful! && sleep 5 && sudo -k;;
   8) clear && sudo apt install openclipart-libreoffice && echo Successful! && sleep 5 && sudo -k;;
   9) clear && sudo apt install llibreoffice-L10n-*  && echo Successful! && sleep 5 && sudo -k;;
   10) clear && sh /usr/share/titanlinux/titantoolbox/LibreOffice.sh;;
   255) exit;;
esac
sh /usr/share/titanlinux/titantoolbox/LibreOfficeCustom.sh
