# SSH notes

### Connect to host

`ssh <user>@<ip/hostname>`
if you need to specify a port use the `-p <port number>` option

### Port forward to remote host

`ssh <user>@<ip/hostname> -R <port to forward to>:<ip of device providing port>:<port of service>`
- when you run it, it will look like a regular login
- keep the terminal open
- check your netstat
- you should see the port that you forwarded open on `0.0.0.0:<port forwarded>`
- you can now access that service on the local host

#### Port forwarding options
-N: only forward ports and do not execute commands

-f: Put SSH to the bachfround after the connection is established(frees the terminal)

### Running commands over ssh

- `ssh <user>@<ip/hostname> "<command>"`

### Key generation

- `ssh-keygen`
- makes ssh key so that you don't need to use passwords
- this uses PKI so you will generate a public and private
- `ssh -copy-id <username>@<ip/hostname>`
- to log into a host using a key
- `ssh <user>@<ip/hostname> -i <path to key>'
- make sure you use the private key or it won't work

# SCP notes

### move files to remote host

- push
- `scp <file to move> <user>@<ip/hostname>:<path to save location>`
- pull
- `scp <user>@<ip/hostname>:<file path> <where to put file locally>`
