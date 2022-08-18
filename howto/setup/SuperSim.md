#Set up Super sim with pi cell hat

##Hardware needed

 - Sixfab cell hat
 - Cell modem 
 - Raspberry Pi
 - Micro SD Card (32GB or above)
 - monitor
 - keyboard
 - mouse
 - power supply

##Assemble Hardware

after hardware is assembled ensure the hdmi is plugged into hdmi0 port on pi before powering on

##Software

### on raspios

use the `sudo raspi-conig` command
 - select **Interfacing Options**
 - select **Serial Port**
 - when prompted for yes or no select no
 - when prompted for serial port hardware to be enabled select yes
 - select finish
 - when prompted to reboot select yes


