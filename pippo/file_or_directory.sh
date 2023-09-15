#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 < filename >"
    exit 1

fi 

file_dir="$1"

if [ -e "$file_dir" ]; then

    if [ -f "$file_dir" ]; then
         echo " $file_dir eshte nje file "

    elif [ -d "$file_dir " ]; then
        echo " $flie_dir eshte nje directory "
    else
        echo " $file_dir eshte nje tip tjeter file "
    fi
    echo " listing infos for $file_dir"
    ls -l $file_dir

else 
    echo " $file_dir doesen't exist "

fi 