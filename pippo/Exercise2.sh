#!/bin/bash

# Write a shell script to check to see if the file "/etc/sda_passwords" exists.
# If it does exist, display "SDA passwords are enabled."
# Next, verify if you have write permissions on that file. If you can write to it.
# If you can, display 
# But if you can’t then printout "You don’t have permissions to edit
# /etc/sda_passwords." 

file="etc/sda_password."

if [ -e "$file" ]; then
    echo " SDA passwords are enabled. "
    if [ -w "$file" ]; then
    echo "All good! You have permissions to edit /etc/sda_passwords."
    else
    echo "You don’t have permissions to edit# /etc/sda_passwords." 
    fi
else
echo "$file does not exist."
fi


