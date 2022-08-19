# Package managers

Debian based = `apt`</br>
Red Hat/Fedora based = `yum`, `dnf`</br>
Arch based = `pacman`</br>

## `apt` syntax

update repositories</br>
`apt update`</br>

upgrade currently installed packages to most up to date verion</br>
`apt upgrade`</br>

upgrade currently installed packages to most up to date versions and new dependancies</br>
`apt full-upgrade`</br>

check to see if a package is avalable on the repository</br>
`apt search <package>`</br>

check to get more information on a package</br>
`apt show <package>`</br>

remove a package</br>
`apt remove <package>`</br>

remove a package and dependancies</br>
`apt purge <package>`</br>

remove not needed packages automatically</br>
`apt autoremove`</br>


install a package</br>
`apt install <package>`</br>

## `yum` syntax

to update and upgrade system</br>
`yum update`</br>

to install package</br>
`yum install <package>`</br>

to remove package</br>
`yum remove <package>`</br>

