#!/bin/bash

# Update package
opkg update

#install packages
opkg install iptables iptables-mod-nat-extra redsocks zram-swap

#Then run this line
service redsocks stop && cd /etc && wget https://github.com/mosharoof98/BDIX-OpenWRT/raw/main/bdix.conf && cd /etc/init.d && wget https://github.com/mosharoof98/BDIX-OpenWRT/raw/main/bdix && chmod +x /etc/init.d/bdix && rm /etc/redsocks.conf && rm /etc/init.d/redsocks

cd /
clear


echo -e "Thanks for installing. Follow me for more updates: https://fb.me/mosharoof98"
