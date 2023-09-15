#!/bin/bash

# Write a shell script that displays “Pepsi", "Cola", "Sprite", "Mirinda", "Beer",
# and "Water" to the screen with each appearing on a separate line.
# Try to do this in as few lines as possible.
# Hint: You can use Loops to perform task

item=("Pepsi" "Cola" "Sprite" "Mirinda" "Beer")

# Ciclo for iterativo

for drinks in "${item[@]}"; 
do
    echo "$drinks"
done