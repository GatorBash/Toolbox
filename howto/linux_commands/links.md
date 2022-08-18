# Making Hard/soft links

## `ln` command

hard links will work no matter where the file is.  If it is moved the hard link will still work</br>
even if it is deleted. However hard links cannot be linked to directories</br>
you will use the ln command to make hard/soft links</br>
to make a hard link use this command</br>
`ln <file> <file linked to file>`</br>

Soft links will not work if the file is moved. However you can use soft links to link to directories</br>
unlike hard links.  They can also navigate across partitions and different file systems.</br>
to create a soft link</br>
`ln -s <file> <file softlinked to file>`</br>
