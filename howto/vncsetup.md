# Set up VNC server

follow the process</br>
`sudo apt update`</br>
`sudo apt install xfce4 xfce4-goodies`</br>
`sudo apt install tightvncserver`</br>
to start a vnc server</br>
`vncserver`</br>
this will prompt you to create a password</br>
to reset the password use the command</br>
`vncpasswd`</br>
to kill your server</br>
`vncserver -kill :1`</br>
to assign the server to local host</br>
`vncserver -localhost`</br>
make sure these lines are in the ~/.vnc/xstartup</br>
```
#!/bin/bash
xrdb $HOME/.Xresources
startxfce4 &
```

# VNC client software

`sudo apt install xtightvncviewer`</br>
`vncviewer <ip>:<port>`</br>

# Set up as a service

store to the `/etc/systemd/system/vncserver@.service`

example service file</br>
```
[Unit]
Description=Start TightVNC server at startup![bert](https://user-images.githubusercontent.com/95302944/183508495-fc2bc812-3c2e-49ad-ab10-64369f6e99db.jpg)

After=syslog.target network.target

[Service]
Type=forking
User=sammy
Group=sammy
WorkingDirectory=/home/sammy

PIDFile=/home/sammy/.vnc/%H:%i.pid
ExecStartPre=-/usr/bin/vncserver -kill :%i > /dev/null 2>&1
ExecStart=/usr/bin/vncserver -depth 24 -geometry 1280x800 -localhost :%i
ExecStop=/usr/bin/vncserver -kill :%i

[Install]
WantedBy=multi-user.target
```
