#!/usr/bin/env bash
##
## EPITECH PROJECT, 2020
## clean_carriage_return
## File description:
## Remove carriage return (\r) from your files 
##

for f in *.c; do sed -i 's/\r$//g' $f; done
for f in *.h; do sed -i 's/\r$//g' $f; done
for f in *.py; do sed -i 's/\r$//g' $f; done
