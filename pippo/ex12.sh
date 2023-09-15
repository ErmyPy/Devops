#!/bin/bash


# Write a script that displays days of the week in each line.
#OUTPUT:
#Weekday 1 : Mon
#Weekday 2 : Tue
#Weekday 3 : Wed
#Weekday 4 : Thu
#Weekday 5 : Fri
#Use for loop
# print the current day


# Define an array of days of the week
days=("Sun" "Mon" "Tue" "Wed" "Thu" "Fri" "Sat")

# Get the current day as an index (0 for Sunday, 1 for Monday, etc.)
current_day=$(date +%w)

# Use a for loop to iterate over the array and display each day with a weekday number
for ((i = 0; i < ${#days[@]}; i++)); do
    echo "Weekday $((i+1)) : ${days[i]}"
done

# Print the current day
echo "Today is ${days[current_day]}"

