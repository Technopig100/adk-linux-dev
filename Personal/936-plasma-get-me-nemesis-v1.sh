#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


#
sudo pacman -R arcolinux-plasma-git --noconfirm
sudo pacman -S arcolinux-plasma-nemesis-git --noconfirm --needed
#
sudo pacman -R arcolinux-config-git --noconfirm
sudo pacman -R arcolinux-config-plasma-git --noconfirm
sudo pacman -S arcolinux-config-plasma-nemesis-git --noconfirm --needed
#
#
sudo pacman -R arcolinux-qt5-git --noconfirm
sudo pacman -S arcolinux-qt5-plasma-git --noconfirm --needed
#
cp -rT /etc/skel ~

echo "################################################################"
echo "####                 PLASMA  INSTALLED                    ######"
echo "################################################################"
