# bash-utils

custom bash script for productivity

## Installation

- Clone the project
- Add the cloned directory to your $PATH
- Add `alias mkcd=". ./mkcd.sh"` to your shell configuration files

## Available scripts

### mkcd.sh

Create directories and move into it.

To use, add `alias mkcd=". ./mkcd.sh"` to your shell configuration files.

Usage:

```console
$ mkcd direcotry # Create a single directory and move into it
$ mkcd path/to/new/directories # Create directories and childrens and move in the last child
```

### repeat

Repeat a command.

Usage:

```console
$ repeat 4 "echo plop"
plop
plop
plop
plop
```

### repeatUntilSuccess

Run a command until the command exit succefully
