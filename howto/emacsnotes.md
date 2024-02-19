# Emacs notes
my notes while learning emacs

## Setting up Doom emacs

install emacs
`sudo apt install emacs`
install doom emacs
```
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
~/.config/emacs/bin/doom sync
emacs
```
this will download and install doom emacs then launch doom emacs
manage packages for doom emacs in the ~/.config/doom/init.el file</br>
uncomment the ones that you want and then run `doom upgrade`</br>


## Emacs server

command to start the emacs daemon
`emacs --daemon`

