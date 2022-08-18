# Networking

# Changing Interface config

changing</br>
`ifconfig <interface> <ip>`</br>

changing netmask and broadcast addr</br>
`ifconfig <interface> <ip> netmask <netmask> broadcast <broadcast ip>`</br>

change MAC Address</br>
```
ifconfig <interface> down
ifconfig <interface> hw ether <new mac address>
ifconfig <interface> up
```

new dhcp address

`dhclient <interface>`
