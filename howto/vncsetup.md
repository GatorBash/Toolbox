#Set up VNC server

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

# VNC client software

`sudo apt install xtightvncviewer`</br>
`vncviewer <ip>:<port>`</br>
