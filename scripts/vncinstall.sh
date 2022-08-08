#!/bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "This script must be run as root"
  exit 1
fi

apt update -y
wait
apt install xfce4 xfce4-goodies
wait
apt install tightvncserver
wait
echo "be ready to input a password for your server."
echo "when it asks to set a password to for a view only user say no"
sleep 5
vncserver
wait
vncserver -kill :1
wait
