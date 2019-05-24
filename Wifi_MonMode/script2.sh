#!/bin/bash

cd /etc/wpa_supplicant
shred -vfzu -n 10 f.conf
dhclient -r
dhclient wlan0mon
echo nameserver 1.1.1.1 > /etc/resolv.conf



