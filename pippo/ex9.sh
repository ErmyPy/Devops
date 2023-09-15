#!/bin/bash

# Prompt the user for the number of lines they'd like to see or '*'
read -p "Enter the number of lines you'd like to see from /etc/passwd or '*' for all: " input

# Check if the input is an asterisk '*'
if [ "$input" = "*" ]; then
    # Display all lines
    cat "/etc/passwd" | awk '{print NR ": " $0}'
else
    # Check if the input is a positive integer
    if [[ "$input" =~ ^[0-9]+$ ]]; then
        # Initialize a line counter
        line_number=1

        # Use a while loop to read and display the specified number of lines
        while IFS= read -r line && [ "$line_number" -le "$input" ]; do
            echo "$line_number: $line"
            ((line_number++))
        done < "/etc/passwd"
    else
        echo "Invalid input. Please enter a positive integer or '*' for all lines."
    fi
fi

