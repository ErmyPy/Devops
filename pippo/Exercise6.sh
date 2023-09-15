#!/bin/bash

# Script that executes the command "cat /etc/passwd".
# If the command returns a 0 exit status report "Succeeded" and exit with a
# exit status.
# If the command returns a non -zero display"Failed" and exit with a 1 exit status.


cat /etc/passwd

if [ $? -eq 0 ]; then
    echo "Succeeded"
    exit 0
else
    echo "Failed"
    exit 1
fi
