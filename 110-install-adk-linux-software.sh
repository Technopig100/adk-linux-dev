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

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "################### ADK-Linux Software to install"
echo "################################################################"
tput sgr0
echo

if grep -q adklinux_repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ ADK-Linux repos are already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo
  else
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Getting the keys and mirrors for ADK-Linux"
  echo "################################################################"
  tput sgr0
  echo
  sh arch/get-the-keys-and-repos.sh
  sudo pacman -Sy
fi

sudo pacman -S --noconfirm --needed adk-wallpaper-git

###############################################################################

# when on Plasma

if [ -f /usr/bin/startplasma-x11 ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Plasma related applications"
  echo "################################################################"
  tput sgr0
  echo

  sudo pacman -S --noconfirm --needed adk-sddm-sugar-candy-git
  sudo pacman -S --noconfirm --needed adk-dark-git
  sudo pacman -S --noconfirm --needed adk-min-plasma-git
  sudo pacman -S --noconfirm --needed aritim-dark-kde-git
fi

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo



