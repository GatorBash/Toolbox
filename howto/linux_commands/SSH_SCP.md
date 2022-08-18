# SSH notes

### Connect to host

`ssh <user>@<ip/hostname>`
if you need to specify a port use the `-p <port number>` option

### Port forward to remote host

`ssh <user>@<ip/hostname> -R <port to forward to>:<ip of device providing port>:<port of service>`</br>
when you run it, it will look like a regular login</br>
keep the terminal open</br>
check your netstat</br>
you should see the port that you forwarded open on `0.0.0.0:<port forwarded>`</br>
you can now access that service on the local host</br>

#### Port forwarding options
`-N` only forward ports and do not execute commands</br>
`-f` Put SSH to the bachfround after the connection is established(frees the terminal)</br>

### Running commands over ssh

`ssh <user>@<ip/hostname> "<command>"`</br>

### Key generation

`ssh-keygen`</br>
makes ssh key so that you don't need to use passwords</br>
this uses PKI so you will generate a public and private</br>
`ssh -copy-id <username>@<ip/hostname>`</br>
to log into a host using a key</br>
`ssh <user>@<ip/hostname> -i <path to key>`</br>
make sure you use the private key or it won't work</br>

# SCP notes

### move files to remote host

push
- `scp <file to move> <user>@<ip/hostname>:<path to save location>`

pull
- `scp <user>@<ip/hostname>:<file path> <where to put file locally>`

