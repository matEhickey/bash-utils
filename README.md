# bash-utils

custom bash script for productivity

## Installation

- Clone the project
- Add the cloned directory to your $PATH
- Add `alias mkcd=". ./mkcd.sh"` to your shell configuration files

## Available scripts

### mkcd.sh

Create directories and move into it.

Execute the next command to create the alias in the bashrc:
```bash
printf "alias mkcd=\". `pwd`/mkcd.sh\"" >> ~/.bashrc
```

Usage:

```bash
$ mkcd direcotry # Create a single directory and move into it
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

### indocker
Create a docker environement copy the current folder in a container to execute direct command += seamlessly  

Caution: Wont copy the parent folder !  

```bash
indocker lerignoux/python-fbx "python my_local_file.py"
```
