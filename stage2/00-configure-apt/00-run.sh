#!/bin/bash -e
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg -o files/coral-archive-keyring.asc
cp files/coral-archive-keyring.asc /etc/apt/trusted.gpg.d 
rm files/coral-archive-keyring.asc

echo "deb [signed-by=/etc/apt/trusted.gpg.d/coral-archive-keyring.asc] https://packages.cloud.google.com/apt coral-edgetpu-stable main" | tee /etc/apt/sources.list.d/coral-edgetpu.list

apt-get update
apt-get dist-upgrade -y
