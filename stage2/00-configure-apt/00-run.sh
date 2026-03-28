#!/bin/bash -e
wget -P files https://github.com/markfrancisonly/frigate_debian_scripts/raw/refs/heads/master/install_coral_tpu.sh 
chmod +x files/install_coral_tpu.sh

on_chroot bash files/install_coral_tpu.sh --install
on_chroot << EOF
apt-get update
apt-get dist-upgrade -y
EOF
