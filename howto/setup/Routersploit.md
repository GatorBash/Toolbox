#Set up Routersploit

**This is intended for a parrot install**

`sudo apt install git python3-pip`

`git clone https://www.github.com/threat9/routersploit`

- cd into routersploit directory

`python3 -m pip install -r requirements.txt`

`python3 rsf.py`

this will drop you into routersploit

##Bluetooth low energy support

`apt install libglib2.0-dev`

`python3 -m pip install bluepy`

`python3 rsf.py`
