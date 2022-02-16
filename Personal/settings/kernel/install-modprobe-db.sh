#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://wiki.archlinux.org/title/Modprobed-db


sudo pacman -S modprobed-db --noconfirm --needed
modprobed-db
modprobed-db store
systemctl --user enable --now modprobed-db.service


echo "################################################################"
echo "####                      INSTALLED                       ######"
echo "################################################################"
