#!/usr/bin/env bash

set -e

missing_params() {
    echo "Missing parameters, usage:"
    echo "eq <file_1> <file_2>"
}

get_checksum() {
    checksum=$(sha512sum "$1")

    # Remove the file name at the end
    echo $(echo $checksum | cut -f 1 -d " ")
}


if [ -z "$1" ] || [ -z "$2" ]; then
    missing_params && exit
fi

sum0=$(get_checksum $1)
sum1=$(get_checksum $2)

if [ $sum0 != $sum1 ]; then
    echo File not equals
    exit 1
fi
