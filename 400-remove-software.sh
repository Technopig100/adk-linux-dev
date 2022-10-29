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
  sudo pacman -Rs --noconfirm --needed adk-sddm-sugar-candy-git
  sudo pacman -Rs --noconfirm --needed adk-dark-git
  sudo pacman -Rs --noconfirm --needed adk-min-plasma-git
  sudo pacman -Rs --noconfirm --needed adklinux-plasma-git
  sudo pacman -Rs --noconfirm --needed aritim-dark-kde-git
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
  sudo pacman -R --noconfirm virtualbox
  sudo pacman -R --noconfirm virtualbox-ext-oracle
  sudo pacman -R --noconfirm virtualbox-guest-iso
  #sudo pacman -R --noconfirm --needed plasma-pa
  #sudo pacman -R --noconfirm --needed pulseaudio-alsa
  #sudo pacman -R --noconfirm --needed bluedevil
  #sudo pacman -R --noconfirm --needed pulseaudio-bluetooth
  #sudo pacman -R --noconfirm --needed adk-linux-meta-netdisc
  #sudo pacman -R --noconfirm --needed system-config-printer
  #sudo pacman -R --noconfirm --needed cups
  #sudo pacman -R --noconfirm --needed cups-pdf
  #sudo pacman -R --noconfirm --needed kinfocenter
  #sudo pacman -R --noconfirm --needed kscreen
  #sudo pacman -R --noconfirm --needed plasma-firewall
  #sudo pacman -R --noconfirm --needed ufw
  #sudo pacman -R --noconfirm --needed kdeplasma-addons
  #sudo pacman -R --noconfirm --needed purpose
  #sudo pacman -R --noconfirm --needed kaccounts-providers
  #sudo pacman -R --noconfirm --needed powerdevil
  #sudo pacman -R --noconfirm --needed power-profile-daemon
  #sudo pacman -R --noconfirm --needed kdf
  #sudo pacman -R --noconfirm --needed skanlite
  #sudo pacman -R --noconfirm --needed dragon
  #sudo pacman -R --noconfirm --needed vlc
  #sudo pacman -R --noconfirm --needed firefox
  #sudo pacman -R --noconfirm --needed hunspell-en_US
  #sudo pacman -R --noconfirm --needed hunspell
  #sudo pacman -R --noconfirm --needed latte-dock
  #sudo pacman -R --noconfirm --needed variety
  #sudo pacman -R --noconfirm --needed pamac-aur
  #sudo pacman -R --noconfirm --needed pamac-tray-icon-plasma
  sudo pacman -R --noconfirm --needed sweeper
  sudo pacman -R --noconfirm --needed spectacle
  sudo pacman -R --noconfirm --needed kcalc
  sudo pacman -R --noconfirm --needed ark
  sudo pacman -R --noconfirm --needed catfish
  sudo pacman -R --noconfirm --needed mintstick
  sudo pacman -R --noconfirm --needed ksystemlog
  sudo pacman -R --noconfirm --needed ksystemstats
  sudo pacman -R --noconfirm --needed systemdgenie
  sudo pacman -R --noconfirm --needed gnome-disk-utility
  sudo pacman -R --noconfirm --needed adk-hblock-git
  sudo pacman -R --noconfirm --needed ckb-next
  sudo pacman -R --noconfirm --needed filezilla
  sudo pacman -R --noconfirm --needed caprine
  sudo pacman -R --noconfirm --needed discord
  sudo pacman -R --noconfirm --needed kget
  sudo pacman -R --noconfirm --needed mailspring
  sudo pacman -R --noconfirm --needed remote-viewer
  sudo pacman -R --noconfirm --needed gimp
  sudo pacman -R --noconfirm --needed inkscape
  sudo pacman -R --noconfirm --needed adk-linux-meta-steam-amd
  sudo pacman -R --noconfirm --needed adk-linux-meta-samba
  sudo pacman -R --noconfirm --needed adk-linux-meta-virtualbox
  sudo pacman -R --noconfirm --needed meld
  sudo pacman -R --noconfirm --needed sublime-text-4

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
  

