#!/usr/bin/env bash
##
## EPITECH PROJECT, 2020
## auto_proto_creation
## File description:
## Create prototypes list automatically
##

if [[ -z "$1" ]] || [[ -z "$2" ]] ; then
    echo 'Usage : ./auto_proto_creation.sh <src_folder> <include_folder>'
    exit 0
fi

echo "Creating prototype list..."
find $1 -name '*.c' -exec cat {} + | cproto -o proto -I $2 &> /dev/null
echo "Extracting all prototype..."
grep -Ev '__extern_inline|__STDIO_INLINE|__fortify_function|main|stdin' proto | sed 's/__END_DECLS //g' >> protos.h
echo "Cleaning useless files..."
rm proto
echo "Done ! All your prototypes are now in protos.h"