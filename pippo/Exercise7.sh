#!/bin/bash

# Write a shell script that loops through the /etc/passwd file one line at a time.
# Each line content should be displayed with a number

# Initialize a line counter
line_number=1

# Use a while loop to read each line from /etc/passwd
while IFS= read -r line; do
    echo "$line_number: $line"
    ((line_number++))
done < "/etc/passwd"
