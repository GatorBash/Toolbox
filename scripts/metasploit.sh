#!/bin/bash

if [[ $UID != 0 ]]
then 
  echo "Run it as root"
  exit 1
fi

# starting up postgresql
systemctl enable postgresql
wait
systemctl start postgresql
wait
msfdb init
wait

# Metasploit database initialization
msfdb init
wait

echo "all done"
exit 0
