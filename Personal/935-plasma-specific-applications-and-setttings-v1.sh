#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#bookmarks

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cp $installed_dir/settings/plasma/bookmarks/user-places.xbel ~/.local/share/user-places.xbel


echo "################################################################"
echo "####                 PLASMA  INSTALLED                    ######"
echo "################################################################"
