#! /usr/bin/env bash

usage() { echo "Usage: $0 [-n (Normal mode) || -p (Portail captif)]" 1>&2; exit 1; }

while getopts ":np" o; do
    	case "${o}" in
        n)
		sudo ./stop.sh
		echo "[*] Starting"
		echo "[*] Starting dhcp server"
		sudo service isc-dhcp-server start
		echo "[*] Starting dns server"
		sudo gnome-terminal -- bash -c "dns/dnsserver.py;exec bash"
		;;
	p)
		sudo ./stop.sh
                echo "[*] Starting"
                echo "[*] Starting dhcp server"
                sudo service isc-dhcp-server start
                echo "[*] Starting dns server with captive portal"
                sudo gnome-terminal -- bash -c "dns/dnsserverpc.py;exec bash"
		;;

	*)
		usage
		;;
	esac
done
