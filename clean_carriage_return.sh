#!/usr/bin/env bash
##
## EPITECH PROJECT, 2020
## clean_carriage_return
## File description:
## Remove carriage return (\r) from your files 
##

for f in *; do sed -i 's/\r$//g' $f &> /dev/null; done
for f in ./**/*; do sed -i 's/\r$//g' $f &> /dev/null; done
