#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://wiki.archlinux.org/title/Modprobed-db


wget https://aur.archlinux.org/cgit/aur.git/snapshot/linux-xanmod-edge.tar.gz

tar xzf linux-xanmod-edge*

rm linux-xanmod-edge.tar.gz

FIND="_microarchitecture=0"
REPLACE="_microarchitecture=38"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

FIND="use_numa=y"
REPLACE="use_numa=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

FIND="use_tracers=y"
REPLACE="use_tracers=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

FIND="_compiler=gcc"
REPLACE="_compiler=gcc"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

FIND="_compress_modules=n"
REPLACE="_compress_modules=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

FIND="_localmodcfg=n"
REPLACE="_localmodcfg=y"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-edge/PKGBUILD

cd linux-xanmod-edge

makepkg -s --skippgpcheck

echo "################################################################"
echo "####                      INSTALLED                       ######"
echo "################################################################"
