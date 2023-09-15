#!/bin/bash
while :
do
    echo "Enter a command exit or quit"
    read input
    if [ $input == "exit" ] || [ $input == "quit" ];
    then
        break
    fi
    echo "You entered: $input"
done


