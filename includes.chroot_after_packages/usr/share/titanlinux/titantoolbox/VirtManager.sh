#!/bin/bash
dialog --no-shadow --title "Virt-Manager Installer" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--yesno "Install virt-manager?" 7 60

response=$?
case $response in
   0) clear && sudo apt install virt-manager qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon gir1.2-spiceclientgtk-3.0 -y && sudo virsh net-start default && sudo virsh net-autostart default && sudo modprobe vhost_net && echo Successful! && sleep 5 && sudo -k;;
   1) sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
   255) sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh;;
esac
sh /usr/share/titanlinux/titantoolbox/SoftwareMenu.sh
