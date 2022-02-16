#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Here we remove applications we do not want

sudo systemctl disable tlp.service

sudo pacman -Rs tlp --noconfirm

sudo pacman -Rs broadcom-wl-dkms --noconfirm

sudo pacman -Rs r8168-dkms --noconfirm

#sudo pacman -Rs xf86-video-amdgpu --noconfirm
sudo pacman -Rs xf86-video-fbdev --noconfirm
sudo pacman -Rs xf86-video-openchrome --noconfirm
sudo pacman -Rs virtualbox-guest-utils --noconfirm
sudo pacman -Rs xf86-video-vmware --noconfirm
sudo pacman -Rs xf86-video-ati --noconfirm
sudo pacman -Rs xf86-video-nouveau --noconfirm
sudo pacman -Rs xf86-video-vesa --noconfirm
sudo pacman -Rs intel-ucode --noconfirm
<<<<<<< HEAD
#sudo pacman -Rs amd-ucode --noconfirm
sudo pacman -Rs virtualbox-guest-utils --noconfirm
sudo pacman -Rs spice-vdagent --noconfirm
sudo pacman -Rs xf86-input-synaptics --noconfirm
#sudo pacman -Rs  --noconfirm
=======
sudo pacman -Rs amd-ucode --noconfirm
>>>>>>> a26a1d13bb8077fde2d8a72e772895daca6b24ec

echo "################################################################"
echo "################### software removed"
echo "################################################################"

sudo mkinitcpio -P

sudo grub-mkconfig -o /boot/grub/grub.cfg
