#!/bin/bash

if [[ $UID != 0 ]]
then 
  echo "Run it as root"
fi

# starting up postgresql
systemctl enable postgresql
wait
systemctl start postgresql
wait

# Metasploit database initialization
msfdb init
wait

echo "all done"
exit 0
