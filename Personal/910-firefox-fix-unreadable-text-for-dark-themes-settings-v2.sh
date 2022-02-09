#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################



#echo "Making sure firefox looks great in dark themes like Arc-Dark"
#echo "Firefox must have started once. The directory will not exist otherwise."

sh firefox &
sleep 1
killall firefox

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

cp -r $installed_dir/settings/firefox/chrome/ ~/.mozilla/firefox/*.default

#echo "Restart firefox to see the effect"


echo "################################################################"
echo "#########       firefox  settings installed     ################"
echo "################################################################"
