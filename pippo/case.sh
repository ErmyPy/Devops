#!/bin/bash

while true

do  
    echo "Menu:"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Exit"
    read input
    case $input in 
        1)
            echo " You selected option 1 "
            ;;
        2)
             echo " You selected option 2 "
             ;;
        3)
            echo " exit "
             break 
             ;;          
        *)
            echo " Invalid option. "
             ;;
        esac
 done