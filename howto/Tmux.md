# Tmux howto

## Why Tmux

### What is Tmux

Tmux is a terminal multiplexor.</br>
What is a terminal multiplexor?</br>
It allows you to take one terminal and split it multiple times without making multiple windows</br>
The reason you want to use tmux is that it works in the terminal that you are already using</br>
Why does this matter, well that means that if you are working in a remote session you can open it up within</br> 
that session with out having to open another window</br>
One nice thing that tmux does is it creates a session that you can reattach to if you get disconnected.</br>

## Install

Tmux can be installed with a simple one line command</br>
`sudo apt install tmux`</br>
This command is used with a debian based distro but all you would need to do is swap out the package manager</br>
for what ever your current distro is.</br>
for example swap out `apt` for `dnf` or `pacman`</br>

## Using Tmux

in order to start Tmux all you will need to do is type `tmux` in the terminal</br>
tmux uses a series of hot keys to use it so once you have it open you will need to use hotkeys to manipulate</br>
the session</br>

### Hotkeys to know

tmux will use hotkeys by going into a command mode of sorts in order to put in hotkeys you will first need to</br>
enter this mode by pressing the key combination of `Ctrl` + `b`</br>
in order to split the terminal into two side by terminals `Ctrl` + `b` `%`</br>
in order to split the terminal into two stacked terminals `Ctrl` + `b` `"`</br>
**this can be used multiple times to to make as many terminal as you want**</br>
in order to move between these terminals use `Ctrl` + `b` then use the arrow keys to move where you want


