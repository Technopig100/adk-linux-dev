#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Software to install for ALL"
echo "################################################################"
tput sgr0
echo


sudo pacman -S --noconfirm --needed archiso
sudo pacman -S --noconfirm --needed avahi
sudo pacman -S --noconfirm --needed bash-completion
sudo pacman -S --noconfirm --needed bat
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed downgrade
sudo pacman -S --noconfirm --needed duf
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed hardinfo-gtk3
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed hw-probe
sudo pacman -S --noconfirm --needed man-db
sudo pacman -S --noconfirm --needed man-pages
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed mintstick-git
sudo pacman -S --noconfirm --needed sublime-text-4
sudo pacman -S --noconfirm --needed variety
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed yay
sudo systemctl enable avahi-daemon.service
#sudo systemctl enable ntpd.service

#sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
#sudo pacman -S --noconfirm --needed bluez
#sudo pacman -S --noconfirm --needed bluez-libs
#sudo pacman -S --noconfirm --needed bluez-utils
#sudo pacman -S --noconfirm --needed blueberry

#sudo pacman -S --noconfirm --needed cups
#sudo pacman -S --noconfirm --needed cups-pdf
#sudo pacman -S --noconfirm --needed ghostscript
#sudo pacman -S --noconfirm --needed gsfonts
#sudo pacman -S --noconfirm --needed gutenprint
#sudo pacman -S --noconfirm --needed gtk3-print-backends
#sudo pacman -S --noconfirm --needed libcups
#sudo pacman -S --noconfirm --needed system-config-printer
#sudo pacman -S --noconfirm --needed sane
#sudo pacman -S --noconfirm --needed simple-scan

sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip

if [ ! -f /usr/share/xsessions/plasma.desktop ]; then
  sudo pacman -S --noconfirm --needed qt5ct
fi

###############################################################################################


echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
