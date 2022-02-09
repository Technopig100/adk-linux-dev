#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "################################################################"
echo "#########       Screenshot settings             ################"
echo "################################################################"

#echo "Making sure gnome-screenshot saves in jpg - smaller in kb"

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

cd $installed_dir/settings/gnome-screenshot
sh set-gnome-screenshot-to-save-as-jpg.sh


echo "################################################################"
echo "#########    screenshot settings  installed     ################"
echo "################################################################"
