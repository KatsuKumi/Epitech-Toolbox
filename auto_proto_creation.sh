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

./makeheader $1/**/*.c -h