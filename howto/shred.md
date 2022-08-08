# Shred

shred is a command used to overwrite a file to hide its contents, and optionally delete it</br>

## So what

When you delete things on a device normally it will not full delete it.  What your computer will do is delete the link to the</br>
file and allocate it as usable space on your hard drive.</br>
Whats the big deal?  That data is still recoverable, so its not really deleted.  Now shred will overwritet it several times so you can't recover</br>
the information.</br>

## how to use

This command isn't super difficult to use.</br>
to just `shred` something just type</br>
`shred <file>`</br>
this will overwrite the file several times.</br>
but the file is still there. Well yes it is but now if you open the file you will find that the contents are no longer what they were.</br>
if you want to get rid of the file just type</br>
`shred -u <file>`</br>
this will get rid of the file and overwrite it</br>
if you want to be more secure then you can run this command.</br>
`shred -fuz <file>`</br>
`-f` will force a permission change to overwrite</br>
`-z` will overwrite a final time with zeros to hide shredding</br>
