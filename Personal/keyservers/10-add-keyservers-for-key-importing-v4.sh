#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
[ -d $HOME"/.gnupg" ] || mkdir -p $HOME"/.gnupg"

echo "Adding keyservers to your personal .gpg for future applications"
echo "that require keys to be imported with yay for example"

echo '
hkps://keys.openpgp.org
hkps://keyserver.ubuntu.com
hkps://zimmermann.mayfirst.org' | tee --append ~/.gnupg/gpg.conf

chmod 600 ~/.gnupg/gpg.conf
chmod 700 ~/.gnupg

echo "Adding keyservers to the /etc/pacman.d/gnupg folder for the use with pacman"

echo '
hkps://keys.openpgp.org
hkps://keyserver.ubuntu.com
hkps://zimmermann.mayfirst.org' | sudo tee --append /etc/pacman.d/gnupg/gpg.conf

echo "################################################################"
echo "###                  keyservers added                       ####"
echo "################################################################"

#keyserver hkp://pool.sks-keyservers.net:80
#keyserver hkps://hkps.pool.sks-keyservers.net:443
#keyserver hkp://ipv4.pool.sks-keyservers.net:11371