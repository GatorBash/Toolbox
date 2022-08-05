# Gratuitous ARP

Gratuitous ARP can be use maliciously in this we will be looking at how to apply this to real</br>
world application</br>

## Tool in testing 

### Arping

This can be installed using your defauld package manager for debian</br>
`sudo apt install arping`</br>
currently I am working on using `arping` to do arp poisening to establish a man in the middle</br>
syntax will look like this</br>
`arping -U <IP> -i <interface name>`</br>
`-U` is going to send an unsolicited ARP request</br>
`-i` is going to be used to select the interface you are using</br>
