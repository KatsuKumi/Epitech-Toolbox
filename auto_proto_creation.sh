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

find $1 -name '*.c' -exec echo -e '\n/*-----------------{}----------------*/' \; -exec $DIR/makeheader {} -h \; | sed -e "s/,/, /g" | sed -r "s/( [\*]?)([a-zA-Z_]+)([,\)])/\1\3/g" | sed -r "s/ ([,\)])/\1/g" | grep -v "#define"
## $DIR/makeheader $1/*.c -h | sed -e "s/,/, /g" | sed -r "s/( [\*]?)([a-zA-Z_]+)([,\)])/\1\3/g" | sed -r "s/ ([,\)])/\1/g"
