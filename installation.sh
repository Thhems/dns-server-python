#! /usr/bin/env bash

sudo apt-get install hostapd -y
sudo apt-get install gnome-terminal -y
sudo apt-get install isc-dhcp-server -y

#dependances server dns python
sudo pip install dnspython

#config dhcpd
sudo cp dns/conf/dhcpd.conf /etc/dhcp/dhcpd.conf

echo -e "\n\n\033[1;31mFinished, you can reboot :)\n \033[0m"
