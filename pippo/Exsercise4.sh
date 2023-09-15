#!/bin/bash


# Write a shell script that asks the user for a name of a file or directory and
# sends back the information what type it is: regular, directory, or other.
# Also perform an ls command against the file or directory with the long listing option.
# • accept the file or directory name as an argument.
# • accept unlimited number of files and directories as arguments using a
# special variable.


# Check if arguments are provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 [file/directory1] [file/directory2] ..."
    exit 1
fi

# Loop through the provided arguments
for item in "$@"; do
    # Check if the argument exists
    if [ ! -e "$item" ]; then
        echo "$item does not exist."
        continue
    fi

    # Determine the type of the file or directory
    if [ -f "$item" ]; then
        type="Regular file"
    elif [ -d "$item" ]; then
        type="Directory"
    else
        type="Other"
    fi

    # Display information about the type
    echo "$item is a $type"

    # Perform ls with long listing option
    ls -l "$item"
done