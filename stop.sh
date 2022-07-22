#! /usr/bin/env bash 

sudo ps aux | grep dns | awk '{ print $2 }' | xargs kill  
sudo systemctl stop  isc-dhcp-server.service
echo "Processes stopped.."
