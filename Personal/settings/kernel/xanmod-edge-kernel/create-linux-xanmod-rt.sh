#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#https://wiki.archlinux.org/title/Modprobed-db


wget https://aur.archlinux.org/cgit/aur.git/snapshot/linux-xanmod-rt.tar.gz

tar xzf linux-xanmod-rt*

rm linux-xanmod-rt.tar.gz

FIND="_microarchitecture=0"
REPLACE="_microarchitecture=13"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

FIND="use_numa=y"
REPLACE="use_numa=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

FIND="use_tracers=y"
REPLACE="use_tracers=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

FIND="_compiler=gcc"
REPLACE="_compiler=gcc"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

FIND="_compress_modules=n"
REPLACE="_compress_modules=n"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

FIND="_localmodcfg=n"
REPLACE="_localmodcfg=y"
sed -i "s/$FIND/$REPLACE/g" linux-xanmod-rt/PKGBUILD

cd linux-xanmod-rt

makepkg -s --skippgpcheck

echo "################################################################"
echo "####                      INSTALLED                       ######"
echo "################################################################"
