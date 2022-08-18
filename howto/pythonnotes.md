# Personal python cheat sheet

- to interact with the system
 - `import os`
 - `import platform`

- platform command
 - `platform.uname()` = uname
 - `platform.python_version()` = outputs python version on computer


- os commands
 - `os.getcwd()` = pwd
 - `os.listdir()` = `ls`
  - `os.listdir(/)` = `ls /`
 - `os.mkdir()` = `mkdir`
  - `os.mkdir(path = '/home/user/test') = `mkdir /home/user/test
 - `os.rmdir()` = `rmdir`
  - `os.rmdir(path = '/home/user/test')` = `rmdir /home/user/test` "dir must be empty"
 - `os.makedirs()` = makes multiple dirs
  - `os.makedirs('/home/user/test/dirs')` =
 - `os.remove()` = `rm <file>`
  - `os.remove(path = '/home/user/test/file')` = rm /home/user/test/file
 - `os.removedirs()` = removes multiple dirs
  - `os.removedirs('/home/user/test/')`
 - `os.rename(old, new)` = operates the same as the mv command
 - `os.replace(old, new)` = does the same as mv but will overwrite other files with same name
 - `os.getlogin()` = returns the current logged in user
 - `os.system()` = imputs commands directly to operating system
  - `os.system('ip a')` = outputs the ip a command
 - `os.uname()` = outputs uname information

