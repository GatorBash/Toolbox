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

# SCP notes

### move files to remote host

`scp <file to move> <user>@<ip/hostname>:<path to save location>`
