# bash-utils
custom bash scripts for productivity

## Installation
- Clone the project  
- Add the cloned directory to your $PATH  
```bash
cd bash-utils
echo export PATH=\$PATH:`pwd` >> ~/.bashrc
```

- (Optionnal) for mkcd -> follow procedure below  

## Available scripts
### mkcd.sh
Create directories and move into it.

Execute the next command to create the alias in the bashrc:
```bash
cd bash-utils
printf "alias mkcd=\". `pwd`/mkcd.sh\"" >> ~/.bashrc
```

Usage:

```bash
$ mkcd directory # Create a single directory and move into it
$ mkcd path/to/new/directories # Create directories and childrens and move in the last child
```

### repeat
Repeat a command.

Usage:

```bash
$ repeat 4 "echo plop"
plop
plop
plop
plop
```

### repeatUntilSuccess
Run a command until the command exit succefully  
```bash
repeatUntilSuccess "ping -c 1 no_working_yet.com"
```

### indocker
Create a docker environement copy the current folder in a container to execute direct command += seamlessly  

Caution: Wont copy the parent folder !  

```bash
indocker lerignoux/python-fbx "python my_local_file.py"
```

# retroterm
Based on the cool https://github.com/Swordfish90/cool-retro-term 
(actually, just launch the 'Futuristic' profile in fullscreen)
```bash
retroterm
```

# ssh_create
create default ssh keys

first argument (optionnal) is to change email:`
```sh
ssh_create (mail)
```
