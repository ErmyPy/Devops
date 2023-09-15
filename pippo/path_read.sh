#!/bin/bash
echo " enter a directory : "
read pathdir
if [ -d "$pathdir" ]; then
    while  IFS= read -r file
    do
        echo "File: $file"
    done < <(ls "$pathdir")
else
    echo "Directory nuk ekziston "
fi

