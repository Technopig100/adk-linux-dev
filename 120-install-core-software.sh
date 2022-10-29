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


sudo pacman -S --noconfirm --needed plasma-pa
sudo pacman -S --noconfirm --needed pulseaudio-alsa
sudo pacman -S --noconfirm --needed bluedevil
sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed adk-linux-meta-netdisc
sudo pacman -S --noconfirm --needed system-config-printer
sudo pacman -S --noconfirm --needed cups
sudo pacman -S --noconfirm --needed cups-pdf
sudo pacman -S --noconfirm --needed kinfocenter
sudo pacman -S --noconfirm --needed kscreen
sudo pacman -S --noconfirm --needed plasma-firewall
sudo pacman -S --noconfirm --needed ufw
sudo pacman -S --noconfirm --needed kdeplasma-addons
sudo pacman -S --noconfirm --needed purpose
sudo pacman -S --noconfirm --needed kaccounts-providers
sudo pacman -S --noconfirm --needed powerdevil
sudo pacman -S --noconfirm --needed power-profile-daemon
sudo pacman -S --noconfirm --needed kdf
sudo pacman -S --noconfirm --needed skanlite
sudo pacman -S --noconfirm --needed dragon
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed hunspell-en_US
sudo pacman -S --noconfirm --needed hunspell
sudo pacman -S --noconfirm --needed latte-dock

sudo systemctl enable cups.service

#sudo pacman -S --noconfirm --needed variety
sudo pacman -S --noconfirm --needed pamac-aur
sudo pacman -S --noconfirm --needed pamac-tray-icon-plasma
#sudo pacman -S --noconfirm --needed sweeper
#sudo pacman -S --noconfirm --needed spectacle
#sudo pacman -S --noconfirm --needed kcalc
#sudo pacman -S --noconfirm --needed ark
#sudo pacman -S --noconfirm --needed catfish
#sudo pacman -S --noconfirm --needed mintstick
#sudo pacman -S --noconfirm --needed ksystemlog
#sudo pacman -S --noconfirm --needed ksystemstats
#sudo pacman -S --noconfirm --needed systemdgenie
#sudo pacman -S --noconfirm --needed gnome-disk-utility
#sudo pacman -S --noconfirm --needed adk-hblock-git
#sudo pacman -S --noconfirm --needed ckb-next
#sudo pacman -S --noconfirm --needed filezilla
#sudo pacman -S --noconfirm --needed caprine
#sudo pacman -S --noconfirm --needed discord
#sudo pacman -S --noconfirm --needed kget
#sudo pacman -S --noconfirm --needed mailspring
#sudo pacman -S --noconfirm --needed remote-viewer
#sudo pacman -S --noconfirm --needed gimp
#sudo pacman -S --noconfirm --needed inkscape
#sudo pacman -S --noconfirm --needed adk-linux-meta-steam-amd
#sudo pacman -S --noconfirm --needed adk-linux-meta-samba
#sudo pacman -S --noconfirm --needed adk-linux-meta-virtualbox
#sudo pacman -S --noconfirm --needed meld
#sudo pacman -S --noconfirm --needed sublime-text-4
sudo pacman -S --noconfirm --needed gzip
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed unzip

if [ ! -f /usr/share/xsessions/plasma.desktop ]; then
  sudo pacman -S --noconfirm --needed 
fi

###############################################################################################


echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
