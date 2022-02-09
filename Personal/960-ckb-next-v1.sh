#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

##read -p "Do you wish to install ckb-next-git? y/n  :" answer

  ##  case $answer in
    ##    [Yy] )
        installed_dir=$(dirname `pwd`)
        #software
        sh $installed_dir/AUR/install-ckb-next-git-v*
        #copy over folder with config
        cp -r $installed_dir/Personal/settings/ckb-next/ ~/.config/
      ##  ;;

      ##  [Nn] ) echo "Nothing installed";;
  ##  esac

sudo systemctl enable ckb-next-daemon
sudo systemctl start ckb-next-daemon

echo "################################################################"
echo "#########   ckb-next config has been copied     ################"
echo "################################################################"
