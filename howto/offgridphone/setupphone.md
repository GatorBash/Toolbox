# Set up for your phone

If you want your phone to not be trying to reach out to differnt cell carriers

make sure you don't have a sim card in it before you turn it on.

this isn't going to disable peoples ability to track you geographicly.

This is due to how phones will always ping nearby towers to use emergency features.

However this will keep people from tracking what apps you have and what and get rid of you needing

to use the app store.

## Dev mode

Turn on your phone if you haven't already.  
- go to settings
- go to "about my phone/device"
- find the section that "build info"
- tap the build tab 6 - 10
- there should be a popup saying you are x number of taps away from becoming a developer
- once complete it will say you are a developer now
- there will be a new option in the settings menu called developer options
- you will find a bunch of fun new things in there for you to play with
- go down to the section on usb settings 
- enable usb debuging 

## Computer setup

- you will need a linux computer for this next part
- make sure that you are connected to the internet
- run your update command like `sudo apt update`
- now we will need to instell the andriod debug bridge or adb
- run this command `sudo apt install adb` or what everpackage manager you are using for your system
- you will need the relivant apk files on your computer to install them on your phone
- apk files are just the install files for apps you can download them at https://apkpure.com/
- i've included some that i use a lot in this git feel free to test them out

## Installing apps

- first things first you will need to plug the device you are using into your computer using an usb cable
- make sure that cable can also do data transfer
- if your device starts charging and nothing else then the cable probubly cannot do data transfer so just get a differnt cable
- when you plugg it in if you get a prompt to trust the computer and your devices storage shows up on the computer you're good
- tap yes to trust the computer on your device
- now move to your computer
- open a terminal and type `adb devices`
- this will pull up a list of devices connected to your computer that you can use with the `adb` tool
- if you see your device you're good
- next pick out the apk file that you want to install (you should be able to install multiple at a time, but i prefer to only do one at a time)
- the next command you will type is `adb install <apk file>` 
- if it says installed successfully congrats you just installed that file on your device
- sometimes it may fail 
- this is usually due to the app not being compatable with your device
