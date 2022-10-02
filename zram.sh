#!/bin/bash
#set -e

sudo pacman -S zram-generator --noconfirm --needed

echo '[zram0] 
zram-size = ram / 2' | sudo tee /etc/systemd/zram-generator.conf

sudo systemctl daemon-reload 

sudo systemctl start /dev/zram0

echo "check with"
echo "swapon or zramctl or"
echo "with systemd systemctl status systemd-zram-setup@zram0.service"