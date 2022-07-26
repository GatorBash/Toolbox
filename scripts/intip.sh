#!/bin/bash

echo "what interface ip do you need?"
read -r int
echo "here you go"
ip a | grep $int | grep inet | cut -f 6 -d " " | cut -c 1-14
