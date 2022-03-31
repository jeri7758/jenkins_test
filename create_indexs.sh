#!/bin/bash
#Create index.html if it doesn't exist
echo "Enter the filename"
read x
[ -f "$x" ] && echo "$x already present" || echo "$x doesn't exist --- creating it" && touch $x
