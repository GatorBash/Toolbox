# How to use dd

## Whats its for

I primarly use dd to make bootable drives and installation media
it works well when you don't have other programs to do so

## Helpful syntax

dd is pretty simple but seems complicated but if you break it down it is pretty simple

### Imputing a file to write

the syntax for identifying the imput file is using the flag `if`
for example `dd if=<path to file>`

### Identifying the output file/drive

When using this to write to a drive you will want to first identify the drive using `sudo fdisk -l`

Make sure you **WARNING DO NOT** select your os block device this is normally going to be the sda device.

Most external devices will be sdb, sdc, and so on and so forth.
the path will be `/dev/<block device>`

the block device is refering to the device as a whole for example sda, or sdb.

the flag you will use for that is going to be the `of` flag or ouputfile
so the syntax will look something like this.

`dd if=<path to file> of=/dev/<block device`

### Block size

Off the top of my head I can't recall why to specify the block size, but to my understanding this is the block size
measured in bytes that it will write to the device. It'll be identied with the `bs` flag

the example syntax is

`dd if=<path to file> of=/dev/<block device> bs=1024`

I normally always put the block size as 1024


### Showing progress

This command takes a while to run. So this will show data being written to the file.

Why do you care?  I've had this command take over a hour on larger drives.  Personal recommendation don't use this on anything bigger than 32 to 64 GB.

Other wise you will be sitting there for a while.

the syntax for that is very simple

`dd if=<path to file> of=/dev/<block device> bs=1024 status=progress`

## Real world example

`dd if=/home/pi/Downloads/ubunto.iso of=/dev/sdc bs=1024 status=progress`

### Let me know if you have any questions
