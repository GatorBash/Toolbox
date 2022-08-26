#!/bin/bash

#This assumes that you are using the defualt location and name for your wireguard config
#taking initial input from user for var
user=$1
ip=$2

#get path to the public key
echo "absolute path to key"
read -r key

#set up ip for client
echo "client ip"
read -r cip

#making functiion to put the key into the config
pubkey=$(cat $key)

#making the client config and reseting the interface
ssh $user@$ip "echo " " >> /etc/wireguard/wg0.conf; echo "[Peer]" >> /etc/wireguard/wg0.conf; echo "PublicKey = $pubkey" >> /etc/wireguard/wg0.conf; echo "AllowedIPs = $cip/32" >> /etc/wireguard/wg0.conf; wg-quick down wg0; wg-quick up wg0"

