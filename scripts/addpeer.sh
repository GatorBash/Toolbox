#!/bin/bash

#taking initial input from user for var
user=$1
ip=$2
echo "absolute path to key"
read -r key
echo "client ip"
read -r cip
pubkey=$(cat $key)
ssh $user@$ip "echo " " >> /etc/wireguard/wg0.conf; echo "[Peer]" >> /etc/wireguard/wg0.conf; echo "PublicKey = $pubkey" >> /etc/wireguard/wg0.conf; echo "AllowedIPs = $cip/32" >> /etc/wireguard/wg0.conf; wg-quick down wg0; wg-quick up wg0"

