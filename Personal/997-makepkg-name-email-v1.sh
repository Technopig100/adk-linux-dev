#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

FIND='#PACKAGER="John Doe <john@doe.com>"'
REPLACE='PACKAGER="Jacob Durant <technopig10@gmail.com>"'

find /etc/makepkg.conf -type f -exec sudo sed -i "s/$FIND/$REPLACE/g" {} \;

echo "################################################################"
echo "####                     makepkg corrected                ######"
echo "################################################################"
