#!/bin/bash

#One way to check variable!
#Change the script to check
#if the count variable is greater than 100.

read -p " Insert a number " input


if [ $input -eq 100 ]; then
    echo " Count is 100 "
else
    echo " Count is not 100 "

fi

