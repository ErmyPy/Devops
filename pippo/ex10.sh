#!/bin/bash

#Create script that allows to select from the menu.
#menu:
#a: display disk usage (df command)
#b: display uptime of the system(uptime command)
#c: display users that are logged into the system(whoc ommand)
# q: to quit
#If the user enters anything other than a, b, c, or q, tell them that it is not in the menu.
# Remember to say Goodbye to the user!
# *Print a blank line after the output of each command.


# Process the user's choice
while true 
do

    # Display the menu
    echo "Menu:"
    echo "a: Display disk usage (df command)"
    echo "b: Display uptime of the system (uptime command)"
    echo "c: Display users that are logged into the system (who command)"
    echo "q: Quit"

    # Prompt the user for their choice
    read -p "Enter your choice (a/b/c/q): " choice
        case $choice in
            a)
                echo "Disk Usage:"
                df -h
                ;;
            b)
                echo "System Uptime:"
                uptime
                ;;
            c)
                echo "Logged-in Users:"
                who
                ;;
            q)
                echo "Goodbye!"
                break
                ;;
                
            *)
                echo "Not in the menu."
                ;;

        esac
    done 

    echo 

