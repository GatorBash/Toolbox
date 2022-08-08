#!/bin/bash

sudo apt update -y
wait
sudo apt install xfce4 xfce4-goodies
wait
sudo apt install tightvncserver
wait
echo "be ready to input a password for your server."
echo "when it asks to set a password to for a view only user say no"
sleep 5
vncserver
wait
vncserver -kill :1
wait
echo "startxfce4 &" >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
vncserver -localhost
wait
echo "if you want to kill the server type"
echo "vncserver -kill :1"
echo "glhf"
exit 1
