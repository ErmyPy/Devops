#!/bin/bash

clear

 USERNAME_FILENAME="username_file"
 RUN_FILENAME='run.sh'
 UNINSTALL_FILENAME='uninstall.sh'


if [[-e $USERNAME_FILENAME]]; 
then
    echo "Application is already installed"
    exit 0
else 
    read -p " Please enter your name: " USERNAME

    #VALIDATION HERE

    if [ -z ${USERNAME}]

    echo " Application installing "
    sleep 3
    echo $USERNAME > $USERNAME_FILENAME
    echo " Application installed "
fi

if [ -x $RUN_FILENAME ]
then
    chmod 744 $RUN_FILENAME

if [ -x $UNINSTALL_FILENAME ]
then
    chmod 744 $RUN_FILENAME

fi

read - p " Do you want to start the app? (y/N) " ANSWER

if [ $ANSWER -eq "y"]
then
    
        source $RUN_FILENAME
fi

