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

# when on ADK-Linux - remove files 

if [ -f /etc/adk-release ]; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Removing software from Build"
  echo "################################################################"
  tput sgr0
  echo
  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/
    sudo mkdir /etc/skel/
    sudo rm /usr/local/bin/Installation_guide
    sudo rm /usr/local/bin/livecd-sound

  fi  
  sudo pacman -R --noconfirm adk-calamares-config-git
  sudo pacman -R --noconfirm adk-system-installation-git
  sudo pacman -R --noconfirm arch-install-scripts
  sudo pacman -R --noconfirm archinstall
  sudo pacman -R --noconfirm archiso
  sudo pacman -R --noconfirm adk-calamares
  sudo pacman -Rs --noconfirm  adk-sddm-sugar-candy-git
  sudo pacman -Rs --noconfirm  adk-dark-git
  sudo pacman -Rs --noconfirm  adk-min-plasma-git
  sudo pacman -Rs --noconfirm  adklinux-plasma-git
  sudo pacman -Rs --noconfirm  aritim-dark-kde-git
  sudo pacman -Rs tlp --noconfirm
  sudo pacman -Rs broadcom-wl-dkms --noconfirm
  sudo pacman -Rs r8168-dkms --noconfirm
  sudo pacman -Rs xf86-video-amdgpu --noconfirm
  sudo pacman -Rs xf86-video-fbdev --noconfirm
  sudo pacman -Rs xf86-video-openchrome --noconfirm
  sudo pacman -Rs xf86-video-vmware --noconfirm
  sudo pacman -Rs xf86-video-ati --noconfirm
  sudo pacman -Rs xf86-video-nouveau --noconfirm
  sudo pacman -Rs xf86-video-vesa --noconfirm
  sudo pacman -Rs spice-vdagent --noconfirm
  sudo pacman -Rs qemu-guest-agent --noconfirm
  sudo pacman -Rs virtualbox-guest-utils --noconfirm
  sudo pacman -Rs xf86-input-synaptics --noconfirm
  sudo pacman -Rs amd-ucode --noconfirm
  sudo pacman -Rs intel-ucode --noconfirm
  sudo pacman -Rs iwd --noconfirm
  sudo pacman -R --noconfirm  virtualbox
  sudo pacman -R --noconfirm  virtualbox-ext-oracle
  sudo pacman -R --noconfirm  virtualbox-guest-iso
  #sudo pacman -R --noconfirm  plasma-pa
  #sudo pacman -R --noconfirm  pulseaudio-alsa
  #sudo pacman -R --noconfirm  bluedevil
  #sudo pacman -R --noconfirm  pulseaudio-bluetooth
  #sudo pacman -R --noconfirm  adk-linux-meta-netdisc
  #sudo pacman -R --noconfirm  system-config-printer
  #sudo pacman -R --noconfirm  cups
  #sudo pacman -R --noconfirm  cups-pdf
  #sudo pacman -R --noconfirm  kinfocenter
  #sudo pacman -R --noconfirm  kscreen
  #sudo pacman -R --noconfirm  plasma-firewall
  #sudo pacman -R --noconfirm  ufw
  #sudo pacman -R --noconfirm  kdeplasma-addons
  #sudo pacman -R --noconfirm  purpose
  #sudo pacman -R --noconfirm  kaccounts-providers
  #sudo pacman -R --noconfirm  powerdevil
  #sudo pacman -R --noconfirm  power-profile-daemon
  #sudo pacman -R --noconfirm  kdf
  #sudo pacman -R --noconfirm  skanlite
  #sudo pacman -R --noconfirm  dragon
  #sudo pacman -R --noconfirm  vlc
  #sudo pacman -R --noconfirm  firefox
  #sudo pacman -R --noconfirm  hunspell-en_US
  #sudo pacman -R --noconfirm  hunspell
  #sudo pacman -R --noconfirm  latte-dock
  #sudo pacman -R --noconfirm  variety
  #sudo pacman -R --noconfirm  pamac-aur
  #sudo pacman -R --noconfirm  pamac-tray-icon-plasma
  sudo pacman -R --noconfirm  sweeper
  sudo pacman -R --noconfirm  spectacle
  sudo pacman -R --noconfirm  kcalc
  sudo pacman -R --noconfirm  ark
  sudo pacman -R --noconfirm  catfish
  sudo pacman -R --noconfirm  mintstick
  sudo pacman -R --noconfirm  ksystemlog
  sudo pacman -R --noconfirm  ksystemstats
  sudo pacman -R --noconfirm  systemdgenie
  sudo pacman -R --noconfirm  gnome-disk-utility
  sudo pacman -R --noconfirm  adk-hblock-git
  sudo pacman -R --noconfirm  ckb-next
  sudo pacman -R --noconfirm  filezilla
  sudo pacman -R --noconfirm  caprine
  sudo pacman -R --noconfirm  discord
  sudo pacman -R --noconfirm  kget
  sudo pacman -R --noconfirm  mailspring
  sudo pacman -R --noconfirm  remote-viewer
  sudo pacman -R --noconfirm  gimp
  sudo pacman -R --noconfirm  inkscape
  sudo pacman -R --noconfirm  adk-linux-meta-steam-amd
  sudo pacman -R --noconfirm  adk-linux-meta-samba
  sudo pacman -R --noconfirm  adk-linux-meta-virtualbox
  sudo pacman -R --noconfirm  meld
  sudo pacman -R --noconfirm  sublime-text-4
  sudo pacman -R --noconfirm  nvidia-dkms
  sudo pacman -R --noconfirm  nvidia-settings
  sudo pacman -R --noconfirm  nvidia-utils

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

sudo mkinitcpio -P

sudo grub-mkconfig -o /boot/grub/grub.cfg
  

