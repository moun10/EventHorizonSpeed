#!/bin/bash

echo "Wifi Starter"
airmon-ng start wlan0
cd /etc/wpa_supplicant
echo "Enter Info"
read -p 'U: ' uvar
read -sp 'P: ' pvar
wpa_passphrase "$uvar" $pvar > f.conf
clear
wpa_supplicant -Dwext -iwlan0mon -c/etc/wpa_supplicant/f.conf






