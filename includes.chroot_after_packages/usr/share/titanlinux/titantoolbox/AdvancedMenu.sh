#!/bin/bash
response=$(dialog --no-shadow --title "Advanced Tools" \
--backtitle "Titan Toolbox by Matthew Moore & CobaltRogue" \
--menu "WARNING: These operations are advanced, if used wrong could cause system instability or system failures." 0 0 0 \
1 "Update Grub" \
2 "Install Latest Available Backported Kernel" \
3 "Install Backported Kernel Headers"  \
4 "Install Legacy Libappinidicator" \
5 "Uninstall Unused Kernels" --stdout)

case $response in
   1) sudo sh /usr/share/titanlinux/titantoolbox/UpdateGrub.sh;;
   2) sudo sh /usr/share/titanlinux/titantoolbox/InstallKernel.sh;;
   3) sudo sh /usr/share/titanlinux/titantoolbox/InstallKernelHeaders.sh;;
   4) sudo sh /usr/share/titanlinux/titantoolbox/FixAppindicator.sh;;
   5) sudo sh /usr/share/titanlinux/titantoolbox/UninstallUnusedKernels.sh;;
   255) exit;;
esac
exit
