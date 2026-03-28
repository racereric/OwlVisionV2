#!/bin/bash -e
wget -P files https://github.com/markfrancisonly/frigate_debian_scripts/raw/refs/heads/master/install_coral_tpu.sh 
chmod +x files/install_coral_tpu.sh

files/install_coral_tpu.sh --install

apt-get update
apt-get dist-upgrade -y
EOF
