#!/bin/bash

# Write a function called “file_counter” that display the number of files in the present working directory(use wc command).
# Now change script’s "file_counter" function to accept a directory as an argument.
# Display the name of the directory followed by a colon and
# Finally, display the number of files to the screen on the next line.


# Define the file_counter function
file_counter() {
    local directory="$1"
    if [ -d "$directory" ]; then
        local file_count=$(ls -l "$directory" | grep -v ^d | wc -l)
        echo "$directory:"
        echo "Number of files in $directory: $file_count"
    else
        echo "Error: $directory is not a valid directory."
    fi
}

# Call the file_counter function with the provided directory argument
if [ $# -eq 1 ]; then
    file_counter "$1"
else
    echo "Usage: $0 [directory]"
    exit 1
fi