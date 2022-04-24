#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

if 	lsblk -f | grep btrfs > /dev/null 2>&1 ; then

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Timeshift to be installed"
	echo "################################################################"
	tput sgr0
	echo	
	echo "You are using BTRFS. Installing the software ..."
	echo
	sudo pacman -S --needed --noconfirm timeshift
	sudo pacman -S --needed --noconfirm grub-btrfs
	sudo pacman -S --needed --noconfirm btrfs-assistant
	sudo pacman -S --needed --noconfirm timeshift-autosnap
	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Timeshift installed"
	echo "################################################################"
	tput sgr0
	echo	

else

	echo
	tput setaf 2
	echo "################################################################"
	echo "### Your harddisk/ssd/nvme is not formatted as BTRFS."
	echo "### Packages will not be installed."
	echo "################################################################"
	tput sgr0
	echo
fi