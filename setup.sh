#! /usr/bin/env bash

sudo ./stop.sh

echo "[*] Starting"
echo "[*] Starting dhcp server"
sudo service isc-dhcp-server start
echo "[*] Starting dns server"
sudo gnome-terminal -- bash -c "dns/dnsserver.py;exec bash"

exit 0
