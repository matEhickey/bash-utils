#!/bin/bash

# remember to add 'alias mkcd=". mkcd.sh"' into your .*shrc

missing_params(){
	echo 'missings params'
	echo 'mkcd "<folder to be created>"'
}


if [ -z "$1" ]
then
	missing_params && exit
fi

mkdir -p $1 && cd $1
