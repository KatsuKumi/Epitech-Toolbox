#!/usr/bin/env bash
##
## EPITECH PROJECT, 2020
## auto_proto_creation
## File description:
## Create prototypes list automatically
##

if [[ -z "$1" ]]; then
    echo 'Usage : ./auto_proto_creation.sh <src_folder>'
    exit 0
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/makeheader $1/**/*.c -h