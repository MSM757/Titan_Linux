#!/bin/bash
dialog --no-shadow --title "Install Repositories" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install extra repos for more software and non-free support?" 7 60

response=$?
case $response in
   0) clear && sudo cp /usr/share/titanlinux/repos/sources.list /etc/apt/ && sudo cp /usr/share/titanlinux/repos/preferences /etc/apt/ && sudo apt update && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/RepoMenu.sh
