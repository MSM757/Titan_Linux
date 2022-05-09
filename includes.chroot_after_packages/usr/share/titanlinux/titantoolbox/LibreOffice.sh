#!/bin/bash
response=$(dialog --no-shadow --title "LibreOffice Installer" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "" 0 0 0 \
1 "Install All Applications + Clipart + Help Files (en-us interface)" \
2 "Install All Applications + Clipart + Help Files (extra interface languages)" \
3 "Custom Install"  --stdout)

case $response in
   1) clear && sudo apt-get install libreoffice libreoffice-kde5 openclipart-libreoffice libreoffice-help-common libreoffice-style-breeze -y && echo Successful! && sleep 5 && sudo -k;;
   2) clear && sudo apt-get install libreoffice libreoffice-kde5 libreoffice-style-breeze openclipart-libreoffice libreoffice-help-common libreoffice-L10n-* -y && echo Successful! && sleep 5 && sudo -k;;
   3) clear && sh /usr/share/titanlinux/titantoolbox/LibreOfficeCustom.sh;;
   255) exit;;
esac
sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh
