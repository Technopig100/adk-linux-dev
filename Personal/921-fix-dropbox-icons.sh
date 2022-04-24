#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

if [ -f /usr/share/pixmaps/dropbox.svg ]; then

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Dropbox desktop icon to be installed"
	echo "################################################################"
	tput sgr0
	echo

	installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

	sudo cp $installed_dir/settings/dropbox/dropbox.svg /usr/share/pixmaps/dropbox.svg
	sudo cp $installed_dir/settings/dropbox/dropbox.png /opt/dropbox/images/hicolor/16x16/status/dropboxstatus-idle.png
	sudo cp $installed_dir/settings/dropbox/dropbox.png /opt/dropbox/images/hicolor/16x16/status/dropboxstatus-logo.png

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### Dropbox desktop icon installed"
	echo "################################################################"
	tput sgr0
	echo

fi