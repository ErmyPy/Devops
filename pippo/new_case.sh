#!/bin/bash

echo "Enter a word"
read word
case $word in
     "apple")
         echo "You entered 'apple', which is a fruit."
         ;;
     "banana")
         echo "You entered 'banana', which is a fruit."
         ;;
     "carrot")
         echo "You entered 'carrot', which is a fruit."
         ;;
     *)
         echo "You entered '$word', which is not recognized."
         ;;
esac
