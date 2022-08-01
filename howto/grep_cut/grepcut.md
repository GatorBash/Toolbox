# Grep cut cheatsheet

- get a pid
-  `ps -e | grep <program name> | cut -d " " -f 4`

- get ip from ip command
- `ip a | grep <interface> | grep inet | cut -d " " -f 6 | cut -c 1-14`
